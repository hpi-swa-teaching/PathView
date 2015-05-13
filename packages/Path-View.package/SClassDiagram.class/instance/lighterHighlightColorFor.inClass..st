highlighting
lighterHighlightColorFor: aColor inClass: aClass
	
	^ aColor alpha: aColor alpha - (0.08 / (1 max: aClass allSuperclasses size - 1))