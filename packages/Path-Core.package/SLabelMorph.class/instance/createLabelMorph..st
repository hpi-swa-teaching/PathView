building
createLabelMorph: aString
	| morph corner |
	self labelMorphs ifNotNil: [
		self labelMorphs do: [:each | 
			self removeMorph: each. 
			each delete].
		self labelMorphs: OrderedCollection new.].
	aString lines do: [:each | 
		morph := StringMorph contents: each.
		self labelMorphs add: morph.
		self addMorph: morph].
	corner := self labelMorphs 
		ifEmpty: [1@1]
		ifNotEmpty: [ (self labelMorphs collect: [:each | each fullBounds corner x]) max
					@ ((self labelMorphs collect: [:each | each  fullBounds corner y]) sum)].
	self extent: (corner * self class defaultExtensionFactor).