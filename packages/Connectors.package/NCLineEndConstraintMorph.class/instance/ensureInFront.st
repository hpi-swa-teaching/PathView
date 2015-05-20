stepping and presenter
ensureInFront
	"Make sure that I my line is in front of my input."
	| input world |
	constrained ifNil: [ ^self ].
	(input := self input) ifNil: [ ^self ].
	input := input root.
	input isHandMorph ifTrue: [ ^self ].
	(owner isNil or: [ (owner owner) ~~ (world := input owner) ]) ifTrue: [ ^self ].
	(world isNil or: [ world isHandMorph ]) ifTrue: [  ^self ].
	(constrained bounds intersects: (input bounds)) ifFalse: [ ^self ].
	world ensureMorph: input behind: owner.