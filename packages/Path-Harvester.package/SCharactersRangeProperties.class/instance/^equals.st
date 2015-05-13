comparing
= anObject
	^ ((((((((super = anObject) 
		and: [self range = anObject range])
		and: [self includesLetters = anObject includesLetters])
		and: [self includesDigits = anObject includesDigits])
		and: [self includesSeparators = anObject includesSeparators])
		and: [self includesSpecials = anObject includesSpecials])
		and: [self lowercase = anObject lowercase])
		and: [self uppercase = anObject uppercase])
		and: [self httpSafe = anObject httpSafe]	       