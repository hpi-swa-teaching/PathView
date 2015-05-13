building
createChildren: aBoolean
	self children do: [:each | self createChildrenMorph: aBoolean for: each].