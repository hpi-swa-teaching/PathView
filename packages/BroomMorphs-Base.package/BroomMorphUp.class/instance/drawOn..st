drawing
drawOn: aCanvas
	| halfWidth |
	halfWidth := width + 1 // 2.
	aCanvas line: bounds topCenter + (0@halfWidth) to: bounds bottomCenter + (0@halfWidth negated) width: width color: self color.
	aCanvas line: bounds topLeft + (halfWidth @ halfWidth) to: bounds topRight + ((halfWidth) negated@halfWidth) width: width color: self color.
	aCanvas line: self hotspot + (span negated @ (width * 2)) to: self hotspot + (span negated @ 1) color: self color.
	aCanvas line: self hotspot + (span -1 @ (width * 2)) to: self hotspot + (span -1 @ 1) color: self color.
