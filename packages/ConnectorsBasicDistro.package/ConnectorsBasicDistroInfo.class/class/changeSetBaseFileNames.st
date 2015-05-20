distribution
changeSetBaseFileNames
	"ConnectorsBasicDistroInfo changeSetBaseFileNames"
	^self changeSetFullFileNames collect: [ :ea | FileDirectory localNameFor: ea ]
