public api
mostProbableSinglePointOfFailureMethods
	"This method only works properly if defect detection was executed before"
	| defects suspiciousness failureCompleteness |
	defects := self getLocalizedMethodMorphsWithoutTests..
	defects := defects collect: [:each | 
		suspiciousness := 1.0 - (each color hue / 120.0).
		failureCompleteness := each color saturation.
		each methodReference -> ((suspiciousness * failureCompleteness) * 100.0)].
	^ defects sortBy: [:a :b | a value > b value]