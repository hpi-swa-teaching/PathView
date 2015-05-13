metrics
linesOfCode
	^ self allClasses inject: 0 into: [:sum :each | sum + each linesOfCode]