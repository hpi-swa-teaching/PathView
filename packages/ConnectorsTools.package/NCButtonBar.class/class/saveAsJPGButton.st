instance creation
saveAsJPGButton
	"Answer a button that can save the current drawing as a JPG"
	"NCButtonBar saveAsJPGButton openInHand"
	^(self actionButtonWithLabel: 'Save JPG')
		target: World;
		actionSelector: #saveNCDrawingAsJPG;
		yourself.