testing
testRecordDateAndTimeNowUninstallWrapper
	| time wrapper |
	wrapper := (SRecordReplayWrapper on: #now inClass: DateAndTime class with: self cache) install.
	time := DateAndTime now.
	(Delay forSeconds: 1) wait.
	self assert: time = DateAndTime now.
	wrapper uninstall.
	self deny: time = DateAndTime now.