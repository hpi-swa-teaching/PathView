icons
getColor: suspiciousMethod
	"suspiciousMethod is not a CallNode, but the result of getSuspiciousnessAndConfidenceFor:"
	
	^ Color 
		h: (1.0 - suspiciousMethod value first) * 120 
		s: suspiciousMethod value second 
		v: 1.0