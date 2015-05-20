*connectorstext-slot getters/setters
setTextFocus: aBoolean 
	self costume isTextMorph
		ifFalse: [^ self].
	(aBoolean == self costume hasFocus) ifTrue: [ ^self ].
	aBoolean
		ifTrue: [
			ActiveHand newKeyboardFocus: self costume.
			self costume selectFrom: (self costume cursor) to: (self costume cursor - 1).
			]
		ifFalse: [
			ActiveHand releaseKeyboardFocus: self costume].
	self costume changed