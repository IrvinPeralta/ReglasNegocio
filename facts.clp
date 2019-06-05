

(assert (dispositivoscelulares (id-celular A01) (modelo 7) (color Blanco) (marca iPhone) (precio 4500)))
(assert (dispositivoscelulares (id-celular A02) (modelo 5) (color Negro) (marca iPhone) (precio 3300)))
(assert (dispositivoscelulares (id-celular A03) (modelo X) (color Plata) (marca iPhone) (precio 17000)))
(assert (dispositivoscelulares (id-celular A04) (modelo Galaxy) (color Rosa) (marca Samsung) (precio 4300)))
(assert (dispositivoscelulares (id-celular A05) (modelo Y9) (color Azul) (marca Huawei) (precio 6149)))

(assert (notasdeventa (id-nota N001) (id-celular A01) (cantidad 2) (precio 9000)))
(assert (notasdeventa (id-nota N002) (id-celular A04) (cantidad 4) (precio 4300)))
(assert (notasdeventa (id-nota N003) (id-celular A03) (cantidad 1) (precio 17000)))

(printout t "Hechos cargados" crlf)