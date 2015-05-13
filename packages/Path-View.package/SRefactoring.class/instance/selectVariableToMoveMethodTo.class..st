refactoring options
selectVariableToMoveMethodTo: aSelector class: aClass
	| parseTree nameList | 
	parseTree := aClass parseTreeFor: aSelector.
	parseTree isNil ifTrue: [ 
		parseTree := RBMethodNode 
			selector: #value
			body: (RBSequenceNode statements: #()) ].
	nameList := OrderedCollection new.
	nameList
		addAll: parseTree argumentNames asSortedCollection;
		addAll: aClass allInstanceVariableNames asSortedCollection.
	nameList isEmpty ifTrue: [ self inform: 'No variable to select.'. ^nil.].   
	^ UIManager default 
		chooseFrom: nameList
		values: nameList
		lines: (Array with: parseTree argumentNames size)
		title: 'Select variable to move method into:'