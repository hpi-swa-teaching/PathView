accessing
getSelectedConcerns
	^ self selectedConcerns
		select: [:each | each value]
		thenCollect: [:each | each key]