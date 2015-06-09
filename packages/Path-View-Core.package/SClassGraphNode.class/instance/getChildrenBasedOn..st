tree layouting
getChildrenBasedOn: childCheckerBlock
	
	^ self neighborNodes select: [ :neighbor | childCheckerBlock value: self value: neighbor ]