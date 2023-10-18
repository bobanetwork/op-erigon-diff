all: generate

generate:
	@echo "Cleanup"
	rm -rf v3-erigon && rm -rf erigon
	git clone https://github.com/bobanetwork/v3-erigon v3-erigon
	git clone https://github.com/ledgerwatch/erigon erigon
	@echo "Generating..."
	@go run main.go -repo "./v3-erigon" -upstream-repo "./erigon"
