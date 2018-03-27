# ![logo](icons/logo.png) Corona HTML5 Session Storage Plugin

__Store and retrieve data using the browsers session storage API in Corona HTML5 apps.__

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

## Overview

In [Corona](https://coronalabs.com) HTML5 apps you can use [system.setPreferences]() and [system.getPreferences]() to store user data. This data is stored using the browsers "localStorage" which is stored indefinitely until manaully removed.

This plugin utilizes the browsers "sessionStorage" which only lasts as long at the user session is active. When the browser window is closed, all session data is removed. This can be useful in certain use cases.

Data stored in "sessionStorage" is always of the _String_ type. This plugin helps with the conversion of Lua types when storing and retrieving "sessionStorage" data.

### Cookies VS Sessions

A browser page session lasts for as long as the browser is open and survives over page reloads and restores. Opening a page in a new tab or window will cause a new session to be initiated, which differs from how session cookies work.

## API

### setItem

Save data to sessionStorage. Data can be _String_, _Number_, _Boolean_, or _Table_.

```lua
sessionStorage.setItem(key, data)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|The key name to store the data with.|_String_|__Y__|
|data|The data to store. Data type can be _String_, _Number_, _Boolean_, or _Table_.|_Variable_|__Y__|

__Returns__

On success the _Boolean_ `true`, or `nil` otherwise.

__Example__

```lua
sessionStorage.setItem('username', 'Donna')

--Or to verify
if (sessionStorage.setItem('username', 'Donna')) then
  print('stored')
else
  print('failed')
end
```

__Notes__

Lua _Table_ types are converted to JSON strings before being stored.

---

### getItem

Get saved data from sessionStorage.

```lua
sessionStorage.getItem(key[, valType])
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|The key name to retrieve the data from.|_String_|__Y__|
|valType|The preferred returned data type. (see below).|_String_|__N__|

__Returns__

The data stored at `key`. By default this will be a _String_ data type. Pass a `valType` to convert the data.

Valid `valTypes` are:

  - 'string' (default)
  - 'number'
  - 'boolean'
  - 'table'

__Examples__

_String_

```lua
local username = sessionStorage.getItem('username')
print(username) --> Donna

--Or to verify
local username = sessionStorage.getItem('username')
if not username then
  print('no username')
else
  print(username) --> Donna
end
```

__See also [exists](#exists).__

_Number_

```lua
--values are returned as strings unless a valType is specified.
local score = sessionStorage.getItem('score', 'number')
```

_Boolean_

```lua
--values are returned as strings unless a valType is specified.
local isWinner = sessionStorage.getItem('winner', 'boolean')
```

_Table_

```lua
--values are returned as strings unless a valType is specified.
local config_tbl = sessionStorage.getItem('config', 'table')
```

---

### removeItem

Remove saved data from sessionStorage.

```lua
sessionStorage.removeItem(key)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|The key name to delete the data from.|_String_|__Y__|

__Returns__

On success the _Boolean_ `true`, or `nil` otherwise.

__Example__

```lua
sessionStorage.removeItem('username')

--Or to verify
if (sessionStorage.removeItem('username')) then
  print('deleted')
else
  print('failed')
end
```

---

### exists

Check if key is present in sessionStorage.

```lua
sessionStorage.exists(key)
```

__Arguments__

|Name|Description|Type|Required|
|----|-----------|----|--------|
|key|The key name to check for existence.|_String_|__Y__|

__Returns__

If the key exists returns the _Boolean_ `true`, or `false` otherwise.

__Example__

```lua
if (sessionStorage.exists('username')) then
  print('username exists')
else
  print('username does not exist')
end
```

---

### clear

Remove all saved data from sessionStorage.

```lua
sessionStorage.clear()
```

__Arguments__

_This method takes no arguments_

__Returns__

On success the _Boolean_ `true`, or `nil` otherwise.

__Example__

```lua
sessionStorage.clear()

--Or to verify
if (sessionStorage.clear()) then
  print('cleared')
else
  print('failed')
end
```

## Demo

In the __demo__ directory is a Corona project that you can build for HTML5 testing. 

---

&copy;2018 C. Byerley ([develephant](https://develephant.com))