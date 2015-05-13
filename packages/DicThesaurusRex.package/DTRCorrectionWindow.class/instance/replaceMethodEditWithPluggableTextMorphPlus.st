initialize-release
replaceMethodEditWithPluggableTextMorphPlus
	| builder morph spec |
	builder := MorphicToolBuilder new.
	spec := builder pluggableCodePaneSpec new.
	spec model: self; 
		setText: #saveChanges:; 
		getText: #currentMethodText.
	morph := builder build: spec.
	morph layoutFrame: ui methodEdit layoutFrame; layoutPolicy: ui methodEdit layoutPolicy; layoutProperties: ui methodEdit layoutProperties.
	ui methodEdit owner replaceSubmorph: ui methodEdit by: morph.
	ui methodEdit becomeForward: morph