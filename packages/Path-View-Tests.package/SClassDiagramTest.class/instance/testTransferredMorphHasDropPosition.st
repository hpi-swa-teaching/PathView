testing
testTransferredMorphHasDropPosition
	| dropEvent dropPosition |

	self mock: #confirm: of: UIManager default class toReturn: false during: [
		self assert: [ instance submorphs isEmpty ].
		dropPosition := 27@36.
		dropEvent := self transferEventFor: self class.
		dropEvent contents position: dropPosition.
		dropEvent sentTo: instance.
		self assert: [ instance submorphs size = 1 ].
		self assert: [ instance submorphs first class = SClassMorph ].
		self assert: [ instance submorphs first klass = self class ].
		self assert: [ instance submorphs first position = dropPosition ]].