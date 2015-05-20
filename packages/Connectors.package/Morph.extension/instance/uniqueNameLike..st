*connectors-initialization
uniqueNameLike: stem
	"Choose an innocuous name for the receiver -- one that does not end in the word Morph, and that is unique among the names in the World"
	^self uniqueNameLike: stem in: self world 