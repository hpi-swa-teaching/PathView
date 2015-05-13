testing
test07MultipleColorsPerMethodMorph
	<timeout: 20>
	| morph |
	self addMultipleConcernMapping.
	self options setConcernGroup: self group.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph additionalColors size = 2;
		assert: morph additionalInfo = 'SSBClassA +
was covered by the following concerns: 
myConcern
myConcern2
'.