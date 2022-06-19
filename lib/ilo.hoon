/-  *pona
|%
:: ++  ante  
::   |=  t=tape
::   ^-  ale
::   =/  a=ale  ~
::   =/  i  0
::   =/  s=sitelen  ~
::   |-
::   ?:  (gte i (lent t))
::     (weld a ~[s])
::   =/  ith  (snag i t)
::   ?:  =(ith ' ')
::     $(a (weld a ~[s kon+~]), i +(i), s ~)
::   ?:  |(=(ith '\0d') =(ith '\0a')) :: '\0a' always follows - skip it
::     $(a (weld a ~[s gap+~]), i +(+(i)), s ~)
::   :: ?+  ith  !!
::   ::   `@tas`'.'  dot+~
::   ::   `@tas`'!'  zap+~
::   ::   `@tas`'?'  wut+~

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