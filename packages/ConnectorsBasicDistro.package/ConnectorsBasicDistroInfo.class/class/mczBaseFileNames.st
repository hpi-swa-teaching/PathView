distribution
mczBaseFileNames
	"ConnectorsBasicDistroInfo mczBaseFileNames"
	^self mczFullFileNames collect: [ :ea | FileDirectory localNameFor: ea ]
