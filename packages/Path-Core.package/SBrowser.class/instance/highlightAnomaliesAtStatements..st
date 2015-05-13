coverage list
highlightAnomaliesAtStatements: suspiciousByteCodes
	| method map stream range |
	method := self selectedMethodReference compiledMethod.
	map := (DebuggerMethodMap forMethod: method).
	suspiciousByteCodes do: [:each | 
		stream := (InstructionStream on: method).
		stream pc: each key.
		(stream willReallySend or: [stream willReturn])
			ifTrue: [range := map rangeForPC: each key contextIsActiveContext: true.
					self codePane text 
						addAttribute: (TextColor 
										color: (Color 
												h: 120 * (1.0 - each value first) 
												s: each value second
												v: 1.0)) 
						from: range first 
						to: range last;
						addAttribute: TextEmphasis underlined
						from: range first 
						to: range last]].
			self codePane selectAll; changed.