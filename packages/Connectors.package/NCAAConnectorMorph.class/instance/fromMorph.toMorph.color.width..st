initialization
fromMorph: startMorph toMorph: endMorph color: lineColor width: lineWidth

	self fromMorph: startMorph toMorph: endMorph.
	line lineBorderWidth: 0; lineColor: lineColor; lineWidth: lineWidth.
