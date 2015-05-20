dropping/grabbing
justDroppedInto: aMorph event: evt

	| dist |
	dist := (self position dist: (self formerPosition ifNil: [ self position ])).
	super justDroppedInto: aMorph event: evt.
	dist > 50 ifTrue: [ self connections do: [ :ea | ea straighten ]].