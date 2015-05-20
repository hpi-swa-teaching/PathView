WiW support
fixMorphicLayer
	(super morphicLayerNumber) ~= (self morphicLayerNumber)
		ifTrue: [ | oldOwner |
			(oldOwner := owner) ifNotNil: [ 
				oldOwner removeMorph: self.
				oldOwner addMorphInLayer: self.
			]
		]. 