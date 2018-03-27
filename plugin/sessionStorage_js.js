//-----------------------------------------------------------------------------
// Corona HTML5 Session Storage Plugin
// (c)2018 C. Byerley (develephant)
//-----------------------------------------------------------------------------
window.sessionStorage_js = 
{
  getItem: function(key, valType) {
    if (typeof(window.sessionStorage) == "undefined") {
      return null;
    }

    var val = window.sessionStorage.getItem(key);

    if (val == null) {
      return null;
    }

    if (valType == null) {
      return val.toString();
    }

    if (valType == 'table') {
      return JSON.parse(val)
    } else if (valType == 'number') {
      return parseFloat(val);
    } else if (valType == 'boolean') {
      val = val.toLowerCase();
      return val == 'true'
    } else {
      return val.toString()
    }

    return null;
  },
  setItem: function(key, data) {
    if (typeof(window.sessionStorage) == "undefined") {
      return null;
    }

    if (typeof(data) === 'object') {
      data = JSON.stringify(data);
    }

    window.sessionStorage.setItem(key, data);

    return true
  },
  removeItem: function(key) {
    window.sessionStorage.removeItem(key);
  },
  exists: function(key) {
    if (typeof(window.sessionStorage) == "undefined") {
      return null;
    }

    if (window.sessionStorage[key]) {
      return true
    }

    return false
  },
  clear: function() {
    if (typeof(window.sessionStorage) == "undefined") {
      return null;
    }

    window.sessionStorage.clear();
  }
};
