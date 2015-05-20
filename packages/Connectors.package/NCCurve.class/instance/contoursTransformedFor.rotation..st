accessing contours
contoursTransformedFor: aRectangle rotation: rotation
	| transform |
	transform := self transformForRect: aRectangle rotation: rotation.
	^contours collect: [ :c | transform localPointsToGlobal: c ]