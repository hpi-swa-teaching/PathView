building
sortChildrenByStaticMetric: aCollection
	| klass |
	self isClassCategory
		ifTrue: [klass := self parentMorph sourceCodeEntity class]
		ifFalse: [klass := self parentMorph sourceCodeEntity].
	^ aCollection sort: [:a :b | 
		((self pathMap options at: #testQuality) 
			staticCodeMetric getMetricValue: klass>>a) >=
		((self pathMap options at: #testQuality) 
			staticCodeMetric getMetricValue: klass>>b)]
	