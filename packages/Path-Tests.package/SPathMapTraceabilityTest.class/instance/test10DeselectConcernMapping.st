testing
test10DeselectConcernMapping
	<timeout: 20>
	| morph |
	self addConcernMapping.
	self chooser setIconColorOfSelectedConcern: Color green.
	self options setConcernGroup: self group.
	self runAllTests.
	self options selectedConcernAt: 1 put: false.
	morph := self methodMorph: (MethodReference class: SSBClassA selector: #+).
	self assert: morph color =  Color white.