helper
setOnlyPassingTestsAsEntryPoints
	| size passingTests |
	size := self entryPoints size.
	passingTests := OrderedCollection new.
	self entryPoints 
		do: [:each | each execute hasPassed
					ifTrue: [passingTests add: each]] 
		displayingProgress: [:each | 
			'Processing ', each asString, ' out of ', size asString, ' Entry Points.'].
	self entryPoints: passingTests.