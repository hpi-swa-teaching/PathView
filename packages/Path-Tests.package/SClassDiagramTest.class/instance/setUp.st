running
setUp

	super setUp.
	instance := klass new
					openInWorld;
					bottomRight: 0@0; "Do not show the Morph. Making it really hidden
										will prevent things like DropEvents"
					yourself.
