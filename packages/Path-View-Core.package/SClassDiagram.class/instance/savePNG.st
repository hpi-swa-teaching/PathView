menu-actions
savePNG
	
	PNGReadWriter
		putForm: (self imageFormForRectangle: self canvasWithoutWhitespace)
		onFileNamed: (FileDirectory default nextNameFor: '_pathview' extension: 'png')