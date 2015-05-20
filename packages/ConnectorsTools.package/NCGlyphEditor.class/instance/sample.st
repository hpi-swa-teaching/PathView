accessing
sample
	| lineBox samples rect pts |
	samples := ((1 to: 2) collect: [ :n | self sampleGlyph ]).
	samples first ifNil: [ ^self ].
	rect := self sampleFrame layout: (0@0 corner: 10@10) in: self layoutBounds.
	pts := { rect origin + (samples first bounds extent * 12).
		rect center.
		rect corner - (samples first bounds extent * 12)}.
	sampleLine ifNil: [
		lineBox := BorderedMorph new color: self color.
		lineBox borderWidth: 1.
		lineBox clipSubmorphs: true.
		self addMorph: lineBox fullFrame: self sampleFrame.
		self fullBounds.
		sampleLine := NCLineMorph vertices: pts
			lineWidth: 10 lineColor: (Color blue muchLighter) borderWidth: 1 borderColor: Color black.
		"lineBox layoutPolicy: TableLayout new; layoutInset: 6@6.
		sampleLine hResizing: #spaceFill; vResizing: #spaceFill."
		lineBox addMorph: sampleLine.
		sampleLine beSmoothCurve.
	 ] ifNotNil: [
		sampleLine removeHandles.
		sampleLine setVertices: pts.
	].
	sampleLine addHandles.
	sampleLine handles do: [ :ea | ea color: (Color green alpha: 0.3) ].
	sampleLine arrows: samples