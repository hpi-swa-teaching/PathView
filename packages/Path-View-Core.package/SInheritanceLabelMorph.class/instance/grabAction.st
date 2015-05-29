dropping/grabbing
grabAction
	
	^ self openSuperClass:
			(self classCollectionSize = 1
				ifTrue: [ classCollection first ]
				ifFalse: [ 
					(SMultipleChoiceRequest prompt: 'Choose a superclass'
						labels: (classCollection collect: [:c | c name])
						values: classCollection) ])