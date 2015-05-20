distribution
makeSAR
	"
	ConnectorsBasicDistroInfo makeSAR
	"
	| sar result sarName |
	sar := ZipArchive new.
	self changeSetFullFileNames do: [ :fileName | sar addFile: fileName as: (FileDirectory localNameFor: fileName) ].
	self mczFullFileNames do: [ :fileName | sar addFile: fileName as: (FileDirectory localNameFor: fileName) ].
	"self icons with: self iconFileNames do: [ :iconname :fileName |
		sar addFile: fileName as: 'icons-', iconname ]."
	self bitmaps with: self bitmapFileNames do: [ :iconname :fileName |
		sar addFile: fileName as: 'bitmap-', iconname ].

	sar addString: self preambleText as: 'install/preamble'.
	sar addString: self postscriptText as: 'install/postscript'.

	result := StandardFileMenu newFile.
	result ifNil: [ ^nil ].
	sarName := (result directory fullNameFor: result name).
	sar writeToFileNamed: sarName.
