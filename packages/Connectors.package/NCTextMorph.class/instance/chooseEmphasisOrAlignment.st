menus
chooseEmphasisOrAlignment
	| wasEmptyOrNil |
	self isLocked ifTrue: [ ^self ].
	wasEmptyOrNil :=  self selection isEmptyOrNil.
	wasEmptyOrNil ifTrue: [ self selectAll ].
	super chooseEmphasisOrAlignment.
	wasEmptyOrNil ifTrue: [ self selectFrom: 1 to: 0 ].
