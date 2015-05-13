button actions
showAdditionalInformation
	| info |
	info := self callTreeModel getAdditionalInformationFromMap: self callNode.
	info ifNil: [^ self].
	info isString
		ifTrue: [^ self inform: info].
	info explore.