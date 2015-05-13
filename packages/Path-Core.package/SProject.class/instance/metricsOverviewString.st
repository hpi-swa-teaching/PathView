printing
metricsOverviewString
	| result |
	result := ''.
	^ UIManager default
		displayProgress: 'Computing project metrics' 
		at: World center 
		from: 0 to: 3 
		during: [:progress |
			result := result, self numberOfPackages asString, ' Categories, '.
			progress value: 1.
			result := result, self numberOfClasses asString, ' Classes, and '.
			progress value: 2.
			result := result, self numberOfMethods asString, 
				' Methods (', self linesOfCode asString, ' LoC)'.
			progress value: 3.
			result].