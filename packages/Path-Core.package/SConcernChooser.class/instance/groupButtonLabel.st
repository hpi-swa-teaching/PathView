group button
groupButtonLabel
	self isConcernGroupSelected
		ifTrue: [^ 'Remove Group']
		ifFalse: [^ 'Add Group'].
	