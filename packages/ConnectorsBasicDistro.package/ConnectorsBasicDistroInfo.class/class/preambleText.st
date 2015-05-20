distribution
preambleText
	"
	ConnectorsBasicDistroInfo preambleText
	"

	^String streamContents: [ :stream |
		stream nextPutAll: self recatConnectorsExtensionsText; cr.
		self changeSetBaseFileNames do: [ :csName |
			stream nextPutAll: 'self fileInMemberNamed: ';
				print: csName; nextPut: $.; cr ].
		self mczBaseFileNames do: [ :pkgName |
			stream nextPutAll: 'self fileInMonticelloZipVersionNamed: ';
				print: pkgName; nextPut: $.; cr ].
		"self icons do: [ :iconName |
			stream nextPutAll: 'self importImage: ';
			print: 'icons-', iconName; nextPut: $.; cr ]."
		self bitmaps do: [ :iconName | | memberName |
			memberName := 'bitmap-', iconName.
			stream nextPutAll: 'self importImage: '; print: memberName; nextPut: $.; cr. ]
	]
