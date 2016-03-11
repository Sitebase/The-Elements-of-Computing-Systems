install:
	@rm -rf .tools
	@echo "downloading tools ..."
	@curl -s http://nand2tetris.org/software/nand2tetris.zip > tools.zip
	@unzip -o tools.zip
	@mv nand2tetris .tools
	@rm tools.zip
	@rm -rf __MACOSX
	@echo "tools installed"

.PHONY: install
