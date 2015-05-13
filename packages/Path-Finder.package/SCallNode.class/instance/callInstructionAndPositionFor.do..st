callgraph
callInstructionAndPositionFor: childNode do: aBlock 
	| pc wrapper position |
	wrapper := self tracer steppingCoverageAt: self.
	pc := wrapper parentPcForChildNode: childNode.
	position := wrapper coveredByteCodes indexOf: pc.
	aBlock value: pc value: position