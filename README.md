# ![logo](icons/logo.png) Corona HTML5 Session Storage Plugin

__Desc__

## Browser Tests

|![chrome](icons/chrome.png)|![ie](icons/ie.png)|![firefox](icons/firefox.png)|![safari](icons/safari.png)|![opera](icons/opera.png)|
|---------------------------|-------------------|-----------------------------|---------------------------|-------------------------|
|![pass](icons/pass.png)|![untested](icons/untested.png)|![pass](icons/pass.png)|![pass](icons/pass.png)|![untested](icons/pass.png)|

## Installation

 - Download the __Corona HTML5 Session Storage Plugin__ repository.

 - Move __plugin/sessionStorage.lua__ and __plugin/sessionStorage_js.js__ to the ___root___ of your HTML5 project.

 - Require the plugin in your code where you need it.

```lua
local sessionStorage = require("sessionStorage")
```

## API

### setItem

```lua
sessionStorage.setItem(key, data)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|desc|_String_|__Y__|
|data|desc|_String_|__Y__|

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
--code
```

### getItem

```lua
sessionStorage.getItem(key[, valType])
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|desc|_String_|__Y__|
|valType|desc|_String_|__N__|

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
--code
```

### removeItem

```lua
sessionStorage.removeItem(key)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|desc|_String_|__Y__|

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
--code
```

### exists

```lua
sessionStorage.exists(key)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|desc|_String_|__Y__|

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
--code
```

### clear

```lua
sessionStorage.clear()
```

__Arguments__

_This method takes no arguments_

__Returns__

The _String_ 'deleted' on success.

__Example__

```lua
--code
```

## Demo

In the __demo__ directory is a Corona project that you can build for HTML5 testing. 

---

&copy;2018 C. Byerley ([develephant](https://develephant.com))