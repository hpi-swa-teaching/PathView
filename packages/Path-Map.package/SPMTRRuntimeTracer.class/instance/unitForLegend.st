accessing
unitForLegend
	self options kindOfProfiling == #runtime
		ifTrue: [^ 'ns']
		ifFalse: [^ 'ns per call']