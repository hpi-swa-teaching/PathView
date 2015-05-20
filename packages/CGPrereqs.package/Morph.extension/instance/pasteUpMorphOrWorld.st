*cgprereqs-structure
pasteUpMorphOrWorld
	"Answer the closest containing morph that is a PasteUp morph.
	If none, answer the world."
	self allOwnersDo: [:m | (m isPlayfieldLike) ifTrue: [^ m]].
	^ ActiveWorld