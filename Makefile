ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))

generate:
	python3 ${ROOT_DIR}/generator/generate_index.py \
		--index ${ROOT_DIR}/index.json \
		--packages ${ROOT_DIR}/packages.json

commit:
	git add generator/cache.json index.json
	git commit -m generate

push:
	git push

release:
	make generate
	make commit
	make push