distribution
mczPackageFileNames
	^self mczPackages collect: [ :s | s, '.*.mcz' ]
