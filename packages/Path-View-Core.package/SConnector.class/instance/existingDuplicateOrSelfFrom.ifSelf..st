updating
existingDuplicateOrSelfFrom: aMorph ifSelf: aBlock
	"Ensure only the duplicate or receiver exists. Abandon receiver, if necessary, return leftover connector."
	
	^ (self existingDuplicateIn: aMorph connections)
		ifNil: [ aBlock value. self ]
		ifNotNilDo: [ :duplicate |
			self abandon.
			duplicate ]