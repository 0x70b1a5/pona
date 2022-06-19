|%
+$  action
    $%  [%add toki=toki]
        [%mod toki=toki]
        [%del id=@ud]
    ==
+$  ale      (list sitelen)
+$  sitelen  $@(toki kon)
+$  kon      $%  [%ace ~]
                 [%gap ~]
             ==  
+$  toki     (list linja)
+$  linja    [(list ilo) pini ~]
+$  pini     $%  [%dot ~] 
                 [%zap ~] 
                 [%wut ~]
             ==
+$  ilo      $@(nimi kipisi)
+$  kipisi   $%  [%com ~]
                 [%col ~]
                 [%doq ~]
                 [%soq ~]
                 [%mic ~]
             ==
+$  nimi     @tas
--
