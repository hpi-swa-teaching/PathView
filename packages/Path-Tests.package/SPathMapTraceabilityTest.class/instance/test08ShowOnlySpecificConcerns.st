testing
test08ShowOnlySpecificConcerns
	<timeout: 20>
	| morph |
	self addMultipleConcernMapping.
	self options setConcernGroup: self group.
	self runAllTests.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph additionalColors size = 2.
	self options switchSpecificConcernMethodsOnly.
	self assert: morph additionalColors isNil.