Houses the code for an diff between [op-erigon](https://github.com/bobanetwork/v3-erigon) and [erigon](https://github.com/ledgerwatch/erigon).

This repo uses [forkdiff](https://github.com/protolambda/forkdiff) created by [protolambda](https://github.com/protolambda) to generate
the site. Instructions for creating a site are detailed in the `forkdiff` repository. As an extension this repo also uses [anton-rs] https://github.com/anton-rs/op-reth-diff/.

### Generating the Diff

`fork.yaml` contains the page structure configuration for generating the output diff site (`index.html`).

To generate the diff site, you can simply run `make` or `make generate`.

This should output a new `index.html` file that will render the site.

Test it by opening [index.html](./index.html) in your browser! 

Further usage of the cli can be found in the forkdiff repository's [README.md](https://github.com/protolambda/forkdiff#forkdiff).

### License

MIT, see [`LICENSE` file](./LICENSE).
