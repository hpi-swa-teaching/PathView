searching
searchNode: aText
	| query |
	"Allows search queries such as {> 90 meaning all suspicious methods 
	with a value larger than 90 %"
	query := aText asString splitInteger.
	query first withBlanksTrimmed caseOf: {
	['{>'] -> [^ self searchSuspiciousNodes: query second operator: #>].
	['{<'] -> [^ self searchSuspiciousNodes: query second operator: #<].
	['{='] -> [^ self searchSuspiciousNodes: query second operator: #=].
	}
	otherwise: [^ super searchNode: aText].
	