public api
mostOpportuneAuthors
	"This method only works properly if defect detection was executed before"
	| metric |
	metric := SPMAuthorStaticMetric chooseAuthorMetric.
	metric ifNil: [^ {}].
	^ self mostOpportuneAuthorsWith: metric