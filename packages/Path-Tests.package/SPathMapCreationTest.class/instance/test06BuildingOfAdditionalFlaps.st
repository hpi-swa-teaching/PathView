testing
test06BuildingOfAdditionalFlaps
	| flap |
	{'globalOptions'. 'traceability'. 'inductive'. 'faultLocalization'. 'profiling'. 'testQuality'}	
		do: [:each | 
			flap := self testRunner submorphNamed: each.
			self 
				assert: flap class = SPluggableFlapMorph;
				deny: flap expandedFlap].