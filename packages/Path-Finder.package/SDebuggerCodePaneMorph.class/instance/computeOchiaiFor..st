fault localization
computeOchiaiFor: aDictionary
	| allByteCodes |
	allByteCodes := aDictionary values 
						inject: Set new into: [:set :each | set addAll: each; yourself].
	^ (allByteCodes collect: [:each | self ochiaiForByteCode: each from: aDictionary]) 
		sorted: [:a :b | a value first < b value first]