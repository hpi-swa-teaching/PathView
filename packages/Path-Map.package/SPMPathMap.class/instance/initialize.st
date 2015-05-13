initialize-release
initialize
	self rootMorph: (SPMRootMorph on: self).
	self options: (Dictionary new
					at: #testQuality put: (SPMTestQualityOptions on: self);
					at: #profiling put: (SPMProfilingOptions on: self);
					at: #faultLocalization put: (SPMFaultLocalizationOptions on: self);
					at: #inductive put: (SPMInductiveOptions on: self);
					at: #traceability put: (SPMTraceabilityOptions on: self);
					at: #globalOptions put: (SPMGlobalOptions on: self);
					at: #none put: (SPMOptions on: self);	
					yourself).
	self isDirty: false.