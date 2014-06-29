module.exports = (url, json, callback) ->
  xhr = if window.ActiveXObject then new ActiveXObject('Microsoft.XMLHTTP') else new XMLHttpRequest()
  xhr.onreadystatechange = ->
    if xhr.readyState == 4
      callback(xhr.responseText) if callback
  xhr.open 'POST', url, true
  xhr.setRequestHeader 'Content-type', 'application/json'
  xhr.setRequestHeader 'Connection', 'close'
  xhr.send JSON.stringify json
