drawing
drawClasses: classes
	(classes
	 	sort: [ :a :b | b inheritsFrom: a ])
		do: [ :ea | self draw: ea ]