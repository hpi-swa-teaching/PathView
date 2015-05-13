layout and labels
labelString
	
	^ klass isMeta
		ifTrue: [ 'class methods' ]
		ifFalse: [ 'methods' ]