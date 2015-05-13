comparing
= anObject
	^ ((((((super = anObject) 
		and: [self spellingOkay = anObject spellingOkay])
		and: [self length = anObject length])
		and: [self includesNumbers = anObject includesNumbers])
		and: [self includesSeparators = anObject includesSeparators])
		and: [self isAsciiString = anObject isAsciiString])
		and: [self contentTypes = anObject contentTypes]  