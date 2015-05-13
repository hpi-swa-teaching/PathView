start tools
openBrowserOn: chosenTest
	^ SBrowser 
		fullOnClass: chosenTest actualClass 
		selector: chosenTest methodSymbol
	