validation
isValid

	^ self sourceMorph isClassMorph
		and: [self targetMorph isClassMorph]
		and: [self sourceMorph visualizedClass withAllSuperclasses includes: self targetMorph visualizedClass]