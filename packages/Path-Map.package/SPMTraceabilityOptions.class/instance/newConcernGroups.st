spec commands
newConcernGroups
	^ self pathMap project concerns groups keys 
					collect: [:each | {each. #setConcernGroup:. {each}}]