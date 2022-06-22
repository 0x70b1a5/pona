/-  pona, webpage
/+  server, verb, default-agent, dbug, rudder, ilo
::
/~  pages  (page:rudder (list toki:pona) action:pona)  /app/pona/webui
::
|%
+$  versioned-state
  $%  state-0
  ==
::
+$  state-0
  $:  [%0 tokis=(list toki:pona)]
  ==
::
+$  card  card:agent:gall
::
+$  eyre-id  @ta
--
::
=|  state-0
=*  state  -
::
%-  agent:dbug
%+  verb  |
^-  agent:gall
::
=<
|_  =bowl:gall
+*  this      .
    default   ~(. (default-agent this %|) bowl)
    main      ~(. +> bowl)
::
++  on-init
  ^-  (quip card _this)
  ~&  >  '%pona initialized successfully'
  =.  state  [%0 *(list toki:pona)]
  :_  this
  :~  [%pass /eyre/connect %arvo %e %connect [~ /[dap.bowl]] dap.bowl]
  ==
++  on-save   !>(state)
::
++  on-load
  |=  ole=vase
  ^-  (quip card _this)
  =/  old  !<(versioned-state ole)
  ?-  -.old
    %0  [~ this(state old)]
  ==
::
++  on-poke
  |=  [=mark =vase]
  ^-  (quip card _this)
  ?+  mark  (on-poke:default mark vase)
      %noun
    ?+  q.vase  (on-poke:default mark vase)
        %print-state
      ~&  >>  state
      ~&  >>>  bowl  `this
    ==
    ::
      %pona-action
    =^  cards  state
    (handle-action:main !<(action:pona vase))
    [cards this]
    ::
      %handle-http-request
    =;  out=(quip card:agent:gall _tokis.state)
      [-.out this(tokis.state +.out)]
    %.
      :+  bowl
        !<(order:rudder vase)
      tokis.state
    %:  (steer:rudder _tokis.state action:pona)
      pages
      :: a destructured path w a :site path and a file :ext (optional)
      |=  =trail:rudder  
      ^-  (unit place:rudder)  :: $place is either a %page or a redirect %away
      :: remove '/pona' from the url
      ?~  site=(decap:rudder /pona site.trail)  ~  
      ?+  u.site  ~
      ::route        `[?(%page %away) auth? %page-name]
        ~            `[%page & %index]  :: no trail - index
        [%index ~]   `[%away (snip site.trail)]  :: redirect to /
        [@ ~]        `[%page & %ken]
        [@ %edit ~]  `[%page & %edit]
      ==
    ::
      |=  =order:rudder  ::  the "Fallback Function" (takes the full httpreq)
      ^-  [[(unit reply:rudder) (list card:agent:gall)] _tokis.state]
      =;  msg=@t  [[`[%code 404 msg] ~] tokis.state]
      %+  rap  3
      :~  'couldn\'t find that page, sorry'
      ==
    ::
      |=  act=action:pona
      ^-  $@(@t [brief:rudder (list card:agent:gall) _tokis.state])
      ``tokis:(handle-action:main act)
    ==
  ==
::
++  on-arvo
  |=  [=wire =sign-arvo]
  ^-  (quip card _this)
  ?+  sign-arvo  (on-arvo:default wire sign-arvo)
      [%eyre %bound *]
    ~?  !accepted.sign-arvo
      [dap.bowl 'eyre bind rejected!' binding.sign-arvo]
    [~ this]
  ==
::
++  on-watch
  |=  =path
  ^-  (quip card _this)
  ?>  =(our.bowl src.bowl)
  ?+  path  (on-watch:default path)
    [%http-response *]  [~ this]
  ==
::
++  on-leave  on-leave:default
++  on-peek   on-peek:default
++  on-agent  on-agent:default
++  on-fail   on-fail:default
--
|_  =bowl:gall
++  handle-action
  |=  =action:pona
  ^-  (quip card _state)
  ?-    -.action
      ::  add a toki
      ::
      %add
    =.  tokis.state  (weld tokis.state ~[toki.action])
    :_  state
    ~[[%give %fact ~[/tokis] [%atom !>(tokis.state)]]]
      :: print tokis
      ::
      @
    ~&  >  tokis.state
    :_  state
    ~[[%give %fact ~[/tokis] [%atom !>(tokis.state)]]]
  ==
--