# Support for mod-auctionator in mod-progression

This module adds `mod-auctionator` support for `mod-progression`.

It now follows the phase-oriented layout used by current `mod-progression`, so auction house items unlock with progression phases instead of patch steps.

[mod-progression](https://github.com/noisiver/mod-progression)

[mod-auctionator](https://github.com/araxiaonline/mod-auctionator)

## Notes

The source item data in this repository is still grouped by original patch introduction. The phase SQL files remap those patch buckets to progression phases.

This is a best-effort conversion. Launch-era expansion buckets such as `2.0` and `3.0` contain items that would ideally be split across multiple phases, but the current dataset does not distinguish them finely enough to do that automatically.
