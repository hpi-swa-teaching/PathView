public api
testClassesOfConcern: aConcern
	| testClasses map |
	testClasses := IdentitySet new.
	map := self mapping at: aConcern.
	map do: [:each | testClasses add: each actualClass].
	^ testClasses asSortedCollection: [:a :b | a asString <= b asString]