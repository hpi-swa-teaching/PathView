drawing
drawLineNumbersOn: aCanvas

	1 to: self paragraph numberOfLines do: [:lineNumber | 
		self drawLineNumber: lineNumber on: aCanvas].