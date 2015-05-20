private
indexX: x y: y
	"grow as needed"
	(x < 1 or: [ y < 1 ])
		ifTrue: [ self errorSubscriptBounds: x@y ].
	(x > width or: [ y > height ])
		ifTrue: [ self width: (x max: width) height: (y max: height) type: contents class ].
	^ y - 1 * width + x