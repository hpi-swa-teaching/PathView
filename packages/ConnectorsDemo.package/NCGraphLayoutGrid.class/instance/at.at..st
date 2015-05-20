accessing
at: x at: y
	"Answer the element at index x,y."

	| index |
	index := self indexX: x y: y.
	^ contents at: index