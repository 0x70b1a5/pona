/-  *pona
|%
:: ++  ante  
::   |=  tan=tape
::   ^-  (list toki)
::   =/  tokis=(list toki)  ~
::   =/  t=toki  ~
::   =/  l=linja  ~
::   =/  n=nimi  ~
::   =/  i  0
::   |-
::   ?:  (gte i (lent tan))
::     (weld tokis ~[t])
::   =/  ith=@t  (snag i tan)
::   ?+  ith  !!
::                 :: '\0a' always follows - skip it
::                 ::
::     %'\0d'  %=  t      ~
::                 l      ~
::                 n      ~
::                 i      +(+(i))
::                 tokis  (weld tokis (weld t (weld l ~[`ijo`n])))
::             ==
::     %' '    $(tokis (weld tokis ~[t `kon`ace+~]), i +(i), s ~)
::     %'.'    $(tokis (weld tokis ~[t `pini`dot+~]), i +(i), s ~)
::     %'!'    $(tokis (weld tokis ~[t `pini`zap+~]), i +(i), s ~)
::     %'?'    $(tokis (weld tokis ~[t `pini`wut+~]), i +(i), s ~)

::   $(i +(i))  ::  TODO
::   :: $(s (weld s (trip ith)), i +(i))
++  style
  ^~
  %-  trip
  '''
  * {
    box-sizing: border-box;
    margin: 0;
    padding: 0;
  }
  '''
--