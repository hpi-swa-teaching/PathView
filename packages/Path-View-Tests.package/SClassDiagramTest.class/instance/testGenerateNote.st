as yet unclassified
testGenerateNote
	| hand|
	SClassDiagram new addNote.
	hand := self currentHand submorphs first.
	self assert: [ hand class name = SNoteMorph name ].
	self currentHand removeMorph: hand.