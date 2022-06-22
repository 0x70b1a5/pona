/-  *pona
|%
++  ante  
  |=  tan=tape
  ^-  toki
  =/  t=toki  ~
  =/  l0  [~ [%sig ~]]
  =/  l=linja  l0
  =/  n=nimi  %''
  =/  i  0
  |-
  ?:  (gte i (lent tan))
    t
  =/  ith=@t  (snag i tan)
  ?+  
    :: nimi
    ith     $(n `@tas`(crip (weld (trip n) (trip ith))), i +(i))
    :: pini
    %'.'    $(t (weld t ~[(lete (suli l n) dot+~)]), i +(i), l l0, n %'')
    %'!'    $(t (weld t ~[(lete (suli l n) zap+~)]), i +(i), l l0, n %'')
    %'?'    $(t (weld t ~[(lete (suli l n) wut+~)]), i +(i), l l0, n %'')
            :: '\0a' always follows - skip it
            ::
    %'\0d'  $(t (weld t ~[(lete (suli l n) gap+~)]), i +(+(i)), l l0, n %'')
    :: kon
    %' '    $(l (suli (suli l n) ace+~), i +(i), n %'')
    :: kipisi
    %','    $(l (suli (suli l n) com+~), i +(i), n %'')
    %':'    $(l (suli (suli l n) col+~), i +(i), n %'')
    %';'    $(l (suli (suli l n) mic+~), i +(i), n %'')
    %'"'    $(l (suli (suli l n) doq+~), i +(i), n %'')
    %'\''   $(l (suli (suli l n) soq+~), i +(i), n %'')
  :: $(s (weld s (trip ith)), i +(i))
  ==
++  sitelen
  |=  t=(list [ijos=(list ijo) pni=pini])
  ^-  tape
  =/  i  0
  =/  l  0
  =/  final  ""
  |- 
  ?:  (gte l (lent t))
    final
  =/  lnja  (snag l t)
  ?:  (gte i (lent (head lnja)))
    ?-  -.pni.lnja
      %dot  $(i 0, l +(l), final (weld final "."))
      %gap  $(i 0, l +(l), final (weld final "\0d\0a"))
      %sig  $(i 0, l +(l), final final)
      %wut  $(i 0, l +(l), final (weld final "?"))
      %zap  $(i 0, l +(l), final (weld final "!"))
    ==
  =/  u  (snag i ijos.lnja)
  ?@  u
    $(i +(i), final (weld final (trip u)))
  ?-  -.u
    %ace  $(i +(i), final (weld final " "))
    %col  $(i +(i), final (weld final ":"))
    %com  $(i +(i), final (weld final ","))
    %doq  $(i +(i), final (weld final "\""))
    %soq  $(i +(i), final (weld final "'"))
    %mic  $(i +(i), final (weld final ";"))
  ==
++  lete
  |=  [l=linja p=pini]
  ^-  linja
  [-.l p]
++  suli
  |=  [l=linja i=ijo]
  ^-  linja
  [(weld -.l ~[i]) +.l]
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