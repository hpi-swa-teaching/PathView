initialization
init: anEventOrNil
	"Trigger the initial transition and recursively enter the submachine of the top state.
	Must be called only once for a given QHsm before dispatching any events to it."
	| s |
	self assert: [ myState stateName = #Top and: [ mySource notNil ] ].
	s := myState.	"save top in temp"
	mySource trigger: anEventOrNil.		"topmost initial transition"
	self assert: [ s = myState superstate ].	"verify that we only went one level deep"
	s := myState.
	s enter.
	[ s init isNil ] whileTrue: [ 		"while init is handled"
		self assert: [ s = myState superstate ].	"verify that we only went one level deep"
		s := myState.
		s enter.						"and enter substate"
	]