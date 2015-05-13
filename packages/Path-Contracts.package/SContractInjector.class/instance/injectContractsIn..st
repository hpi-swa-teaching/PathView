contract creation
injectContractsIn: aClass
	
	| selectors |
	aClass organization invariantMethod: (self generateInvariantsIn: aClass).
	selectors := self methodsInScope at: aClass.
	selectors do: [:selector | self injectContractsOn: selector in: aClass].
	"Class side"
	aClass class organization invariantMethod: (self generateInvariantsIn: aClass class).
	aClass class selectors do: [:selector | self injectContractsOn: selector in: aClass class]