drop shadows
expandFullBoundsForDragShadow: aRectangle
	"Return an expanded rectangle for an eventual drag shadow"
	| offset |
	offset := self dragShadowOffset.
	offset isZero ifTrue: [ ^aRectangle ].
	^aRectangle quickMerge: (aRectangle translateBy: offset)