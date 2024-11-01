# Default commit message if none is provided
msg ?= "Update"

# Help target to provide directions
help:
	@echo "Usage:"
	@echo "  make push msg=\"Your commit message\""
	@echo ""
	@echo "Example:"
	@echo "  make push msg=\"Fixed bug in Makefile\""
	@echo ""
	@echo "If no message is provided, the default commit message is 'Update'."

# Push target to stage, commit, and push changes
push:
	@git add .
	@git commit -m "$(msg)"
	@git push
