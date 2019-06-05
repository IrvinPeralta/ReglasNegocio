(defrule catalogocelulares
	(dispositivoscelulares (id-celular ?id ))
	=>
	(printout t "Celular con id " ?id " registrado exitosamente" crlf )
)

(defrule documentosventa
	(notasdeventa (id-nota ?idn ))
	=>
	(printout t "Nota con folio " ?idn " registrado exitosamente" crlf )
)


(defrule documentosventa2
	(notasdeventa (id-nota ?idn ) (id-celular ?idc))
	(dispositivoscelulares (id-celular ?idc) (marca ?marca))
	=>
	(printout t "Se vendio un " ?marca " con la nota " ?idn crlf )
)

(defrule ventas-iphone
	(notasdeventa (id-nota ?idn ) (id-celular ?idc))
	(dispositivoscelulares (id-celular ?idc) (marca iPhone))
	=>
	(printout t "En la compra de tu celular iPhone puedes llevarte el cargador a un 50% de desc" crlf )
)

(defrule mica-gratis
	(notasdeventa (id-nota ?idn ) (id-celular ?idc) {precio > 10000})
	(dispositivoscelulares (id-celular ?idc) (marca iPhone))
	=>
	(printout t "En compras mayores a 10000 con iphone te regalamos la mica" crlf )
)

(defrule version-mayor
	(notasdeventa (id-nota ?idn ) (id-celular ?idc) )
	(dispositivoscelulares (id-celular ?idc) (marca iPhone) (modelo 7))
	=>
	(printout t "Elegiste el iPhone 7, Puedes llevarte el X  a meses sin interes"   crlf )
)

(defrule segunda-pieza-regalo
	(notasdeventa (id-nota ?idn ) (id-celular ?idc) (cantidad 1) )
	(dispositivoscelulares (id-celular ?idc) (marca iPhone) )
	=>
	(printout t "Estas comprando 1 iphone, en la compra del segundo te regalamos el seguro por 1 anio para ambos"   crlf )
)

(defrule compramultiple
	(notasdeventa (id-nota ?idn ) (id-celular ?idc) {cantidad > 1} )
	(dispositivoscelulares (id-celular ?idc)  )
	=>
	(printout t "Por tu compra multiple, eres acreedor a un cupon de descuento para tu proxima compra"   crlf )
)

(defrule compramultiple
	(notasdeventa (id-nota ?idn ) (id-celular ?idc) )
	(dispositivoscelulares (id-celular ?idc) (marca iPhone) )
	=>
	(printout t "Tambien te recomendamos la compra de iPad, Mac, iPod"   crlf )
)

(printout t "Reglas cargadas" crlf)