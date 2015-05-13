*DicThesaurusRex-override
systemCategoryMenu: aMenu
	self 
		menuHook: aMenu 
		named: #systemCategoryMenu 
		shifted: false.
	Preferences useOnlyServicesInMenu ifTrue:[^aMenu].

	^ aMenu labels:
'find class... (f)
back... (b)
browse all
browse
printOut
fileOut
reorganize
alphabetize
update
add item...
rename...
remove
check spelling' 
	lines: #(2 4 6 8 12)
	selections:
		#(findClass recent browseAllClasses buildSystemCategoryBrowser
		printOutSystemCategory fileOutSystemCategory
		editSystemCategories alphabetizeSystemCategories updateSystemCategories
		addSystemCategory renameSystemCategory removeSystemCategory spellCheckCategory)