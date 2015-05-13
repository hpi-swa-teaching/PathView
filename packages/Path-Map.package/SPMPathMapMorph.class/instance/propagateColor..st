coloring
propagateColor: aColor
	aColor = self color 
		ifFalse: [super color: aColor.
				self parentMorph 
					ifNotNil: [self parentMorph colorPropagation for: self parentMorph]].
