drawing
withTransparentConstraintsDo: aBlock
	"Make my constraints transparent and then evaluate the block."
	| oldColors retval |
	oldColors := constraints collect: [ :ea | ea fillStyle ].
	constraints do: [ :ea | ea fillStyle: Color transparent; computeLineAttachmentPoint; forceRedraw ].
	retval := aBlock ensure: [
		constraints with: oldColors do: [ :constraint :ccolor | constraint fillStyle: ccolor ]].
	^retval