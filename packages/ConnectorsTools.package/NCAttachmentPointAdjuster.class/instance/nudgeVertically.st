visual properties
nudgeVertically
	"If I am close to an important vertical position, move myself there"
	#(left centerX right) do: [ :sym | | x |
		x := target perform: sym.
		(self centerX - x) abs < 4 ifTrue: [ ^self center: (x @ self centerY) ]
	]