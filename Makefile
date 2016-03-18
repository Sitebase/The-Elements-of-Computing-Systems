install:
	@rm -rf .tools
	@echo "downloading tools ..."
	@curl -s http://nand2tetris.org/software/nand2tetris.zip > tools.zip
	@unzip -o tools.zip
	@mv nand2tetris .tools
	@find .tools/tools -type f -exec chmod +x {} \;
	@rm tools.zip
	@rm -rf __MACOSX
	@echo "tools installed"

test:
	@echo "run unit tests"
	@./01/test.sh

.PHONY: install test
