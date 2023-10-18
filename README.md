Houses the code for an diff between
[op-erigon](https://github.com/bobanetwork/v3-erigon) and
[erigon](https://github.com/ledgerwatch/erigon).

This repo uses [forkdiff](https://github.com/protolambda/forkdiff) created by
[protolambda](https://github.com/protolambda) to generate the site.
Instructions for creating a site are detailed in the `forkdiff` repository. As
an extension this repo also uses [anton-rs]
https://github.com/anton-rs/op-reth-diff/.

### Generating the Diff

The upstream repo contains a
[fork.yaml](https://github.com/bobanetwork/v3-erigon/blob/boba-develop/fork.yaml)
which is used as input to the generation process and contains the page
structure configuration for generating the output diff site (`index.html`).

To generate the diff site, you can simply run `make`.  This will clone the two
repositories into `v3-erigon` and `erigon` respectively, update v3-erigon to
point to the latest HEAD, and utilize the `fork.yaml` contained there to
generate the diff site.

This resulting outputs a new `index.html` file containing the site which you
may open with your browser.

### Local development

Optionally, you may choose to create a symlink from `v3-erigon` to a local
clone of your own.  Instead of running the full `make` process, instead you
may simply run `make generate`.

In case you accidentally run `make` or `make update`, the process will make a
best effort to abort before discarding any outstanding changes, but these
commands should be avoided during local development.

Further usage of the cli can be found in the forkdiff repository's
[README.md](https://github.com/protolambda/forkdiff#forkdiff).

### License

MIT, see [`LICENSE` file](./LICENSE).
