concern button
concernButtonLabel
	self isConcernSelected ifTrue: [^ 'Remove Concern'].
	^ 'Add Concern'