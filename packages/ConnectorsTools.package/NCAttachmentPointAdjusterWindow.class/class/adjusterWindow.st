opening
adjusterWindow
	"Answer a SystemWindow set up as an adjuster panel"
	"NCAttachmentPointAdjusterWindow adjusterWindow openInHand"
	| window adjuster buttonHeight buttons |
	window := SystemWindow new.
	adjuster := self new.
	buttons := adjuster makeButtons.
	buttonHeight := buttons submorphs last height + 8.
	window addMorph: buttons
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@0) offsets: (0@0 corner: 0@buttonHeight)).
	window addMorph: adjuster
		fullFrame: (LayoutFrame fractions: (0@0 corner: 1@1) offsets: (0@buttonHeight corner: 0@0)).
	window setLabel: 'Attachment Point Adjuster';
		model: adjuster;
		extent: 480@380.
	^window
