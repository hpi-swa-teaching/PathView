public api
apply
	
	'Injecting Contracts'
		displayProgressAt: Display center
		from: 0 to: self classesInScope size
		during: [:bar | 1 to: self classesInScope size do: [:i |
				bar value: (self classesInScope at: i) printString.
				self injectContractsIn: (self classesInScope at: i).
				bar value: i]]