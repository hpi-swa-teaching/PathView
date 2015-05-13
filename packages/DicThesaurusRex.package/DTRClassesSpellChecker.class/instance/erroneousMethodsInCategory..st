spell checking
erroneousMethodsInCategory: aCategory 
	| result |
	result := OrderedCollection new.
	(PackageInfo named: aCategory) classes
		do: [:class | result
				addLast: (self erroneousMethodsInClass: class name)]
		displayingProgress: [:class | 'Checking ', class asString].
	^ result gather: [:ea | ea]