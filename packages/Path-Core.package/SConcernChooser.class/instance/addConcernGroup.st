group button
addConcernGroup
	| group |
	group := (UIManager default request: 'Please insert concern group name:').
	((self concernGroups keys includes: group) or: [group isEmpty])
		ifTrue: [^ self inform: 'The group name is not allowed.'].
	self concernGroups at: group put: OrderedCollection new.
	self changed: #rootsConcerns.
	