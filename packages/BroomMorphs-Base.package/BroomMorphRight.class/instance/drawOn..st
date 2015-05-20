drawing
drawOn: aCanvas
	| halfWidth |
	halfWidth := width + 1 // 2.
	aCanvas line: bounds leftCenter + (halfWidth@0) to: bounds rightCenter + (halfWidth negated @0) width: width color: self color.
	aCanvas line: bounds topRight + (halfWidth negated @ halfWidth) to: bounds bottomRight + (halfWidth negated@halfWidth negated) width: width color: self color.
	aCanvas line: self hotspot + (width * -2 @ (span negated)) to: self hotspot + (-1 @ (span negated)) color: self color.
	aCanvas line: self hotspot + (width * -2 @ (span-1)) to: self hotspot + (-1 @ (span-1)) color: self color.
