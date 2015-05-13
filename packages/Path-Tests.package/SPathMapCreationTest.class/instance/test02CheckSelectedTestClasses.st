testing
test02CheckSelectedTestClasses
	| listMorph |
	listMorph := self testRunner findA: PluggableListMorphOfMany.
	self assert: listMorph notNil.
	self assert: (listMorph instVarNamed: 'list') = #('SSBFaultLocalizationExampleTest' 
													'SSBFaultLocalizationTest' 
													'SSBTest' 
													'SSBTypeTest' 
													'SSBValueRangeTest')