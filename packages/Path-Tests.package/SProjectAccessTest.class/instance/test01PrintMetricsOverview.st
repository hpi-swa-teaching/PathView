print tests
test01PrintMetricsOverview

	self assert: self project metricsOverviewString = 
		'2 Categories, 8 Classes, and 30 Methods (136 LoC)'.