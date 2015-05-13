testing
test06RunTestsWithConcernMapping
	<timeout: 20>
	| morph |
	self addConcernMapping.
	self chooser setIconColorOfSelectedConcern: Color green.
	self options setConcernGroup: self group.
	self runAllTests.
	self assert: (self options getLabelString: 0.1@0.1) = 'No selected concern covered this method.'.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self 
		assert: morph color =  Color green;
		assert: morph additionalInfo = 'SSBClassA +
was covered by the following concerns: 
myConcern
'.