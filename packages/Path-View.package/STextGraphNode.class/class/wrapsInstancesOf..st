instance creation
wrapsInstancesOf: aClass
	
	^ aClass = SStickySourceCodeMorph | (aClass = SNoteMorph)