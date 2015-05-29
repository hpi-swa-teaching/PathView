event handling
update: aWord with: aTextMorph
	"This is originally copied from SBrowser, with parts removed/flattened. The main redundant part is copied in #methodTypesLabelFor:.
	 Want to enable the feature to show types of local variables, arguments, etc also to the code-boxes in the path-view.
	The code-boxes are already of type SPluggableTextMorphPlus, we only need to add this part of the mechanism."
	
	aTextMorph labelMorph createLabelMorph: (self methodTypesLabelFor: aWord).