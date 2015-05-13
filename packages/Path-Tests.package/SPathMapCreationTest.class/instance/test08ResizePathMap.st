testing
test08ResizePathMap

	self deny: self testRunner extent =  (200@200).
	self testRunner extent: (200@200).
	self assert: self testRunner extent =  (200@200).