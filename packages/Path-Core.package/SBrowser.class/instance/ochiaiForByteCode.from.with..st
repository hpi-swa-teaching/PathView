coverage list
ochiaiForByteCode: aByteCode from: aDictionary with: aTracer
	| coveredTests failuresAtByteCode passedAtByteCode allFailures suspiciousness confidence |
	allFailures := aTracer allFailures.
	coveredTests := aDictionary keys 
							select: [:test | (aDictionary at: test) includes: aByteCode].
	failuresAtByteCode := aTracer failuresFrom: coveredTests.		
	passedAtByteCode := coveredTests size - failuresAtByteCode.
	(allFailures = 0 or: [failuresAtByteCode = 0]) 
		ifTrue: [suspiciousness := 0.0. 
			     confidence := 1.0]
		ifFalse: [suspiciousness := (failuresAtByteCode / 
				((allFailures * (failuresAtByteCode + passedAtByteCode)) sqrt)). 
				confidence := (failuresAtByteCode / allFailures).].
	^ aByteCode -> {suspiciousness. confidence}