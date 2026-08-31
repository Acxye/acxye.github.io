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

```text
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

## 4.1

```lua
local text = [=[
<![CDATA]
  Hello world
]]>
]=]

local line1 = "<![CDATA]"
local line2 = "Hello world"
local line3 = "]]>"
```

## 4.2

```lua
a_long_string = [[
line1
line2
line3
.....
]]

--[[
The max length of a single line is decided by the max lenght of my screen.
Or just 80, 120 characters.
due to the limit of stack of Lua, max len of lines should be smaller than 2^20 // max_len_of_line
]]
```

## 4.3

```lua
{{% codefile "./codesource/chapter04/3.lua" %}}
```

## 4.4

```lua
{{% codefile "./codesource/chapter04/4.lua" %}}
```

## 4.5

```lua
{{% codefile "./codesource/chapter04/5.lua" %}}
```

## 4.6

```lua
{{% codefile "./codesource/chapter04/6.lua" %}}
```

## 4.7

```lua
{{% codefile "./codesource/chapter04/7.lua" %}}
```

## 4.8

```lua
{{% codefile "./codesource/chapter04/8.lua" %}}
```

## 4.9

```lua
{{% codefile "./codesource/chapter04/9.lua" %}}
```

# chapter 05

## 5.1

`monday`, `sunday`, `sunday`

```text
t = {sunday = "monday", [sunday] = monday}
  = {["sunday"] = "monday", value_of_var_sunday = value_of_var_monday}
  = {["sunday"] = "monday", ["monday"] = "sunday"}
  
t.sunday = t["sunday"]
t[sunday] = t[value_of_var_sunday] = t["monday"]
t[t.sunday] = t[t["sunday"]] = t["monday"]
```

## 5.2

`{}`, print table: 0x....

Yes.

The first `a` is the name of the var hold the reference to the table.

The second `a` is the filed of the table mentioned above.

The third `a` is same as the second.

The forth `a` is same as the second.

Wrong, the tbl become `{["a"] = 3}`, `a.a = 3`, `3.a` will result in error.

## 5.3

```lua
escape_seq_map = {
    ["\\n"] = "newline",
    ...
}
```

## 5.4

```lua
{{% codefile "./codesource/chapter05/4.lua" %}}
```

## 5.5

```lua
{{% codefile "./codesource/chapter05/5.lua" %}}
```

## 5.6

```lua
{{% codefile "./codesource/chapter05/6.lua" %}}
```

## 5.7

```lua
{{% codefile "./codesource/chapter05/7.lua" %}}
```

## 5.8

```lua
{{% codefile "./codesource/chapter05/8.1.lua" %}}
```

```lua
{{% codefile "./codesource/chapter05/8.2.lua" %}}
```

{{< 
    asciinema
    cast="./asciinema/chapter05/1.cast"
    loop=true
    autoplay=true
    speed=1.5
>}}

My version is much slower than the one in stdlib.

# chapter 06

## 6.1

```lua
{{% codefile "./codesource/chapter06/1.lua" %}}
```

## 6.2

```lua
{{% codefile "./codesource/chapter06/2.lua" %}}
```

## 6.3

```lua
{{% codefile "./codesource/chapter06/3.lua" %}}
```

## 6.4

```lua
{{% codefile "./codesource/chapter06/4.lua" %}}
```

## 6.5

```lua
{{% codefile "./codesource/chapter06/5.lua" %}}
```

## 6.5

```lua
{{% codefile "./codesource/chapter06/6.lua" %}}
```

# chapter 07

## 7.1

```lua
{{% codefile "./codesource/chapter07/1.lua" %}}
```

## 7.2

```lua
{{% codefile "./codesource/chapter07/2.lua" %}}
```

## 7.3

```lua
{{% codefile "./codesource/chapter07/3.1.lua" %}}
```

```lua
{{% codefile "./codesource/chapter07/3.2.lua" %}}
```

```lua
{{% codefile "./codesource/chapter07/3.3.lua" %}}
```

```lua
{{% codefile "./codesource/chapter07/3.4.lua" %}}
```

{{< 
    asciinema
    cast="./asciinema/chapter07/1.cast"
    loop=true
    autoplay=true
    speed=1.5
>}}


Almost the max size of stack in lua.

AI says its limited by the max size of alocated heap size, because the file will be store on the heap.

## 7.4

```lua
{{% codefile "./codesource/chapter07/4.lua" %}}
```

## 7.5

```lua
{{% codefile "./codesource/chapter07/5.lua" %}}
```

## 7.6

```lua
{{% codefile "./codesource/chapter07/6.1.lua" %}}
```

```lua
{{% codefile "./codesource/chapter07/6.2.lua" %}}
```

## 7.7

No, `os.execute` will start a child shell to run command.

# chapter 08

## 8.1

There is a `elseif` in C actually.

## 8.2

```lua
repeat
    -- loop body
until false

while true do
    -- loop body
end

for _ = 1, math.huge do
    -- loop body
end

::loop::
    -- loop body
goto loop
```

## 8.3

No, `repeat--until` is quite convenient, because it condition's could use local var in loop.

## 8.4

```lua
{{% codefile "./codesource/chapter08/4.lua" %}}
```

## 8.5

Stack frame, if goto can jump out of a function, how do the interpreter knows when to free the stack.

## 8.6

Pass

# chapter 09

## 9.1

```lua
{{% codefile "./codesource/chapter09/1.lua" %}}
```

## 9.2

```lua
{{% codefile "./codesource/chapter09/2.lua" %}}
```

10 20

300 100

## 9.3

```lua
{{% codefile "./codesource/chapter09/3.lua" %}}
```

## 9.4

```lua
{{% codefile "./codesource/chapter09/4.lua" %}}
```

## 9.5

```lua
{{% codefile "./codesource/chapter09/5.lua" %}}
```

# chapter 10