repositories
ownRepository
    | gitPath |

    gitPath := (FileDirectory default directoryNamed: 'git_cache') fullName.

	^ 'filetree://', gitPath, '/packages'