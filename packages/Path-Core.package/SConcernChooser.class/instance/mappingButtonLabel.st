mapping button
mappingButtonLabel
	self isSelectedMappingExisting
		ifTrue: [^ 'Remove Mapping']
		ifFalse: [^ 'Add Mapping'].
