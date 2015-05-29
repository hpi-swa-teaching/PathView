event handling
openMethodMorph
	
	^ (SStickySourceCodeMorph on: methodName in: self visualizedClass)
		connectTo: self