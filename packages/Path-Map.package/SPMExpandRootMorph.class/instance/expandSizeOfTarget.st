building
expandSizeOfTarget
	| minSize width |
	self extent: self targetMorph extent.
	minSize := self targetMorph children size * self class minimumSize.
	self segmentationDirection == #horizontal
		ifTrue: [
			width := self targetMorph width * (minSize / self targetMorph width) ceiling.
			width > self class minWidth
				ifTrue: [^ self width: width]
				ifFalse: [^ self width: self class minWidth]].
	self segmentationDirection == #vertical
		ifTrue: [
			self width > self class minWidth
				ifFalse: [self width: self class minWidth].			
			^ self height: self targetMorph height * (minSize / self targetMorph height) ceiling].
	self extent: self targetMorph extent * 2.
	