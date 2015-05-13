wrapper API
return: anObject from: aCompiledMethod
	self isActive
		ifTrue: [^ self]
		ifFalse: [self isActive: true.
				bucket
					noteReturn: anObject
					in: aCompiledMethod.
				self isActive: false].