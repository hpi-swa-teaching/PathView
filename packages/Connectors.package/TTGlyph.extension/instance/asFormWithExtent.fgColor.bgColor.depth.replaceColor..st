*connectors
asFormWithExtent: extent fgColor: fgColor bgColor: bgColor depth: depth replaceColor: replaceColorFlag
	| form canvas transform |
	transform := self transformForExtent: extent.
	form := Form extent:  extent depth: depth.
	form fillColor: bgColor.
	canvas := BalloonCanvas on: form.
	canvas aaLevel: 4.
	canvas transformBy: transform.
	self drawOn: canvas fgColor: fgColor.
	^ form