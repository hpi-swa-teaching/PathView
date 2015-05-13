public api
groupsOfConcerns: aCollection
	| groups |
	groups := IdentitySet new.
	aCollection do: [:concern | groups add: (self groupOfConcern: concern)].
	^ groups asSortedCollection