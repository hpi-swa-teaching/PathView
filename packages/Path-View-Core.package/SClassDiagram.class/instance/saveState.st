multi-window support
saveState

	| key |
	key := self stateKey.
	savedStates at: key put: {self windowLabelName. Array newFrom: self submorphs}
