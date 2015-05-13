visualization
colorMapping

	^ ColorPropertiesMapping ifNil: [self createColorMapping]