######################################
#             MAKEFILE
######################################
# Example usage
######################################
# make simulate.AND
# make clean.AND
# make clean.all
######################################

run.%:
	@echo "Simulating module: $*"
	iverilog -g2005-sv $(ROOT_DIR)/modules/$*/$*_tb.sv -o $(ROOT_DIR)/modules/$*/$*_dumps/$*.out && \
	vvp $(ROOT_DIR)/modules/$*/$*_dumps/$*.out
	mv $*.vcd $(ROOT_DIR)/modules/$*/$*_dumps/
	@echo "Simulation completed. Opening VCD file with GTKWave..."
	gtkwave $(ROOT_DIR)/modules/$*/$*_dumps/$*.vcd &

clean.%:
	@echo "Cleaning dump files for module: $*"
	@rm -f $(ROOT_DIR)/modules/$*/$*_dumps/*
	@echo "Files in $(ROOT_DIR)/modules/$*/$*_dumps/ removed, directory preserved."

clean.all:
	@echo "Cleaning all dump files..."
	@for dir in $(shell find $(ROOT_DIR)/modules -type d -name "*_dumps"); do \
	  echo "Cleaning $$dir"; \
	  rm -f $$dir/*; \
	done
	@echo "All dump files removed, directories preserved."
