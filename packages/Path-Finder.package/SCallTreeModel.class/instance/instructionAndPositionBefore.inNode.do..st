stepping
instructionAndPositionBefore: position inNode: node do: aBlock 
	| byteCodes instruction stream startPosition |
	byteCodes := (self tracer steppingCoverageAt: node) coveredByteCodes.
	stream := InstructionStream on: node compiledMethod.
	startPosition := position < 1
				ifTrue: [byteCodes size]
				ifFalse: [position].
	(startPosition - 1 to: 1 by: -1)
		do: [:each | 
			instruction := byteCodes at: each.
			stream pc: instruction.
			(stream willReallySend
					or: [stream willReturn])
				ifTrue: [aBlock value: instruction value: each.
					^ true]].
	^ false