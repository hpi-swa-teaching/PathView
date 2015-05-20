drawing
drawPlusOn: aCanvas
	| halfWidth |
	halfWidth := width + 1 // 2.
	aCanvas line: bounds leftCenter + (halfWidth@0) to: bounds rightCenter + (halfWidth negated@0) width: width color: self color.
	aCanvas line: bounds topCenter + (0@halfWidth) to: bounds bottomCenter + (0@halfWidth negated) width: width color: self color.
