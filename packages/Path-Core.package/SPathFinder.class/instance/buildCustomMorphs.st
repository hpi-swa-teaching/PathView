building
buildCustomMorphs

	self 
		"buildNavigationBarMorphWithFrame: (0.007 @ 0.00 corner: 0.85 @ 0.05);"
		buildTestResultFeedbackMorphWithFrame: (0@0 corner: 0@0) offsets: (4@0 extent: 26@26);
		buildDropDownMorphOn: self testChooserModel
			with: {'Class View' -> #selectClassesView. 
				   'Object View' -> #selectObjectView.
				   'Identity View' -> #selectIdentityView.}
			frame: (0@0 corner: 0@0)
			offsets: (32@0 extent: 150@26);
		buildDropDownMorphOn: self testChooserModel
			with: {'Without Profiling' -> #normalRun. 
				   'Relative % Profiling' -> #profileRunWithPercentage. 
				   'Absolute ms Profiling' -> #profileRunWithMs.
				   'Call Counts' -> #normalRunWithCounts.}
			frame: (0@0 corner: 0@0)
			offsets: (184@0 extent: 150@26);
		buildSteppingButtonsWithFrame: (0@0 corner: 0@0) offsets: (335@0 extent: 120@26). 