testing
testConversionToSymbols
	"self convertToSymbols"
	| bucket symbolBucket |
	self tracer run.
	bucket := self bucket.
	symbolBucket := bucket convertToSymbols.

	self deny: bucket == symbolBucket.

	self assert: (bucket instVarNamed: 'arguments') size = 
					(symbolBucket instVarNamed: 'arguments') size.
					
	self assert: (bucket instVarNamed: 'returns') size = 
					(symbolBucket instVarNamed: 'returns') size.
	self assert: [(symbolBucket instVarNamed: 'returns')
					anyOne isSymbol or: [
						(symbolBucket instVarNamed: 'returns')
							anyOne class = SContainerType]].
					
	self assert: (bucket instVarNamed: 'members') size = 
					(symbolBucket instVarNamed: 'members') size.
	self assert: ((symbolBucket instVarNamed: 'members') at: #SHClassA) = 
					#(Number Object Object).