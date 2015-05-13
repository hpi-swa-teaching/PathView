spell checking
erroneousMethodsInClass: aClass
	| result errors |
	result := OrderedCollection new.
	(OrderedCollection new)
		addAll: (Smalltalk classNamed: aClass) methodDict values; 
		sort: [ :a :b | a name <= b name];
		addAllLast: (Smalltalk classNamed: aClass) classSide methodDict;
		do: [ :method |
			errors := spellChecker checkSpellingOf: method getSource asString.
			errors ifNotEmpty: [  result add: method ] ] .
	^ result