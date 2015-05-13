button actions
byteCodeCoverage
	| byteCodes method map stream range |
	byteCodes := self tracer byteCodeCoverageAt: self callNode.
	method := self callNode compiledMethod.
	map := (DebuggerMethodMap forMethod: method).
	byteCodes do: [:each | 
		stream := (InstructionStream on: method).
		stream pc: each.
		(stream willReallySend or: [stream willReturn])
			ifTrue: [range := map rangeForPC: each contextIsActiveContext: true.
					self definition text 
						addAttribute: TextEmphasis underlined
						from: range first 
						to: range last]].
			self definition changed.