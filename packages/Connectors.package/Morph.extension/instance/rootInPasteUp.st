*connectors-structure
rootInPasteUp
	"Answer myself or my containing morph up to the first pasteUpMorph"
	^self orOwnerSuchThat: [ :o | | oo | (oo := o owner) notNil and: [ oo isPlayfieldLike or: [ oo isHandMorph ]] ]