callgraph
childNodesForInstructionAt: position
	| pc wrapper |
	wrapper := self tracer steppingCoverageAt: self.
	pc := wrapper coveredByteCodes at: position ifAbsent: [^#()].
	^ wrapper childNodesForPc: pc