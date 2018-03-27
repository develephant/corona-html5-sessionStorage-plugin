//-----------------------------------------------------------------------------
// Corona HTML5 Session Storage Plugin
// (c)2018 C. Byerley (develephant)
//-----------------------------------------------------------------------------
window.sessionStorage_js = 
{
  getItem: function(key, valType) {
    var val = sessionStorage.getItem(key);

    if (valType == null) {
      return val.toString();
    }

    if (valType == 'table') {
      return JSON.parse(val)
    } else if (valType == 'number') {
      return parseInt(val);
    } else if (valType == 'boolean') {
      val = val.toLowerCase();
      return val == 'true'
    } else {
      return val.toString()
    }
  },
  setItem: function(key, data) {
    if (typeof(data) === 'object') {
      data = JSON.stringify(data);
    }

    sessionStorage.setItem(key, data);
  },
  removeItem: function(key) {
    sessionStorage.removeItem(key);
  },
  exists: function(key) {
    if (sessionStorage[key]) {
      return true
    }

    return false
  },
  clear: function() {
    sessionStorage.clea();
  }
};
