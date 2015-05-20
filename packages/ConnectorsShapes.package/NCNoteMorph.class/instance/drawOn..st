drawing
drawOn: aCanvas
	| triangleSize triangleCorners |
	triangleSize := 12.
	triangleCorners := { (self position + (triangleSize@0)) . (self position + (0@triangleSize)) . (self position + (triangleSize@triangleSize)) }.

	aCanvas fillRectangle: (triangleCorners first extent: ((self width - triangleSize) @ triangleSize)) color: self color.
	aCanvas fillRectangle: (triangleCorners second corner: self bottomRight) color: self color.
	aCanvas fillRectangle: (bounds origin extent: triangleSize @ triangleSize) color: Color transparent.

	aCanvas drawPolygon: triangleCorners color: self color borderWidth: 0 borderColor: self color.
	
	aCanvas isShadowDrawing ifTrue: [ ^self ].
	aCanvas drawPolygon: { triangleCorners first .
	self topRight - (self borderWidth@0).
	self bottomRight - (self borderWidth@self borderWidth).
	self bottomLeft - (0 @ self borderWidth).
	triangleCorners second } fillStyle: Color transparent borderWidth: self borderWidth borderColor: self borderColor.
