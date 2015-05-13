public api
mostSuspiciousMethods
	"This method only works properly if defect detection was executed before"
	| defects |
	defects := self getLocalizedMethodMorphsWithoutTests.
	defects := defects collect: [:each | 
		each methodReference -> {(1.0 - (each color hue / 120)). each color saturation}].
	^ defects sortBy: [:a :b | a value first > b value first]
