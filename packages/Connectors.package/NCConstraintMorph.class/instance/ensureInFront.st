stepping and presenter
ensureInFront
	"Make sure that I am in front of my input."
	| meInWorld input inputInWorld pu |
	((input := self input) isNil) ifTrue: [ ^self ].
	inputInWorld := input root.
	meInWorld := self isFlexed ifTrue: [ owner ] ifFalse: [ self ].
	(meInWorld boundsInWorld intersects: (inputInWorld boundsInWorld)) ifFalse: [ ^self ].
	inputInWorld owner ~~ meInWorld owner ifTrue: [ ^self ].
	((pu := meInWorld pasteUpMorph) isNil or: [ pu ~= inputInWorld pasteUpMorph ])
		ifTrue: [ ^self ].
	pu ensureMorph: inputInWorld behind: meInWorld.
