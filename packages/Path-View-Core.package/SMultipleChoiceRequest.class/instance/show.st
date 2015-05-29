handling
show

	self resume: (UIManager default
		chooseFrom: labels asArray 
		values: values asArray 
		lines: lines
		title: prompt)