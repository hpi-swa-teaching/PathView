wrapper API
arguments: anArrayOfObjects from: aCompiledMethod
	self isActive
		ifTrue: [^ self]
		ifFalse: [self isActive: true.
				anArrayOfObjects withIndexDo: [:each :index | 
				bucket 
					noteArgument: each 
					index: index 
					in: aCompiledMethod].
				self isActive: false].