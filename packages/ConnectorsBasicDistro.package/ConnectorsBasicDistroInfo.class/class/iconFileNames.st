distribution
iconFileNames
	^self icons collect: [ :i | self iconDirectoryName, FileDirectory slash, i, '.gif' ]