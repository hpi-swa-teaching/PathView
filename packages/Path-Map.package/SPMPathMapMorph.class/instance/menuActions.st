menu actions
menuActions
	| menu |
	menu := OrderedCollection
		with: {'Browse'. UiFugueIcons applicationIconIcon. #browse. 'Browse class'}
		with: {'Expand Children'. UiFugueIcons blueprintPlusIcon. #expandChildren. 'Expand children elements'}.
	self hasAdditionalInformation 
		ifTrue: [menu add: {'Additional Information'. 
							UiFugueIcons informationIcon. 
							#showAdditionalInformation. 
							'Show additional information'}].
	^ menu