contract removal
removeContractsIn: aClass

	| selectors |
	aClass organization invariantMethod: nil.
	selectors := self methodsInScope at: aClass.
	selectors do: [:selector | self removeContractsOn: selector in: aClass].
	
	aClass class organization invariantMethod: nil.
	aClass class selectors do: [:selector | 
		self removeContractsOn: selector in: aClass class]