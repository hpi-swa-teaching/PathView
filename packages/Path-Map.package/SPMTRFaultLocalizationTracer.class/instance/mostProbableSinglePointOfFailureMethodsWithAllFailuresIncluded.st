public api
mostProbableSinglePointOfFailureMethodsWithAllFailuresIncluded
	"This method only works properly if defect detection was executed before"
	"Returns only methods that were covered by all failures!"
	| defects suspiciousness failureCompleteness |
	defects := self getLocalizedMethodMorphsWithoutTests..
	defects := defects 
		select: [:each | each color saturation = 1.0] 
		thenCollect: [:each | 
			suspiciousness := 1.0 - (each color hue / 120.0).
			failureCompleteness := each color saturation.
			each methodReference -> ((suspiciousness * failureCompleteness) * 100.0)].
	^ defects sortBy: [:a :b | a value > b value]