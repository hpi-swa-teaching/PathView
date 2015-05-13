color propagation
for: aPathMapMorph
	| colors newColor |
	colors := (aPathMapMorph childrenMorphs collect: [:each | each color]).
	newColor := self forColors: colors.
	newColor ifNotNil: [aPathMapMorph propagateColor: newColor].