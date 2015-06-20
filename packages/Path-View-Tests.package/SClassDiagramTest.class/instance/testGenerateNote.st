testing
testGenerateNote
	| hand|

	instance addNote.
	hand := self currentHand submorphs first.
	self assert: [ hand class name = SNoteMorph name ].
	self currentHand removeMorph: hand