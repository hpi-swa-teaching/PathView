accessing
classOrMetaClass

	(self defClass notNil and: [self defSelector notNil]) 
		ifTrue: [^ self defClass].
	^ nil