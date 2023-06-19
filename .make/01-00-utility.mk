##@ [Utility: Commands]

.PHONY: shell
shell: ## Running shell script in container with ARGS="ls -al"
	@$(EXECUTE_IN_BROCKER_CONTAINER) $(ARGS)
