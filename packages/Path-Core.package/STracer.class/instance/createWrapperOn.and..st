wrapper instrumentation
createWrapperOn: aClass and: aSelector
	| wrapper |
	(self blacklist includes: aClass -> aSelector)
		ifFalse: [wrapper := self getWrapperOn: aSelector inClass: aClass.
				wrapper 
					ifNotNil: [self wrappers add: wrapper.
							 wrapper install]].