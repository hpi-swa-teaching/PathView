layout and labels
updateLabel
	
	super updateLabel.
	labelMorph ifNotNil: [
		labelMorph emphasis: self labelEmphasis ].