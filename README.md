# stein

*A natural language poetry engine*

Stein is a natural language generator that can write poems.

Stein is currently in initial stages of development, focusing on building continous streams of poetry.

## Usage

So far, `stein` can only be used in the browser to write small, three line poems

To link as a script, use one of the two following urls

```html
<script src="https://jweinst1.github.io/stein/lib/threeug.js"></script>
<script src="https://jweinst1.github.io/stein/lib/three.js"></script>
```

This will reveal a global object named `stein`, which has a `.write()` method, which takes a number corresponding to how many
triplets you want in a single poem. For example

```
> console.log(stein.write(3))
her enticing,
tyrant of love,
begged them for a look

this icy,
green dog of the forest,
begs her for a hand

their breezy,
spirit beside the forest,
wants her for a kiss
```

### Poems

You can also [click here](https://jweinst1.github.io/stein/) to read a newly generated poem.