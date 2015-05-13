accessing
indentingListItemMorphClass
	"Answer the value of indentingListItemMorphClass"

	^ indentingListItemMorphClass ifNil: [indentingListItemMorphClass := IndentingListItemMorph]