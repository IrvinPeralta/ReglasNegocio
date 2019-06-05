
(deftemplate dispositivoscelulares
	(slot id-celular)
	(multislot modelo)
	(slot color)
	(slot marca)
	(slot precio)
)

(deftemplate notasdeventa
	(slot id-nota)
	(slot id-celular)
	(slot cantidad)
	(slot precio)
)

(printout t "Templates cargadas" crlf)