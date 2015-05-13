coverage list
statementCoverage
	| byteCodes method map stream range |
	self flag: #mpe. "ToDo: Needs Refactoring - quite similar to 
						SCodePane>>#byteCodeCoverage"
	self selectedMethodReference ifNil: [^ self inform: 'Select a method first.'].
	byteCodes := self mergeByteCodes: self getCoveredByteCodes.
	method := self selectedMethodReference compiledMethod.
	map := (DebuggerMethodMap forMethod: method).
	byteCodes do: [:each | 
		stream := (InstructionStream on: method).
		stream pc: each.
		(stream willReallySend or: [stream willReturn])
			ifTrue: [range := map rangeForPC: each contextIsActiveContext: true.
					self codePane text
						addAttribute: TextEmphasis underlined
						from: range first 
						to: range last]].
	self codePane changed.