menus
displayInputs
	| highlights |
	highlights := self highlightInputs.
	self addAlarm: #deleteMorphs: with: highlights after: 2000