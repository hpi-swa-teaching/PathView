private
condenseVertically
	| condensed |
	"Move each row up by one if there are corresponding free spaces.
	Answer the number of rows that were condensed."
	condensed := 0.
	2 to: self height do: [ :y |
		((1 to: width) anySatisfy: [ :x | (self at: x at: y) notNil and: [ (self at: x at: y-1) notNil ] ])
			ifFalse: [
				1 to: width do: [ :x | | a |
					a := self at: x at: y.
					a ifNotNil: [
						self at: x at: y-1 put: a.
						self at: x at: y put: nil.
						condensed := condensed + 1.
					]
				].

	]].
	^condensed