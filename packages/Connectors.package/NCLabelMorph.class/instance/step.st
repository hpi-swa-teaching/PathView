stepping and presenter
step
	| inputPU |
	super step.
	self input ifNotNil: [
		"change me to the same pasteUp that my input is in"
		(self pasteUpMorph ~~ (inputPU := self input pasteUpMorph)) ifTrue: [
			owner isHandMorph ifFalse: [
				inputPU ifNotNil: [
					inputPU addMorph: (self isFlexed ifTrue: [ owner ] ifFalse: [ self ])
				]
		 	]
		]
	]