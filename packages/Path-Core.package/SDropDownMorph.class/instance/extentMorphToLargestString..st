building
extentMorphToLargestString: aString
	| largestString |
	largestString := aString.
	self menuEntries ifNotEmpty: [
		self menuEntries first isCollection
			ifTrue: [self menuEntries do: [:each | 
					(each first size > largestString size) 
						ifTrue: [largestString := each first]]]
			ifFalse: [self menuEntries do: [:each | 
					(each key size > largestString size) 
						ifTrue: [largestString := each key]]]].
	self extent: largestString asStringMorph fullBounds corner * 
					self class defaultExtensionFactor.