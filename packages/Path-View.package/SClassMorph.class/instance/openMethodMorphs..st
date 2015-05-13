loading/saving
openMethodMorphs: methodSpecs

	methodSpecs do: [:spec || mm |
		mm := self openMethod: spec first.
		mm
			ifNil: [self flag: #tfel. "TODO: show warning or something"]
			ifNotNil: [mm bounds: (spec second corner: spec third)]].