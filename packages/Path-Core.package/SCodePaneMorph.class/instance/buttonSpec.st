buttons
buttonSpec
	| spec |
	spec :=  {{#openCodeBrowser. 
				UiFugueIcons applicationIconIcon. 
				'Open the source code browser'}.
			    {#byteCodeCoverage. 
				UiFugueIcons magnifierZoomActualEqualIcon. 
				'Coverage per statements'}.
			    {#debugMethod. 
				UiFugueIcons bugIcon. 
				'Start symbolic debugger'}.
			    {#expandTree. 
				UiFugueIcons nodeIcon. 
				'Expand the complete subtree'}.} asOrderedCollection.
	(self callNode = self callTreeModel rootNode) ifFalse: [
		spec add: {#stepInto. 
				UiFugueIcons arrowStop270Icon.
				'Step into this call'}	
	].
	self isPathMapDataAvailable
		ifTrue: [	spec 
					add: {#showAdditionalInformation. 
							UiFugueIcons informationIcon. 
							'Show additional information'} 
					afterIndex: 1].
	^ spec