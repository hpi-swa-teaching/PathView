instance creation
openOnCode: aSourceCodeString

	| pathFinder |
	pathFinder := self open.
	pathFinder testChooserModel setCurrentCode: aSourceCodeString.
	^ pathFinder