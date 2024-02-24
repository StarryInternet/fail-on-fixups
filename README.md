# fail-on-fixups

Nothing fancy here, just a tiny action workflow to fail a PR build if it contains fixup commits. The motivation here is to keep mainline branches clean and easy to read.

# Installation

To configure the action simply add the following lines to your `.github/workflows/fail-on-fixups.yml` workflow file:

```yml
on: [push]
name: Fail-on-fixups
jobs:
  fail-on-fixups:
    name: Fail-on-fixups
    runs-on: ubuntu-latest
    steps:
    - name: Checkout the latest code
      uses: actions/checkout@v4
      with:
        fetch-depth: ${{ env.PR_FETCH_DEPTH }}
    - name: Fail-on-fixups
      uses: StarryInternet/fail-on-fixups@master
```
