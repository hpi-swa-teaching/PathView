contract removal
removeContractsOn: aSelector in: aClass

	| method |
	method := aClass methodDictionary at: aSelector.
	method isContractWrapper ifTrue: [method uninstall]