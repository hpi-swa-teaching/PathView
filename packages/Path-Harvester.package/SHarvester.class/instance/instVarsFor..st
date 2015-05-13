wrapper API
instVarsFor: aReceiverObject
	| receiverClass class |
	self isActive
		ifTrue: [^ self]
		ifFalse: [self isActive: true.	
				receiverClass := aReceiverObject class.
				receiverClass allInstVarNames do: [:each | 
					class := receiverClass classThatDefinesInstanceVariable: each.
					bucket
						noteMember: (aReceiverObject instVarNamed: each)
						for: (class instVarIndexFor: each ifAbsent: [])
						in: class].
				self isActive: false].