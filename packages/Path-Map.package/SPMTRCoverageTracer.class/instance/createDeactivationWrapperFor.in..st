ignore setup/tearDown Code
createDeactivationWrapperFor: aSymbol in: aClass
	| wrapper |
	(aClass methodDict includesKey: aSymbol)
		ifTrue: [	wrapper := SPMDeactivateTracerWrapper 
								on: aSymbol 
								inClass: aClass 
								with: self.
				wrapper ifNotNil: [
					self wrappers add: wrapper.
					 wrapper install]].