transforming
extract: anInterval from: aSelector in: aClass to: aTargetClass
	targetClass := self classObjectFor: aTargetClass.
	class := self classObjectFor: aClass.
	selector := aSelector.
	extractionInterval := anInterval.