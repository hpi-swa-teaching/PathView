drawing
drawOn: canvas 
	| offset inset |
	offset := self drawAntialiased
				ifTrue: [1 @ 0]
				ifFalse: [0 @ 0].
	inset := self drawAntialiased
				ifTrue: [2]
				ifFalse: [0].
	^ self
		maybeAntialias: canvas
		during: [:aCanvas | aCanvas isShadowDrawing
				ifTrue: [aCanvas
						fillOval: ((bounds insetBy: inset)
								translateBy: offset)
						fillStyle: self fillStyle
						borderWidth: 0
						borderColor: nil]
				ifFalse: [aCanvas
						fillOval: ((bounds insetBy: inset)
								translateBy: offset)
						fillStyle: self fillStyle
						borderWidth: borderWidth
						borderColor: borderColor]]