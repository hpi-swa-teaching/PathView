initialization
initialState: aStateName
	"Like in QHsm::QHsm()"
	myState := self top.
	mySource := self state: aStateName.