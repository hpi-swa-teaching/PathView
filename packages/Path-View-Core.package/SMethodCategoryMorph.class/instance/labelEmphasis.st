layout and labels
labelEmphasis
	
	^ (self expanded ifTrue: [ TextEmphasis underlined ] ifFalse: [ TextEmphasis normal ]) emphasisCode