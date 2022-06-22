/-  pona
/+  rudder, ilo

^-  (page:rudder (list toki:pona) action:pona)

|_  $:  
    =bowl:gall  
    *
    tokis=(list toki:pona)
  ==  

++  build
  |=  $:   
        args=(list [key=@t val=@t])
        msg=(unit [gud=? txt=@t])
      ==
  ^-  reply:rudder
  |^  [%page page]
  ++  page
    ^-  manx
    ;html
      ;head
        ;title:"pona"
        ;meta(charset "utf8");
        ;meta(name "viewport", content "width=device-width, initial-scale=1");
      ==
      ;body
        ;header
          ;h2:"%pona"

          A toki pona grammar and sentence construction tool.
        ==
        ;main

          ; sewi taso li pona

          ;*  %-  head 
              %^  spin  tokis  0
              |=  [t=toki:pona i=@ud]
              [(kalama t i) +(i)]

          ;form(method "post")
            ;textarea
              =name         "toki"
              =placeholder  "o sitelen e toki..."
              =rows         "2"
              =cols         "40";
            ;input(type "submit", value "add", name "add");
          ==
        ==
        ;footer
          © nunya business ventures llc
        ==
      ==
    ==
  ++  kalama
  |=  [t=toki:pona i=@ud]
  ^-  manx
  ;p:"{(sitelen:ilo t)}"
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action:pona)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  &((~(has by args) 'add') (~(has by args) 'toki'))
    =/  t  (ante:ilo (trip (~(got by args) 'toki')))
    [%add toki=t]
  ~
++  final  (alert:rudder 'pona' build)
--