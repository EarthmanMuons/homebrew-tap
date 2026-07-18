# EarthmanMuons Tap

## How do I install these formulae?

`brew install EarthmanMuons/tap/<formula>`

Or `brew tap EarthmanMuons/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "EarthmanMuons/tap"
brew "<formula>"
```

## Updating a formula

To bump a formula to a new release, either let Homebrew do it all in one step:

```sh
brew bump-formula-pr --url https://github.com/EarthmanMuons/<project>/archive/refs/tags/v<version>.tar.gz Formula/<formula>.rb
```

Or manually: download the release tarball and compute its checksum,

```sh
curl -fsSL https://github.com/EarthmanMuons/<project>/archive/refs/tags/v<version>.tar.gz | shasum -a 256
```

then update the `url` and `sha256` in `Formula/<formula>.rb`. Commit the change
using the conventional Homebrew message format:

```
<formula> <version>
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

