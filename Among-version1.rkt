;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname Among) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")) #f)))
#|CONSTANTES|#

(define CUERPO (rectangle 70 60 "solid" "yellow"))

(define HOJA (empty-scene 200 300))

(define PATAelipse (ellipse 20 40 "solid" "yellow"))

(define PATArect  (rectangle 20 30 "solid" "yellow"))

(define VISOR (ellipse 60 30 "solid" "Light Steel Blue") )

(define VISOR-BRILLO (ellipse 40 20 "solid" "Light Cyan"))

(define CABEZADOS (ellipse 70 60 "solid" "yellow"))

(define MOCHILA (rectangle 30 60 "solid" "Light Steel Blue"))

(define VISOR-BRILLO-BLANCO (ellipse 30 14 "solid" "white"))

(define PLANTA (rectangle 8 20 "solid" "seagreen"))
(define RAMITA1 (triangle/ass 90 20 60 "solid" "Pale Green"))
(define RAMITA2 (triangle/sas 90 20 20 "solid" "Pale Green"))


#|CODIGO|#
(place-image VISOR-BRILLO-BLANCO
              135 64
(place-image VISOR-BRILLO
              128 66
(place-image VISOR
              120 70
  (place-image
    CUERPO
             100 110
    (place-image
     CABEZADOS
             100 70    
         (place-image
          PATArect
          75 150
          (place-image PATAelipse
                       75 155
                       (place-image 
                        PATArect
                        125 148
                        (place-image
                         PATAelipse
                         125 155 (place-image
                                  MOCHILA 60 110
                                  (place-image PLANTA 100 40 (place-image RAMITA1 78 40
                                                                          (place-image RAMITA2 108 30 HOJA)))))))))))))