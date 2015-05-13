spec commands
allConcerns
	| concerns |
	self concerns groups ifEmpty: [^ #()].
	concerns := self concerns groups at: self concernGroup ifAbsent: [^ #()].
	self selectedConcerns: (concerns collect: [:each | each -> true]).
	^ concerns