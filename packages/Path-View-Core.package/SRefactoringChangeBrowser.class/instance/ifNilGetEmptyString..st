accessing
ifNilGetEmptyString: aString

	aString
		ifNil: [^'']
		ifNotNil: [^aString]