menus
choosePreferredConnection: sel
	"To be called from a menu choice (thus the user interaction).
	Sel should take 0 or 1 argument, or be nil"

	"if nil, forget my preference, and change my constraintBlock"
	((sel == #noConnectionPreference) or: [ sel isNil ])
		ifTrue: [ self preferredConnection: nil.
			self input ifNil: [ ^self ].
			^self attachTo: self input at: self center ].

	(sel numArgs = 1) ifTrue: [
		self selectPointWith: (self currentHand)
			thenDo: [ :pt | self anchorPreferredConnection: sel at: pt ].
	]
	ifFalse: [
		self preferredConnection: { sel }.
		self perform: sel
	].