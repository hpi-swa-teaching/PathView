computation
normalizeElements
	"Position entire graph at zero-zero."
	
	self
		offsetAll: self elements
		by: self bounds origin negated.