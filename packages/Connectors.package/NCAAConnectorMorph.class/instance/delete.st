submorphs-add/remove
delete
	self removeHandles.
	self deleteAllLabels.
	self stopMonitoringEnd.
	self detach.
	super delete.