distribution
changeSetFullFileNames
	"ConnectorsBasicDistroInfo changeSetFullFileNames"
	| dir |
	dir := self changeSetDirectory.
	^self changeSets collect: [ :s | 
		dir fullNameFor: (dir lastNameFor: s extension: 'cs') ]
