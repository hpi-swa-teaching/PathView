fault localization
ochiaiForByteCode: aByteCode from: aDictionary
	| coveredTests failuresAtByteCode passedAtByteCode allFailures suspiciousness confidence |
	allFailures := self faultTracer allFailures.
	coveredTests := aDictionary keys 
							select: [:test | (aDictionary at: test) includes: aByteCode].
	failuresAtByteCode := self faultTracer 	failuresFrom: coveredTests.		
	passedAtByteCode := coveredTests size - failuresAtByteCode.
	(allFailures = 0 or: [failuresAtByteCode = 0]) 
		ifTrue: [suspiciousness := 0.0. 
			     confidence := 1.0]
		ifFalse: [suspiciousness := (failuresAtByteCode / 
				((allFailures * (failuresAtByteCode + passedAtByteCode)) sqrt)). 
				confidence := (failuresAtByteCode / allFailures).].
	^ aByteCode -> {suspiciousness. confidence}