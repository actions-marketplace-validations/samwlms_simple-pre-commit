# ArgBlack
**GitHub Action for formatting python code using [black](https://github.com/psf/black)**

Forked from [jpetrucciani's 'black check'](https://github.com/jpetrucciani/black-check)
*(with some minor changes to allow pass-through of black CLI args)*

## Inputs

### `black-args`

**Optional** The command line args that map to [black documentation](https://black.readthedocs.io/en/stable/installation_and_usage.html#command-line-options)

**Default** `"."`

## Outputs

None

## Example usage

```yaml
uses: samwlms/argblack@master

# or specify a path!
uses: samwlms/argblack@master
with:
  black-args: '--exclude some_dir --check --diff .'
```
