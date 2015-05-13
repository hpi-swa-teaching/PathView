connectors-labels
roleLabelString: aClass
	
	| parts result |
	parts := OrderedCollection with: self variableName.
	aClass isBehavior
			ifTrue: [ parts add: '[0..1]' ]
			ifFalse: [
				parts add: (aClass typeOfContainer = Association ifTrue: '[0..1]' ifFalse: '[0..*]').
				aClass typeOfKeys ifNotNilDo: [ :keyClass | parts add: '<', keyClass, '>' ] ].
	result := ''.
	parts
		do: [ :part | result := result, part ]
		separatedBy: [ result := result, (result size > 15 ifTrue: [ '\' ] ifFalse: [ ' ' ]) ].
	^ result withCRs