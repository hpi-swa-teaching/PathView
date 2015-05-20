drawing
drawClassCategory: aString
	self drawClasses: ((SystemOrganization listAtCategoryNamed: aString)
			collect: [ :ea | (Smalltalk classNamed: ea) ])