buttons
enableButtonLabels: aBoolean
	self buttons do: [ :b | b beLabeled: aBoolean ].
	self setProperty: #buttonLabels toValue: aBoolean