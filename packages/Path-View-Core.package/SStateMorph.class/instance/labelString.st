layout and labels
labelString

	^
	(klass isMeta ifTrue: [ 'class ' ] ifFalse: [ '' ]),
	(klass isMeta not & type ~= #instance ifTrue: [ type ] ifFalse: [ '' ] ),
	'variables'