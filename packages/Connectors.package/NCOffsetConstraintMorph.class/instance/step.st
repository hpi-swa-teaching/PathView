stepping and presenter
step
	| outer |
	outer := self root.
	(outer hasHalo or: [ outer owner isHandMorph ])
		ifTrue: [ self setOffset ]
		ifFalse: [ super step. self ensureInFront. ]
