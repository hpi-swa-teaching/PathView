accessing
activeIcon: anIconForm 
	"Answer the value of iconForm"
	activeIcon := anIconForm.
	self inactiveIcon: self activeIcon asGrayScale2.
	self enabled
		ifTrue: [self iconForm: self activeIcon]
		ifFalse: [self iconForm: self inactiveIcon]