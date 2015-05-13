running
setUp

	self project harvestedBuckets: nil.
	self tracer: (self class harvesterTestResource current pathMap model 
					run: #testTracer) pathMap tracer.