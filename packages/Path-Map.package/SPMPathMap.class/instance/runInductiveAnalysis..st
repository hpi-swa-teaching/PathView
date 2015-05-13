run tracer
runInductiveAnalysis: aSymbol
	(#(suiteAll testTracer) includes: aSymbol)
		ifFalse: [^ self inform: 'Inductive Analysis can only be run with all tests.'].
	self selectedOptions kindOfAnalysis
		ifNil: [^ self inform: 'This specific analysis is not implemented, yet.'].					
	self tracer: (SPMTRInductiveAnalysisTracer
					on: self project 
					pathMap: self
					harvester: self selectedOptions kindOfAnalysis).
	aSymbol == #testTracer ifTrue: [^ self].
	self tracer run.