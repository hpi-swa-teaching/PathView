printing
printString
	| signal result |
	signal := SwaTestExceptionRegistry 
		at: (self clientClass selector: self clientSelector) 
		ifAbsent: nil.
	result := 'Entry Point'.
	signal ifNotNil: [result := result, ' - ', signal asString].
	 ^ result