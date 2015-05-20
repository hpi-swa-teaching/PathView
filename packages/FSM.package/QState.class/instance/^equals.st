comparing
= aStateOrString
	"Answer whether my state name matches aStateOrString,
	and if aStateOrString is a QState, also if I have the same fsm as aStateOrString."
	
	^aStateOrString isQState
		ifTrue: [ stateName = aStateOrString stateName
			and: [ fsm == aStateOrString fsm ]]
		ifFalse: [ stateName = aStateOrString ]