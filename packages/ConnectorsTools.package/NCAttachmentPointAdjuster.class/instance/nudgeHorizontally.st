visual properties
nudgeHorizontally
	"If I am close to an important horizontal position, move myself there"
	#(top centerY bottom) do: [ :sym | | y |
		y := target perform: sym.
		(self centerY - y) abs < 4 ifTrue: [ ^self center: (self centerX @ y) ]
	]