testing
testPerformanceWithLotsOfConnectors
	"
	self testPerformanceWithLotsOfConnectors
	"

	| center r1 conn newConnectors newMorphs |
	newConnectors := OrderedCollection new.
	newMorphs := OrderedCollection new.

	1 to: 400 do: [ :i |
		center := Display width atRandom @ Display height atRandom.
		r1 := Morph new bounds: (Rectangle center: center extent: 10@10); openInWorld; yourself.
		newMorphs add: r1 ].

	World changed; doOneCycle.

	(self confirm: 'MessageTally will start now,
and stop when the cursor goes
to the top of the screen') ifTrue: [
	TimeProfileBrowser spyOn: [ 
		1 to: 400 do: [ :i |
			conn := self fromMorph: newMorphs atRandom toMorph: newMorphs atRandom.
			newConnectors add: conn.
			World doOneCycle.
		].
		[ ActiveHand position y > 0 ] whileTrue: [ World doOneCycle ]]].

	World removeAllMorphsIn: newConnectors.
	World removeAllMorphsIn: newMorphs.
