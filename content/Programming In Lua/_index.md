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

