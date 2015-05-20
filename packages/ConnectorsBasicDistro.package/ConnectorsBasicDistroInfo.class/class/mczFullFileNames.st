distribution
mczFullFileNames
	"ConnectorsFullDistroInfo mczFullFileNames"
	| dir0 dir1 dir2 dir3  dir lastName |
	dir0 := FileDirectory default directoryNamed: 'package-cache'.
	dir1 := self projectDirectory directoryNamed: 'MiscMorphic'.
	dir2 := self projectDirectory directoryNamed: 'Etoys'.
	dir3 := self projectDirectory directoryNamed: 'Connectors'.
	^self mczPackages collect: [ :s |
		dir := { dir0. dir3. dir2. dir1. } detect: [ :d | (lastName := (d lastNameFor: s extension: 'mcz')) notNil ].
		dir fullNameFor: lastName ]
