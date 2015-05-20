*connectors-connection
attachFrom: aConstraintMorph at: aPoint
	"If my property #movableAttachments is not set or is set to true, then make the constraintMorph attach to the nearest attachment point at any given instant.
	If the property #movableAttachments is set to false, then make the constraint attach
	permanently to the nearest attachment point."

	| spec |
	spec := self attachmentPointSpecNearest: aPoint.
	spec first == #attachmentPointForEmbeddedMorph:
		ifTrue: [aConstraintMorph connectToMorph: spec second usingSpec: {#attachmentPointWhenEmbedded}]
		ifFalse: [
	(self valueOfProperty: #movableAttachments ifAbsent: [ true ])
		ifTrue: [ aConstraintMorph connectToNearestAttachmentPoint ]
		ifFalse: [ self attachFrom: aConstraintMorph atNearestSpecTo: aPoint ]			]

