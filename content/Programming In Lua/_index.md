---
title: "Programming in Lua"
weight: 1
bookFlatSection: false
bookToc: true
bookCollapseSection: false
# bookHidden: false
# bookComments: false
# bookSearchExclude: false
# layout: # landing or book
---

# Info

Book: Programming in Lua, Fourth Edition, Roberto Ierusalimschy

It's not notes, just exercises.

# Chapter 01

## 1.1

```lua
-- factorial example

{{% codefile "./codesource/chapter01/1.1.lua" %}}
```

{{< 
    asciinema
    cast="./asciinema/chapter01/1.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

```lua
-- modified factorial example

{{% codefile "./codesource/chapter01/1.2.lua" %}}
```

## 1.2

```lua
-- twice example

{{% codefile "./codesource/chapter01/2.lua" %}}
```

{{< 
    asciinema
    cast="./asciinema/chapter01/2.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

I prefer using `dofile` function, cli is hard to understand sometime.

## 1.3

I don't know.

Just google. SQL, Haskell, Ada and so on.

## 1.4

All except `until?` and `one-step`.

## 1.5

`false`, `type` function returns a string.

{{< 
    asciinema
    cast="./asciinema/chapter01/3.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

## 1.6

```lua
{{% codefile "./codesource/chapter01/6.lua" %}}
```

## 1.7

Not necessary, precedence: `or` < `and` < `not`.

Yes, I recommend use, because it's cleaner and easier to understand.

## 1.8

```lua
{{% codefile "./codesource/chapter01/8.lua" %}}
```

# chapter 02

## 2.1

```lua
{{% codefile "./codesource/chapter02/1.lua" %}}
```

## 2.2

```lua
{{% codefile "./codesource/chapter02/2.lua" %}}
```

Original program calls 15720 times `isplaceok`, the new one calls 34112320 times.

# chapter 03

## 3.1

`.0e12`, `0x12`, `0xA`, `0xFFFFFFFF`, `0x1P10`, `0.1e1`, `0x0.1p1` are valid numerals.

{{< 
    asciinema
    cast="./asciinema/chapter03/1.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

## 3.2

```
result1 = (math.maxinteger * 2) % (2^64)
        = (0x7FFF_FFFF_FFFF_FFFF * 2) % (2^64)
        = ((2^63 - 1) * 2) % (2^64)
        = (2^64 % 2^64) - (2 % 2^64)
        = -2

result2 = (math.mininteget * 2) % (2^64)
        = (0x8000_0000_0000_0000 * 2) % (2^64)
        = (2^63 * 2) % (2^64)
        = 0

result3 = (math.maxinteger * math.maxinteger)  % (2^64)
        = (0x7FFF_FFFF_FFFF_FFFF * 0x7FFF_FFFF_FFFF_FFFF) % (2^64)
        = ((2^63 - 1) * (2^63 - 1)) % (2^64)
        = ((2^126) % (2^64)) + (1 % (2^64)) - ((2 * 2^63) % (2^64))
        = 0 + 1 - 0
        = 1

result4 = (math.mininteger * math.mininteger)  % (2^64)
        = (0x8000_0000_0000_0000 * 0x8000_0000_0000_0000) % (2^64)
        = ((2^63) * (2^63)) % (2^64)
        = ((2^126) % (2^64))
        = 0
```

## 3.3

```lua
{{% codefile "./codesource/chapter03/3.lua" %}}
```

{{< 
    asciinema
    cast="./asciinema/chapter03/2.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

## 3.4

{{< 
    asciinema
    cast="./asciinema/chapter03/3.cast"
    loop=true
    autoplay=true
    speed=2 
>}}

## 3.5

`12.7` cannot be expressed as a common fraction where the denominator is a power of two.

`5.5 = 11 / 2`

## 3.6

```lua
{{% codefile "./codesource/chapter03/6.lua" %}}
```

## 3.7

```lua
{{% codefile "./codesource/chapter03/7.lua" %}}
```

# chapter 04
