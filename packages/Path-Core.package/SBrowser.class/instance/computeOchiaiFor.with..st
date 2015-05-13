coverage list
computeOchiaiFor: aDictionary with: aTracer

	^ ((self mergeByteCodes: aDictionary) 
		collect: [:each | self ochiaiForByteCode: each from: aDictionary with: aTracer]) 
		sorted: [:a :b | a value first < b value first]