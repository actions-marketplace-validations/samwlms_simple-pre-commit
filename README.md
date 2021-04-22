# blacktion
GitHub Action for formatting python code using [black](https://github.com/psf/black)


## Inputs

### `black-args`

**Optional** The command line args that map to [black documentation](https://black.readthedocs.io/en/stable/installation_and_usage.html#command-line-options)

**Default** `"."`

## Outputs

None

## Example usage

```yaml
uses: samwlms/backtion@master

# or specify a path!
uses: samwlms/backtion@master
with:
  black-args: '--exclude some_dir --check --diff .'
```
