toolbar
toolbarButtons
	"label, selector, position, condition"
	
	^ super toolbarButtons, #(
		(#arrowStop090Icon #openAncestors #top #toolbarButtonAlwaysEnabled)
		(#arrowCurveIcon #openAssociations #right #toolbarButtonAlwaysEnabled)
		(#arrowSwitch270Icon #openSubClass #bottom #toolbarButtonAlwaysEnabled "#hasSubclasses")
		(#layersStackIcon #browseClassHierarchy #top #toolbarButtonAlwaysEnabled)
		(#balloonBuzzLeftIcon #changeColor #top #toolbarButtonAlwaysEnabled)
		(#stickyNoteIcon #addClassCommentAsNote #right #toolbarButtonAlwaysEnabled)
		(#stickyNotePlusIcon #addNote #right #toolbarButtonAlwaysEnabled)
	)