menus
chooseEmphasisOrAlignment
	| wasEmptyOrNil |
	label isLocked ifTrue: [ ^self ].
	wasEmptyOrNil :=  label selection isEmptyOrNil.
	wasEmptyOrNil ifTrue: [ label selectAll ].
	label chooseEmphasisOrAlignment.
	wasEmptyOrNil ifTrue: [ label selectFrom: 1 to: 0 ].
