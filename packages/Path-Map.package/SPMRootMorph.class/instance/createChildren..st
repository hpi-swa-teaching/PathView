building
createChildren: aBoolean
	"Similar code as superclass, just for displaying progress"
	self children 
		do: [:each | self createChildrenMorph: aBoolean for: each]
		displayingProgress: 'Create tree map'.