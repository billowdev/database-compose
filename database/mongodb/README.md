### Explanation:
- .PHONY: Declares the targets as phony to ensure they aren't confused with actual file names.
- up, down, logs: Targets to start (up), stop (down), and view logs (logs) of the MongoDB Docker containers using docker-compose.
- mongodb-target: This target invokes make with -C . to stay in the current directory (database/mongodb) and uses $(filter-out $@,$(MAKECMDGOALS)) to pass all arguments except mongodb-target itself to the sub Makefile. This allows you to run targets like up, down, or logs directly from mongodb-target.
- %:: This is a pattern rule that acts as a catch-all for targets not explicitly defined (up, down, logs). The @: ensures that if no specific target is matched, it silently does nothing (@ suppresses the output of the command).