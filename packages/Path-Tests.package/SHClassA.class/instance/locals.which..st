methods
locals: val which: i
	| local mocal nocal r |
	i = 1 ifTrue: [ local := val. r := local ].
	i = 2 ifTrue: [ mocal := val. r := mocal ].
	i = 3 ifTrue: [ nocal := val. r := nocal ].
	^ r