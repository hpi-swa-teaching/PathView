testing
test213
	"Expected Failure for Testing Fault Localization - do not add to #expectedFailures"
	self example midX: 2 Y: 1 Z: 3.
	self assert: (self example mid) = 2.