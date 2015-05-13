types harvester
update: aWord with: aTextMorph
	| label |	
	label := ''.
	self selectedClassOrMetaClass
		ifNotNil: [self selectedClassInPartialTrace
					ifTrue: [label := self selectedMessageName
										ifNil: [self instVarTypeLabelFor: aWord]
										ifNotNil: [self methodTypesLabelFor: aWord]]].
	aTextMorph labelMorph createLabelMorph: label.