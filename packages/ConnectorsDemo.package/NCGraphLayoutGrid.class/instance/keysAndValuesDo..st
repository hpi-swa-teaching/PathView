accessing
keysAndValuesDo: aBlock
	"Iterate through my contents, evaluating aBlock with a point and non-nil values"
	self rowAndColumnValuesDo: [ :y :x :val |
		val ifNotNil: [ aBlock value: x@y value: val ]
	]