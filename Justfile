alias c := check
alias t := test

check:
    veryl check --quiet

test *EXTRA_ARGS:
    veryl test --wave --quiet {{EXTRA_ARGS}}

fmt:
    veryl fmt --quiet