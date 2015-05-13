spec commands
areColorsAvailable
	self pathFinder ifNil: [^ false].
	self pathFinder coverageTracer ifNil: [^ false].
	self pathFinder coverageTracer pathMap ifNil:[^ false].
	
	self pathFinder coverageTracer pathMap tracer ifNil:[^ false].
	(self pathFinder coverageTracer pathMap tracer class = SPMTRConcernCoverageTracer) ifTrue: [^ false].
	
	^ true.