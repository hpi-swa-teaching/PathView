stepping and presenter
step
	| newCenter |
	dragStartPoint ifNotNil: [ ^self ].
	newCenter := getPoint value rounded.
	(self center ~= newCenter) ifTrue: [ self center: newCenter ].