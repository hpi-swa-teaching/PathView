instance creation
saveAsGIFButton
	"Answer a button that can save the current drawing as a GIF"
	"NCButtonBar saveAsGIFButton openInHand"
	^(self actionButtonWithLabel: 'Save GIF')
		target: World;
		actionSelector: #saveNCDrawingAsGIF;
		yourself.