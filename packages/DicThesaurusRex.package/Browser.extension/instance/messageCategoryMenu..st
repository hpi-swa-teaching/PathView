*DicThesaurusRex-override
messageCategoryMenu: aMenu
	self 
		menuHook: aMenu 
		named: #messageCategoryMenu 
		shifted: false.
	Preferences useOnlyServicesInMenu ifTrue:[^aMenu].
	^ aMenu labels:
'browse
printOut
fileOut
reorganize
alphabetize
remove empty categories
categorize all uncategorized
new category...
rename...
remove
check spelling'
		lines: #(3 8 10)
		selections:
		#(buildMessageCategoryBrowser printOutMessageCategories fileOutMessageCategories
		editMessageCategories alphabetizeMessageCategories removeEmptyCategories
		categorizeAllUncategorizedMethods addCategory renameCategory removeMessageCategory spellCheckMethodCategory)
