concern tree
rootsConcerns
	self project ifNil: [^ #()].
	^ self concernGroups keys asSortedCollection collect: [:each | {each}]