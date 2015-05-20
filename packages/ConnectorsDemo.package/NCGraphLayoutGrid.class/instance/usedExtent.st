private
usedExtent
	| x y |
	x := 0.
	y := 0.
	self rowAndColumnValuesDo: [ :row :col :val |
		val ifNotNil: [ x := x max: col. y := y max: row ]
	].
	^x@y