## PokeWorld

This program returns the number of pokemons that Ash can catch in a infinite bi-dimensional world.
Simply provide a list of movements (North (**N**), South (**S**), East (**E**), West (**O**)), and the program wil return the number of pokemons caught by Ash.
Every position in this bi-dimensional world starts with a pokemon. If Ash has already passed through that position, then no pokemon is there anymore.
The first position always contains a pokemon, so the minimum number of pokemons caught is 1.

### Requirements

* [Ruby](https://www.ruby-lang.org/en/documentation/installation/) (tested with version 2.7)
* [Bundler](https://bundler.io/) (tested with version 2.1.2)

### Installing

Clone the repository, and run the following command in your terminal:

`bundle install`

### Running

```ruby
$ ruby poke_world.rb NSNS
# => 2

$ ruby poke_world.rb NESO
# => 4

$ ruby poke_world.rb
# => 1
```

### Benchmarking

```
$ ruby.rb benchmark.rb
```