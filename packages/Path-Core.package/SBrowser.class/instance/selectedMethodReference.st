accessing
selectedMethodReference
	(self selectedClassOrMetaClass isNil or: [self selectedMessageName isNil])
		ifTrue: [^ nil].
	^ MethodReference 
		class: self selectedClassOrMetaClass selector: self selectedMessageName.