# Variables
README_FILE := README.md
GUESSINGGAME_FILE := guessinggame.sh

# Get the title of the project from the guessinggame.sh file
PROJECT_TITLE := $(shell grep -E '^\# (.+)' $(GUESSINGGAME_FILE) | sed -E 's/^\# (.+)/\1/')

# Get the number of lines of code in guessinggame.sh
LINES_OF_CODE := $(shell wc -l < $(GUESSINGGAME_FILE))

# Get the current date and time
DATE := $(shell date)

# Generate the README.md
$(README_FILE): $(GUESSINGGAME_FILE)
	@echo "# $(PROJECT_TITLE)" > $(README_FILE)
	@echo >> $(README_FILE)
	@echo "This README.md was generated on $(DATE)." >> $(README_FILE)
	@echo >> $(README_FILE)
	@echo "The number of lines of code in $(GUESSINGGAME_FILE) is $(LINES_OF_CODE)." >> $(README_FILE)

# GitHub Pages URL
GITHUB_PAGES_URL := https://github.com/username/repo # Replace with your GitHub Pages URL

.PHONY: all
all: $(README_FILE)

.PHONY: clean
clean:
	@rm -f $(README_FILE)
