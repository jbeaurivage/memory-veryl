alias c := check
alias t := test
alias ta := test-all

check:
    veryl check --quiet

test TEST *extra_args:
    veryl test {{justfile_directory()}}/src/tests/test_{{TEST}}.veryl \
        {{justfile_directory()}}/src/*.veryl \
        {{justfile_directory()}}/src/bram/*.veryl \
        {{justfile_directory()}}/src/wb/*.veryl \
        --wave --quiet {{extra_args}}

test-all *EXTRA_ARGS:
    veryl test --wave --quiet {{EXTRA_ARGS}}

fmt:
    veryl fmt --quiet

wave file:
    surfer {{justfile_directory()}}/target/waveform/{{file}}.fst >& /dev/null & 