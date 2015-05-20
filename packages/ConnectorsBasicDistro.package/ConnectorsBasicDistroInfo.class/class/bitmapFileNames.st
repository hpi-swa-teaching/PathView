distribution
bitmapFileNames
	"ConnectorsBasicDistroInfo bitmapFileNames"
	^self bitmaps collect: [ :i | self bitmapDirectoryName, FileDirectory slash, i, '.png' ]
