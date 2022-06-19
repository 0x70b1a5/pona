|%
+$  action
    $%  [%add toki=toki]
        [%mod toki=toki]
        [%del id=@ud]
    ==
+$  toki     tape::(list linja)
+$  linja    (list ijo)
+$  ijo      $@(nimi kipisi)
+$  kipisi   $@(',' '.' ':' '!' '?')
+$  nimi     @t
--
