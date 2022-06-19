/-  pona
/+  rudder, ilo

^-  (page:rudder (list ale:pona) action:pona)

|_  $:  
    =bowl:gall  
    *
    ales=(list ale:pona)
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

          sewi taso li pona
        ==
        ;footer
          © nunya business ventures llc
        ==
      ==
    ==
  --
++  argue
  |=  [headers=header-list:http body=(unit octs)]
  ^-  $@(brief:rudder action:pona)
  =/  args=(map @t @t)
    ?~(body ~ (frisk:rudder q.u.body))
  ?:  &((~(has by args) 'add') (~(has by args) 'toki'))
    :: [%add toki=(trip (~(got by args) 'toki'))]
    ~
  ~
++  final  (alert:rudder 'pona' build)
--