helper
getNode: anId

	^ self callTree findNodeInSubGraph: anId startNode: self callTree rootNode