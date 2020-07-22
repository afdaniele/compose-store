ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

generate:
	python3 ${ROOT_DIR}/generator/generate_index.py \
		--index ${ROOT_DIR}/index.json \
		--packages ${ROOT_DIR}/packages.json
