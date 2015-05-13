event handling
keyDown: evt
	(evt keyCharacter = Character space) ifTrue:[
		self selectedMorph ifNotNil: [ self selectedMorph toggleCodeView]
	] ifFalse: [
		^super keyDown: evt
	]