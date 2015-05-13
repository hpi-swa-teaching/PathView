mapping button
mappingButtonAction
	self isSelectedMappingExisting
		ifTrue: [self removeMapping]
		ifFalse: [self addMapping].
	self 
		selectedConcernItem: nil;
		selectedTestItem: nil;
		reloadUIData.