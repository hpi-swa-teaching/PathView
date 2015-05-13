accessing
minWidthOfMorph
	"Answer the value of minWidthOfMorph"

	^ minWidthOfMorph ifNil: [minWidthOfMorph := self computeMaxWidthOfSiblings]