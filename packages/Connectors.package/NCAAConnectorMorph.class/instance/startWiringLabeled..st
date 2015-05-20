wiring
startWiringLabeled: labelString
	| label |
	self startWiring.
	label := (self addUnwrappedLabel: labelString at: self midpoint) visible: false.
	label offset: 0@10.
	label textWrap: false.
	self setProperty: #wiringLabel toValue: label.
