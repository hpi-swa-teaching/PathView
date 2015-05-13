public api
mostOpportuneAuthorsWith: aMetric
	"This method only works properly if defect detection was executed before"
	| methods authors currentAuthor score suspicious confidence |
	authors := Dictionary new.
	methods := self mostSuspiciousMethods.
	methods do: [:each | 
		currentAuthor := each key compiledMethod perform: aMetric.
		score := authors at: currentAuthor ifAbsentPut: 0.
		suspicious := each value first.
		confidence := each value second.
		"F-Measure: Weighted harmonic mean"
		score := score + ((2 * suspicious * confidence) / (suspicious + confidence)).
		authors at: currentAuthor put: score].
	^ authors associations sort: [:a :b | a value > b value]