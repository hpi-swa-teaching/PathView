instance creation
on: aClass
	
	(self = SContainerClassMorph | aClass isBehavior) ifFalse: [ ^ SContainerClassMorph on: aClass ].
	(aClass isCollection and: [ aClass size > 1 ]) ifTrue: [ ^ SClassMorph onList: aClass ].
	^ super on: aClass