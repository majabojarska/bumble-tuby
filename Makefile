BUILD_DIR ?= build
STATIC_DIR ?= static

all: artifacts erc

######## ELECTRICAL RULE CHECK

.PHONY: erc
erc:
	kicad-cli sch erc amp/amp.kicad_sch --output $(BUILD_DIR)/amp_erc.rpt
	cat $(BUILD_DIR)/amp_erc.rpt

######## ARTIFACTS

.PHONY: artifacts
artifacts: schematics bom

.PHONY: schematics
schematics: schematics-pdf schematics-svg

.PHONY: schematics-pdf
schematics-pdf:
	kicad-cli sch export pdf amp/amp.kicad_sch --black-and-white --output $(STATIC_DIR)/amp.pdf

.PHONY: schematics-svg
schematics-svg:
	kicad-cli sch export svg amp/amp.kicad_sch --black-and-white --output $(STATIC_DIR)

.PHONY: bom
bom: bom-csv bom-md

.PHONY: bom-csv
bom-csv:
	kicad-cli sch export bom amp/amp.kicad_sch \
		--group-by Value \
		--format-preset CSV \
		--output $(STATIC_DIR)/amp_bom.csv

.PHONY: bom-md
bom-md:
	csvlook $(STATIC_DIR)/amp_bom.csv > $(STATIC_DIR)/amp_bom.md
