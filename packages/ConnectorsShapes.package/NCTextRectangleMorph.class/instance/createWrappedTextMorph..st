private
createWrappedTextMorph: aStringOrText 
	| textMorph |
	textMorph := (self class textClass new)
				contents: aStringOrText wrappedTo: self innerBounds width;
				vResizing: #shrinkWrap;
				margins: 4 @ 4;
				hResizing: #shrinkWrap;
				acceptOnFocusLoss: true;
				when: #accept
					send: #accept:from:
					to: self.
	^textMorph