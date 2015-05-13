public api
valuesAsSet
	| resultSet |
	resultSet := Set new.
	self valueDict valuesDo: [:collection | 
		collection do: [:each | resultSet add: each]].
	^ resultSet sorted