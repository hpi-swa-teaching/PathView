postload
downloadFile: aString binary: aBoolean
	| httpStream |
	httpStream := HTTPClient httpGet: self class downloadUrl, aString.
	aBoolean ifTrue: [httpStream := httpStream binary].
	FileStream 
		fileNamed: aString 
		do: [:stream | stream nextPutAll: httpStream contents].