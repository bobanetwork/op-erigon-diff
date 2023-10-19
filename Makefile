BOBA_REPO=v3-erigon
BOBA_BRANCH=origin/boba-develop

UPSTREAM_REPO=erigon

all: clone update generate

clean:
	@echo "Cleanup"
	rm -Rf "$(BOBA_REPO)" "$(UPSTREAM_REPO)" index.html
.PHONY clean:

clone:
	@test -e "v3-erigon" || git clone https://github.com/bobanetwork/v3-erigon v3-erigon
	@test -e "erigon" || git clone https://github.com/ledgerwatch/erigon erigon
.PHONY clone:

update:
	@echo "Updating fork..."
	@git -C "$(BOBA_REPO)" fetch && git -C "$(BOBA_REPO)" reset --keep "$(BOBA_BRANCH)"
.PHONY update:

# Note, for local development, you may safely symlink v3-erigon to your local clone,
# but avoid running 'update' (though if there are pending changes, update will abort)
generate:
	@echo "Generating..."
	@git -C "$(UPSTREAM_REPO)" fetch 
	@go run main.go -repo "$(BOBA_REPO)" -upstream-repo "$(UPSTREAM_REPO)" -fork "$(BOBA_REPO)/fork.yaml"
.PHONY generate:
