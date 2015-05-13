*Path-Core-override
visible: aBoolean 
	"set the 'visible' attribute of the receiver to aBoolean"
	(extension isNil and:[aBoolean]) ifTrue: [^ self].
	self visible == aBoolean ifTrue: [^ self].
	self assureExtension visible: aBoolean.
	self changed.
	owner ifNotNil: [owner layoutChanged]. "Changed for 3.9 compatibility and forward events again after hiding"