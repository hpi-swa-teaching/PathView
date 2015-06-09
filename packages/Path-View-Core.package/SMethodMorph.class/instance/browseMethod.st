event handling
browseMethod
	
	SystemBrowser default == OBSystemBrowserAdaptor
		ifTrue: [
			OBCodeBrowser defaultBrowserClass 
				openOnClass: self visualizedClass "Avoid passing THContainerType"
				selector: methodName asSymbol ]
		ifFalse: [
			Browser openBrowser
				setClass: self visualizedClass "Avoid passing THContainerType"
				selector: methodName asSymbol ].