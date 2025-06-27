# memutils

## Memory utilities, written in Veryl

* `WishboneRam`: a synthetizable, single-port memory with a Wishbone interface

All wishbone implementations conform to the Wishbone Pipelined mode as speficied in the [Wishbone B4 specification](https://zipcpu.com/doc/wbspec_b4.pdf).

## Tests

To run the tests, you will need `cocotb` and `verilator` installed. Then running tests is as simple as:

```sh
veryl test
```