stepping
instructionAndPositionAfter: position inNode: node do: aBlock 
	| byteCodes instruction stream |
	byteCodes := (self tracer steppingCoverageAt: node) coveredByteCodes.
	stream := InstructionStream on: node compiledMethod.
	(position + 1 to: byteCodes size)
		do: [:each | 
			instruction := byteCodes at: each.
			stream pc: instruction.
			(stream willReallySend
					or: [stream willReturn])
				ifTrue: [aBlock value: instruction value: each.
					^ true]].
	^ false