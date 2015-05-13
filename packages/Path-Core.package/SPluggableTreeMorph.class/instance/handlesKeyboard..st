event handling
handlesKeyboard: evt
	(evt keyCharacter = Character space) ifTrue:[
		^true
	] ifFalse: [
		^super handlesKeyboard: evt
	]