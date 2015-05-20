event handling
stopMonitoringEnd
	self
		valueOfProperty: #highlightedTargets
		ifPresentDo: [:targets | 
			targets
				do: [:ea | ea highlightForConnection: false].
			self removeProperty: #highlightedTargets].
