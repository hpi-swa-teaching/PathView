dropping/grabbing
duplicateForEmbedding
	| logger proto |
	logger := self valueOfProperty: #logger ifAbsent: [].
	self removeProperty: #logger.
	proto := super duplicateForEmbedding.
	self setProperty: #logger toValue: logger.
	proto setProperty: #logger toValue: logger.	"share my logger if any but copy the types"
	^proto.