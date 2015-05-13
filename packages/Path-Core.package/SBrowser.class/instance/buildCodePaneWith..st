toolbuilder
buildCodePaneWith: builder
	| textSpec top buttonSpec annotationSpec |
	textSpec := builder pluggableCodePaneSpec new.
	textSpec 
		model: self;
		name: #codePane;
		getText: #contents; 
		setText: #contents:notifying:; 
		selection: #contentsSelection; 
		menu: #codePaneMenu:shifted:.
	self wantsAnnotationPane ifTrue:[
		top ifNil:[
			top := builder pluggablePanelSpec new.
			top children: OrderedCollection new.
		].
		annotationSpec := builder pluggableInputFieldSpec new.
		annotationSpec model: self; getText: #annotation. 
		annotationSpec frame: (0@0.88 corner: 1@1).
		top children add: annotationSpec.
	].
	top ifNotNil:[
		textSpec frame: (0 @ (buttonSpec ifNil:[0] ifNotNil:[0.12])
			corner: 1 @ (annotationSpec ifNil:[1] ifNotNil:[0.88])).
		top children add: textSpec.
	].
	^top ifNil:[textSpec]