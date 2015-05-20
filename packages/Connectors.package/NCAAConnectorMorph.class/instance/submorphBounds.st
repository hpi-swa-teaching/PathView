layout
submorphBounds
	| rect |
	^line
		ifNotNil: [ rect := (line bounds outsetBy: self selectionSlop).
			submorphs do: [ :m | m == line ifFalse: [ rect := rect quickMerge: m fullBounds ]].
			rect ]
		ifNil: [ super bounds ]