building
availableSize: maxPossibleChildren isNotSufficientFor: children

	Transcript 
		show: children size asString, ' entities exceed the limit of ', 
			  maxPossibleChildren asString, ' entities for ', self knownName, '.'; 
		cr.