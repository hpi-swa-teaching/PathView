accessing
printOn: aStream 
	(1 to: self height)
		do: [:row | (1 to: self width)
				do: [:col | (self at: col at: row)
						printOn: aStream]
				separatedBy: [aStream space]]
		separatedBy: [aStream cr]