projects
allProjectsWithoutNull

	^ ProjectRegistry values select: [:each | (each projectName == #null) not]