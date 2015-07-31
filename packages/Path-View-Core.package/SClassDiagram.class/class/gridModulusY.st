gridding
gridModulusY
		<preference: 'Grid modulus Y value'
		category: 'Path View'
		description: 'When gridding is enabled via the `Toggle grid` button, this determines the y value of the grid size, the entities get alinged to.'
		type: #Number>
	^ GridModulusY ifNil: [ GridModulusY := 10 ]