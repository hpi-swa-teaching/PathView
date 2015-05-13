utilities
findCategories
	| foundedCategories |
	foundedCategories := super findCategories.
	^ foundedCategories select: [:each | self project categories includes: each]