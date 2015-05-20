accessing
at: x at: y put: value
	"Store value at index x,y and answer it."

	| index |
	index := self indexX: x y: y.
	^ contents at: index put: value