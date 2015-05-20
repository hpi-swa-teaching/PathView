buttons
fixLayoutFrames
	| frameOffset |
	frameOffset := self cellInset asPoint corner: self cellInset asPoint negated.
	bounds isTall 
		ifTrue: 
			[submorphs withIndexDo: 
					[:ea :index | 
					ea 
						layoutFrame: (LayoutFrame fractions: (0 @ ((index - 1) / submorphs size) 
										corner: 1 @ (index / submorphs size)) offsets: frameOffset)]]
		ifFalse: 
			[submorphs withIndexDo: 
					[:ea :index | 
					ea 
						layoutFrame: (LayoutFrame fractions: (((index - 1) / submorphs size) @ 0 
										corner: (index / submorphs size) @ 1) offsets: frameOffset)]]