*connectorstools-private
displayAttachmentPointsFor: aMorph
	"Show my attachment points as movable morphs.
	Upon calling setAttachmentPointsFromDisplayed, I will read
	their positions and (re) set my attachment points"
	| ams |
	ams := self attachmentPointSpecs collect: [ :ea | NCAttachmentPointAdjuster new originalSpec: ea target: self ].
	ams do: [ :ea | aMorph addMorphFront: ea ].
