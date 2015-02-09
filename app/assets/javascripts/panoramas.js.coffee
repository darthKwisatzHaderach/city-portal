# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

swfobject = do ->
  D = 'undefined'
  r = 'object'
  S = 'Shockwave Flash'
  W = 'ShockwaveFlash.ShockwaveFlash'
  q = 'application/x-shockwave-flash'
  R = 'SWFObjectExprInst'
  x = 'onreadystatechange'
  O = window
  j = document
  t = navigator
  T = false
  U = [ h ]
  o = []
  N = []
  I = []
  l = undefined
  Q = undefined
  E = undefined
  B = undefined
  J = false
  a = false
  n = undefined
  G = undefined
  m = true
  M = do ->
    aa = typeof j.getElementById != D and typeof j.getElementsByTagName != D and typeof j.createElement != D
    ah = t.userAgent.toLowerCase()
    Y = t.platform.toLowerCase()
    ae = if Y then /win/.test(Y) else /win/.test(ah)
    ac = if Y then /mac/.test(Y) else /mac/.test(ah)
    af = if /webkit/.test(ah) then parseFloat(ah.replace(/^.*webkit\/(\d+(\.\d+)?).*$/, '$1')) else false
    X = !+'\ub1'
    ag = [
      0
      0
      0
    ]
    ab = null
    if typeof t.plugins != D and typeof t.plugins[S] == r
      ab = t.plugins[S].description
      if ab and !(typeof t.mimeTypes != D and t.mimeTypes[q] and !t.mimeTypes[q].enabledPlugin)
        T = true
        X = false
        ab = ab.replace(/^.*\s+(\S+\s+\S+$)/, '$1')
        ag[0] = parseInt(ab.replace(/^(.*)\..*$/, '$1'), 10)
        ag[1] = parseInt(ab.replace(/^.*\.(.*)\s.*$/, '$1'), 10)
        ag[2] = if /[a-zA-Z]/.test(ab) then parseInt(ab.replace(/^.*[a-zA-Z]+(.*)$/, '$1'), 10) else 0
    else
      if typeof O.ActiveXObject != D
        try
          ad = new ActiveXObject(W)
          if ad
            ab = ad.GetVariable('$version')
            if ab
              X = true
              ab = ab.split(' ')[1].split(',')
              ag = [
                parseInt(ab[0], 10)
                parseInt(ab[1], 10)
                parseInt(ab[2], 10)
              ]
        catch Z
    {
      w3: aa
      pv: ag
      wk: af
      ie: X
      win: ae
      mac: ac
    }
  k = do ->
    if !M.w3
      return
    if typeof j.readyState != D and j.readyState == 'complete' or typeof j.readyState == D and (j.getElementsByTagName('body')[0] or j.body)
      f()
    if !J
      if typeof j.addEventListener != D
        j.addEventListener 'DOMContentLoaded', f, false
      if M.ie and M.win
        j.attachEvent x, ->
          if j.readyState == 'complete'
            j.detachEvent x, arguments.callee
            f()
          return
        if O == top
          do ->
            if J
              return
            try
              j.documentElement.doScroll 'left'
            catch X
              setTimeout arguments.callee, 0
              return
            f()
            return
      if M.wk
        do ->
          if J
            return
          if !/loaded|complete/.test(j.readyState)
            setTimeout arguments.callee, 0
            return
          f()
          return
      s f
    return
  d = do ->
    if M.ie and M.win
      window.attachEvent 'onunload', ->
        ac = I.length
        ab = 0
        while ab < ac
          I[ab][0].detachEvent I[ab][1], I[ab][2]
          ab++
        Z = N.length
        aa = 0
        while aa < Z
          y N[aa]
          aa++
        for Y of M
          M[Y] = null
        M = null
        for X of swfobject
          swfobject[X] = null
        swfobject = null
        return
    return

  f = ->
    if J
      return
    try
      Z = j.getElementsByTagName('body')[0].appendChild(C('span'))
      Z.parentNode.removeChild Z
    catch aa
      return
    J = true
    X = U.length
    Y = 0
    while Y < X
      U[Y]()
      Y++
    return

  K = (X) ->
    if J
      X()
    else
      U[U.length] = X
    return

  s = (Y) ->
    if typeof O.addEventListener != D
      O.addEventListener 'load', Y, false
    else
      if typeof j.addEventListener != D
        j.addEventListener 'load', Y, false
      else
        if typeof O.attachEvent != D
          i O, 'onload', Y
        else
          if typeof O.onload == 'function'
            X = O.onload

            O.onload = ->
              X()
              Y()
              return

          else
            O.onload = Y
    return

  h = ->
    if T
      V()
    else
      H()
    return

  V = ->
    X = j.getElementsByTagName('body')[0]
    aa = C(r)
    aa.setAttribute 'type', q
    Z = X.appendChild(aa)
    if Z
      Y = 0
      do ->
        if typeof Z.GetVariable != D
          ab = Z.GetVariable('$version')
          if ab
            ab = ab.split(' ')[1].split(',')
            M.pv = [
              parseInt(ab[0], 10)
              parseInt(ab[1], 10)
              parseInt(ab[2], 10)
            ]
        else
          if Y < 10
            Y++
            setTimeout arguments.callee, 10
            return
        X.removeChild aa
        Z = null
        H()
        return
    else
      H()
    return

  H = ->
    ag = o.length
    if ag > 0
      af = 0
      while af < ag
        Y = o[af].id
        ab = o[af].callbackFn
        aa = 
          success: false
          id: Y
        if M.pv[0] > 0
          ae = c(Y)
          if ae
            if F(o[af].swfVersion) and !(M.wk and M.wk < 312)
              w Y, true
              if ab
                aa.success = true
                aa.ref = z(Y)
                ab aa
            else
              if o[af].expressInstall and A()
                ai = {}
                ai.data = o[af].expressInstall
                ai.width = ae.getAttribute('width') or '0'
                ai.height = ae.getAttribute('height') or '0'
                if ae.getAttribute('class')
                  ai.styleclass = ae.getAttribute('class')
                if ae.getAttribute('align')
                  ai.align = ae.getAttribute('align')
                ah = {}
                X = ae.getElementsByTagName('param')
                ac = X.length
                ad = 0
                while ad < ac
                  if X[ad].getAttribute('name').toLowerCase() != 'movie'
                    ah[X[ad].getAttribute('name')] = X[ad].getAttribute('value')
                  ad++
                P ai, ah, Y, ab
              else
                p ae
                if ab
                  ab aa
        else
          w Y, true
          if ab
            Z = z(Y)
            if Z and typeof Z.SetVariable != D
              aa.success = true
              aa.ref = Z
            ab aa
        af++
    return

  z = (aa) ->
    X = null
    Y = c(aa)
    if Y and Y.nodeName == 'OBJECT'
      if typeof Y.SetVariable != D
        X = Y
      else
        Z = Y.getElementsByTagName(r)[0]
        if Z
          X = Z
    X

  A = ->
    !a and F('6.0.65') and (M.win or M.mac) and !(M.wk and M.wk < 312)

  P = (aa, ab, X, Z) ->
    a = true
    E = Z or null
    B =
      success: false
      id: X
    ae = c(X)
    if ae
      if ae.nodeName == 'OBJECT'
        l = g(ae)
        Q = null
      else
        l = ae
        Q = X
      aa.id = R
      if typeof aa.width == D or !/%$/.test(aa.width) and parseInt(aa.width, 10) < 310
        aa.width = '310'
      if typeof aa.height == D or !/%$/.test(aa.height) and parseInt(aa.height, 10) < 137
        aa.height = '137'
      j.title = j.title.slice(0, 47) + ' - Flash Player Installation'
      ad = if M.ie and M.win then 'ActiveX' else 'PlugIn'
      ac = 'MMredirectURL=' + O.location.toString().replace(/&/g, '%26') + '&MMplayerType=' + ad + '&MMdoctitle=' + j.title
      if typeof ab.flashvars != D
        ab.flashvars += '&' + ac
      else
        ab.flashvars = ac
      if M.ie and M.win and ae.readyState != 4
        Y = C('div')
        X += 'SWFObjectNew'
        Y.setAttribute 'id', X
        ae.parentNode.insertBefore Y, ae
        ae.style.display = 'none'
        do ->
          if ae.readyState == 4
            ae.parentNode.removeChild ae
          else
            setTimeout arguments.callee, 10
          return
      u aa, ab, X
    return

  p = (Y) ->
    if M.ie and M.win and Y.readyState != 4
      X = C('div')
      Y.parentNode.insertBefore X, Y
      X.parentNode.replaceChild g(Y), X
      Y.style.display = 'none'
      do ->
        if Y.readyState == 4
          Y.parentNode.removeChild Y
        else
          setTimeout arguments.callee, 10
        return
    else
      Y.parentNode.replaceChild g(Y), Y
    return

  g = (ab) ->
    aa = C('div')
    if M.win and M.ie
      aa.innerHTML = ab.innerHTML
    else
      Y = ab.getElementsByTagName(r)[0]
      if Y
        ad = Y.childNodes
        if ad
          X = ad.length
          Z = 0
          while Z < X
            if !(ad[Z].nodeType == 1 and ad[Z].nodeName == 'PARAM') and !(ad[Z].nodeType == 8)
              aa.appendChild ad[Z].cloneNode(true)
            Z++
    aa

  u = (ai, ag, Y) ->
    X = undefined
    aa = c(Y)
    if M.wk and M.wk < 312
      return X
    if aa
      if typeof ai.id == D
        ai.id = Y
      if M.ie and M.win
        ah = ''
        for ae of ai
          if ai[ae] != Object.prototype[ae]
            if ae.toLowerCase() == 'data'
              ag.movie = ai[ae]
            else
              if ae.toLowerCase() == 'styleclass'
                ah += ' class="' + ai[ae] + '"'
              else
                if ae.toLowerCase() != 'classid'
                  ah += ' ' + ae + '="' + ai[ae] + '"'
        af = ''
        for ad of ag
          if ag[ad] != Object.prototype[ad]
            af += '<param name="' + ad + '" value="' + ag[ad] + '" />'
        aa.outerHTML = '<object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"' + ah + '>' + af + '</object>'
        N[N.length] = ai.id
        X = c(ai.id)
      else
        Z = C(r)
        Z.setAttribute 'type', q
        for ac of ai
          if ai[ac] != Object.prototype[ac]
            if ac.toLowerCase() == 'styleclass'
              Z.setAttribute 'class', ai[ac]
            else
              if ac.toLowerCase() != 'classid'
                Z.setAttribute ac, ai[ac]
        for ab of ag
          if ag[ab] != Object.prototype[ab] and ab.toLowerCase() != 'movie'
            e Z, ab, ag[ab]
        aa.parentNode.replaceChild Z, aa
        X = Z
    X

  e = (Z, X, Y) ->
    aa = C('param')
    aa.setAttribute 'name', X
    aa.setAttribute 'value', Y
    Z.appendChild aa
    return

  y = (Y) ->
    X = c(Y)
    if X and X.nodeName == 'OBJECT'
      if M.ie and M.win
        X.style.display = 'none'
        do ->
          if X.readyState == 4
            b Y
          else
            setTimeout arguments.callee, 10
          return
      else
        X.parentNode.removeChild X
    return

  b = (Z) ->
    Y = c(Z)
    if Y
      for X of Y
        if typeof Y[X] == 'function'
          Y[X] = null
      Y.parentNode.removeChild Y
    return

  c = (Z) ->
    X = null
    try
      X = j.getElementById(Z)
    catch Y
    X

  C = (X) ->
    j.createElement X

  i = (Z, X, Y) ->
    Z.attachEvent X, Y
    I[I.length] = [
      Z
      X
      Y
    ]
    return

  F = (Z) ->
    Y = M.pv
    X = Z.split('.')
    X[0] = parseInt(X[0], 10)
    X[1] = parseInt(X[1], 10) or 0
    X[2] = parseInt(X[2], 10) or 0
    if Y[0] > X[0] or Y[0] == X[0] and Y[1] > X[1] or Y[0] == X[0] and Y[1] == X[1] and Y[2] >= X[2] then true else false

  v = (ac, Y, ad, ab) ->
    if M.ie and M.mac
      return
    aa = j.getElementsByTagName('head')[0]
    if !aa
      return
    X = if ad and typeof ad == 'string' then ad else 'screen'
    if ab
      n = null
      G = null
    if !n or G != X
      Z = C('style')
      Z.setAttribute 'type', 'text/css'
      Z.setAttribute 'media', X
      n = aa.appendChild(Z)
      if M.ie and M.win and typeof j.styleSheets != D and j.styleSheets.length > 0
        n = j.styleSheets[j.styleSheets.length - 1]
      G = X
    if M.ie and M.win
      if n and typeof n.addRule == r
        n.addRule ac, Y
    else
      if n and typeof j.createTextNode != D
        n.appendChild j.createTextNode(ac + ' {' + Y + '}')
    return

  w = (Z, X) ->
    if !m
      return
    Y = if X then 'visible' else 'hidden'
    if J and c(Z)
      c(Z).style.visibility = Y
    else
      v '#' + Z, 'visibility:' + Y
    return

  L = (Y) ->
    Z = /[\\\"<>\.;]/
    X = Z.exec(Y) != null
    if X and typeof encodeURIComponent != D then encodeURIComponent(Y) else Y

  {
    registerObject: (ab, X, aa, Z) ->
      if M.w3 and ab and X
        Y = {}
        Y.id = ab
        Y.swfVersion = X
        Y.expressInstall = aa
        Y.callbackFn = Z
        o[o.length] = Y
        w ab, false
      else
        if Z
          Z
            success: false
            id: ab
      return
    getObjectById: (X) ->
      if M.w3
        return z(X)
      return
    embedSWF: (ab, ah, ae, ag, Y, aa, Z, ad, af, ac) ->
      X = 
        success: false
        id: ah
      if M.w3 and !(M.wk and M.wk < 312) and ab and ah and ae and ag and Y
        w ah, false
        K ->
          ae += ''
          ag += ''
          aj = {}
          if af and typeof af == r
            for al of af
              aj[al] = af[al]
          aj.data = ab
          aj.width = ae
          aj.height = ag
          am = {}
          if ad and typeof ad == r
            for ak of ad
              am[ak] = ad[ak]
          if Z and typeof Z == r
            for ai of Z
              if typeof am.flashvars != D
                am.flashvars += '&' + ai + '=' + Z[ai]
              else
                am.flashvars = ai + '=' + Z[ai]
          if F(Y)
            an = u(aj, am, ah)
            if aj.id == ah
              w ah, true
            X.success = true
            X.ref = an
          else
            if aa and A()
              aj.data = aa
              P aj, am, ah, ac
              return
            else
              w ah, true
          if ac
            ac X
          return
      else
        if ac
          ac X
      return
    switchOffAutoHideShow: ->
      m = false
      return
    ua: M
    getFlashPlayerVersion: ->
      {
        major: M.pv[0]
        minor: M.pv[1]
        release: M.pv[2]
      }
    hasFlashPlayerVersion: F
    createSWF: (Z, Y, X) ->
      if M.w3
        u Z, Y, X
      else
        undefined
    showExpressInstall: (Z, aa, X, Y) ->
      if M.w3 and A()
        P Z, aa, X, Y
      return
    removeSWF: (X) ->
      if M.w3
        y X
      return
    createCSS: (aa, Z, Y, X) ->
      if M.w3
        v aa, Z, Y, X
      return
    addDomLoadEvent: K
    addLoadEvent: s
    getQueryParamValue: (aa) ->
      Z = j.location.search or j.location.hash
      if Z
        if /\?/.test(Z)
          Z = Z.split('?')[1]
        if aa == null
          return L(Z)
        Y = Z.split('&')
        X = 0
        while X < Y.length
          if Y[X].substring(0, Y[X].indexOf('=')) == aa
            return L(Y[X].substring(Y[X].indexOf('=') + 1))
          X++
      ''
    expressInstallCallback: ->
      if a
        X = c(R)
        if X and l
          X.parentNode.replaceChild l, X
          if Q
            w Q, true
            if M.ie and M.win
              l.style.display = 'block'
          if E
            E B
        a = false
      return

  }

# ---
# generated by js2coffee 2.0.0