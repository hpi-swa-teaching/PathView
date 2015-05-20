*connectors-gestures
prototypeContainer
	"Return a probable prototype container.
	- local flaps named 'Prototypes'
	- global flaps named 'Prototypes'
	- global flaps named 'Prototypes1' etc.
	- parts bins named 'Prototypes'
	- current world
	"
	| flap |
	flap := self currentWorld localFlapTabs
				detect: [:tab | tab flapID sameAs: 'Prototypes']
				ifNone: [Flaps globalFlapTabWithID: 'Prototypes'].
	^flap
				ifNil: [ (self currentWorld submorphNamed: 'Prototypes') ifNil: [ self currentWorld ] ]
				ifNotNil: [flap referent].
