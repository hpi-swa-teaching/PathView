specific runs
byteCodeCoverageAt: aCallNode 
	| wrapper |
	wrapper := self
				runTestWithSpecificWrapper: (self createByteCodeCoverageWrapperOn: aCallNode).
	^ wrapper coveredByteCodes