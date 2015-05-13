testing
test09GrayColorsPerMethodMorph
	<timeout: 20>
	| morph |
	self addMultipleConcernMapping.
	self options setConcernGroup: self group.
	self runAllTests.
	self assert: (self options getLabelString: 0.9@0.9) = '2 concerns covered this method'.
	self options switchMultipleColorsPerMethod.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph additionalColors isNil;
		assert: morph color = Color black.