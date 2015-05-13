pathMap-helper
addInfo: aBlock to: aMorph withLabel: aString
	| info |
	info := WriteStream on: String new.
	info
		nextPutAll: aMorph additionalInfo;
		nextPutAll: aString;
		nextPut: Character cr.
	aBlock value: info.
	aMorph additionalInfo: info contents