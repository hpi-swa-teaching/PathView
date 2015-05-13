initialize-release
showWindowWithTitle: aString
	window
		label: 'DicThesaurusRex - ' , aString;
		openInWorld;
		extent: self defaultWindowExtent.
	self showNextMethod