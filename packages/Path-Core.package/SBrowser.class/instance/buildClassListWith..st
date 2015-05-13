toolbuilder
buildClassListWith: builder
	| listSpec |
	listSpec := super buildClassListWith: builder.
	listSpec icon: #iconForClass:.
	^ listSpec