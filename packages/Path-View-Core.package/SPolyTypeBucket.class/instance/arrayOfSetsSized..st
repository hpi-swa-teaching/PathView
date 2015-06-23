accessing
arrayOfSetsSized: aNumber
	| array |
	array := Array new: aNumber.
	1 to: aNumber do: [:each | array at: each put: Set new].
	^ array