toolbar
toolbarButtons
	"label, selector, position, condition"
	
	^ super toolbarButtons, #(
		(#arrowStop090Icon #openAncestors #top #toolbarButtonAlwaysEnabled 'open ancestors')
		(#arrowCurveIcon #openAssociations #right #toolbarButtonAlwaysEnabled 'open associations')
		(#arrowSwitch270Icon #openSubClass #bottom #toolbarButtonAlwaysEnabled 'open sub class')
		(#layersStackIcon #browseClassHierarchy #top #toolbarButtonAlwaysEnabled 'browse class hierarchy')
		(#balloonBuzzLeftIcon #changeColor #top #toolbarButtonAlwaysEnabled 'change color')
		(#stickyNoteIcon #addClassCommentAsNote #right #toolbarButtonAlwaysEnabled 'add class comment as note')
		(#stickyNotePlusIcon #addNote #right #toolbarButtonAlwaysEnabled 'add note')
		(#arrowSwitch270Icon #toggleClassMorph #top #toolbarButtonAlwaysEnabled 'toggle specific class morph'))