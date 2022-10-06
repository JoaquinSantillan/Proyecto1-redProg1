;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname FabricaFrankensteinV2) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
(define CUERPO-AMONGUS (rectangle 70 80 "solid" "yellow"))

(define HOJA (empty-scene 400 300 "black"))

(define CABEZA-AMONGUS (ellipse 70 60 "solid" "red"))


(define MOCHILA-AMONGUS (rectangle 30 60 "solid" "Light Steel Blue"))


(define PATAS-AMONGUS (place-image (rectangle 20 30 "solid" "yellow") 15 15
                             (place-image (ellipse 20 40 "solid" "yellow") 15 25
                                (place-image (rectangle 20 30 "solid" "yellow") 65 15 
                                   (place-image (ellipse 20 40 "solid" "yellow") 65 25 (empty-scene 80 50 "black"))))))


(define VISOR-AMONGUS (place-image
               (ellipse 30 14 "solid" "white")
               44 12 (place-image (ellipse 40 20 "solid" "Light Cyan")40 12
                                  (ellipse 60 30 "solid" "Light Steel Blue") )))


;STEVE (PABLO)

(define CABEZA-STEVE
             (place-image
              (rectangle 84 25 "solid" "brown")
               50 0
               (place-image
                (rectangle 10 10 "solid" "brown")
                 13 17
               (place-image
                (rectangle 10 10 "solid" "brown")
                 87 17
              (place-image
                (rectangle 22 10 "solid" "Dark Salmon")
                  50.5 55 
               (place-image
                (rectangle 22 10 "solid" "Saddle Brown")
                  50.5 45
                  (place-image
                   (rectangle 50 20 "solid" "Brown")
                    50.5 58
                  (place-image
                   (rectangle 11 10 "solid" "blue")
                     33 34
                    (place-image
                     (rectangle 22 10 "solid" "white")
                      27 34
                      (place-image
                       (rectangle 11 10 "solid" "blue")
                        68 34
                        (place-image
                         (rectangle 22 10 "solid" "white")
                          73 34
                           (place-image(square 84 "solid" "Dark Salmon")
                            50 34
                                (empty-scene 100 70 "black")))))))))))))


(define CUERPO-STEVE (place-image
                (rectangle 80 170 "solid" "Medium Turquoise")
                 40 100
                 (empty-scene 80 170 "white")))

(define BRAZO-STEVE (rectangle 33 105 "solid" "Light Sea Green"))


(define PIERNAS-STEVE (place-image
                 (rectangle 44 130 "solid" "Royal Blue")
                   24 36
                   (place-image
                    (rectangle 44 130 "solid" "Royal Blue")
                      68 36
                      (place-image
                       (rectangle 44 30 "solid" "gray")
                        24 115
                         (place-image
                           (rectangle 44 30 "solid" "gray")
                             68 115
                             (empty-scene 93 130 "black"))))))


;OLLIE (PABLO)

(define CABEZA-OLLIE(place-image(circle 5 "solid" "black") 24 25
                                (place-image (circle 5 "solid" "black") 56 25
                                 (place-image(circle 3.5 "solid" "brown")40 45
                                             (place-image(circle 8 "solid" "yellow") 24 22 ; Ceja izquierda
                                              (place-image(circle 8 "solid" "yellow") 56 22 ;Ceja derecha
                                              (place-image(circle 8 "solid" "black") 24 20;Ceja izquierda
                                              (place-image(circle 8 "solid" "black") 56 20;Ceja Derecha
                                             (place-image(circle 15 "solid""yellow")41.5 52.5
                                               (place-image(circle 15 "solid""black")41.5 55
                                              (place-image(rectangle 4 30 "solid" "grey") 40 -5
                                             (circle 40 "solid" "yellow"))))))))))))

(define TORZO-OLLIE (place-image
                         (rotate 60(square 20 "solid" "green")) 30 30
                         (square 60 "solid" "yellow")))

(define BRAZO-OLLIE (place-image(rectangle 50 10 "solid" "grey") 22.5 50
                                (place-image(circle 15 "solid" "yellow" )60 50
                                    (place-image(rotate 45(rectangle 5 15 "solid" "yellow")) 75 65
                                     (place-image(rotate 125(rectangle 5 15 "solid" "yellow")) 75 36
                                      (place-image(rotate  90(rectangle 5 15 "solid" "yellow")) 80 50

                                            (rectangle 100 100 "solid""black")))))))


(define BRAZO-IZQ-OLLIE (place-image(rectangle 50 10 "solid" "grey") 75 50
                                (place-image(circle 15 "solid" "yellow" )35 50
                                    (place-image(rotate 140(rectangle 5 15 "solid" "yellow")) 20 65
                                     (place-image(rotate 235(rectangle 5 15 "solid" "yellow")) 20 35
                                      (place-image(rotate  90(rectangle 5 15 "solid" "yellow")) 15 50

                                            (rectangle 100 100 "solid""black")))))))

;BRAZO HOLLOW (JOAQUIN)
(define BRAZO-HOLLOW (rotate 120(rectangle 70 20 "solid" "white")))
 
(define MANO-HOLLOW (circle 15 "solid" "white"))

(define ARMA (place-image
              (rotate 100 (rectangle 30 10 "solid" "gray"))20 50
               (place-image
                (rotate 190 (isosceles-triangle 60 30 "solid" "gray")) 20 70
                  (empty-scene 40 100 "transparent"))))

(define BRAZO-COMPLETE-HOLLOW (place-image BRAZO-HOLLOW 25 55
                                    (place-image MANO-HOLLOW 50 90
                                      (place-image  (rotate 120 ARMA) 70 70 (empty-scene 120 105 "black")))))

(define CUERPO-HOLLOW (overlay/offset (ellipse 45 60 "solid" "Light Slate Gray")
                  0 0
                  (triangle 70 "solid" "Light Slate Gray")))


(define PIERNAS-HOLLOW  (triangle/sss 60 60 20 "solid" "Light Slate Gray"))


(define CUERNOS (place-image (ellipse 40 60 "solid" "black") 30 20
                            (circle 30 "solid" "white")))

(define CABEZA-HOLLOW (place-image (ellipse 15 30 "solid" "black")30 40
                       (place-image (ellipse 15 30 "solid" "black") 55 40
                        (place-image (ellipse 60 50 "solid" "white") 40 40
                         (place-image CUERNOS 40 20 (empty-scene 80 70 "black"))))))



;ISAAC(JOAQUIN)
(define CABEZA-ISAAC (place-image
                (circle 12 "solid" "black") 25 50
                 (place-image (circle 12 "solid" "black") 75 50
                   (place-image (rectangle 10 20 "solid" "Deep Sky Blue") 75 70
                    (place-image (rectangle 10 20 "solid" "Deep Sky Blue") 25 70
                     (place-image (ellipse  20 10 "solid" "black") 50 60
                      (place-image (circle 40 "solid" "Navajo White") 50 50
                      (empty-scene 100 100 "transparent"))))))))

(define TORZO-ISAAC (place-image
                     (ellipse 10 5 "solid" "black")40 50
                     (ellipse 80 75 "solid" "Navajo White")))

(define PATAS-ISAAC (place-image (rectangle 20 30 "solid" "Navajo White") 15 15
                             (place-image (ellipse 20 40 "solid" "Navajo White") 15 25
                                (place-image (rectangle 20 30 "solid" "Navajo White") 65 15 
                                   (place-image (ellipse 20 40 "solid" "Navajo White") 65 25 (empty-scene 80 50 "black"))))))

(define BRAZO-IZQ-ISAAC (rotate 90(add-line
    (rectangle 70 70 "solid" "transparent")
    25 25 75 75
    (make-pen "Navajo White" 20 "solid" "round" "round"))))

(define BRAZO-DERE-ISAAC (add-line
    (rectangle 70 70 "solid" "transparent")
    25 25 75 75
    (make-pen "Navajo White" 20 "solid" "round" "round")))


#|CODIGO|#


; 1) Diseño de datos
;notacion:
;cuerpo-frank: Image(entrada)
;cabeza-frank: Image(entrada)
;patas-frank: Image(entrada)
;mochila-frank: Image(entrada)

;cuerpo-frank: Image(salida)

;2) signatura
;image -> image ;image -> image;image ->image;;image -> image;image ->image;

;3) Proposito
;la funcion toma como parametros partes del cuerpo de un frank para formarlo
;y estas partes son constantes previamente armadas de otros personajes

;4) Ejemplos

;(fabrica-frank-numero-uno CUERPO-STEVE CABEZA-AMONGUS PATAS-STEVE MOCHILA-AMONGUS BRAZO-HOLLOW)
;:esto da como resultado un frank con cuerpo de el personaje steve una cabeza del personaje amongus
;unas patas del steve la mochila del among us y un brazo del personaje hollow

;(fabrica-frank-numero-uno CUERPO-AMONGUS CABEZA-STEVE  PATAS-AMONGUS MOCHILA-AMONGUS BRAZO-HOLLOW)
;esto da como resultado un frank con el cuerpo de among us cabeza de steve patas de among us mochila de among us y brazo de hollow

;(fabrica-frank-numero-uno CUERPO-HOLLOW CABEZA-HOLLOW PATAS-STEVE MOCHILA-AMONGUS)
;:esto da como resultado un frank con cuerpo de hollow cabeza de hollow patas de steve mochila de among us

;5)codigo

(define (fabrica-frank-numero-uno cuerpo cabeza patas mochila brazo)
   (place-image cabeza 140 55
    (place-image cuerpo 140 130
       (place-image
         brazo 220 120
        (place-image patas 140 195
         (place-image mochila 100 140 HOJA))))))


;PRIMER FRANK JOAQUIN

; 1) Diseño de datos
;notacion:
;fabrica-frank-numero-uno-joaquin: Image(entrada)
;fabrica-frank-numero-uno-joaquin: Image(entrada)
;fabrica-frank-numero-uno-joaquin: Image(entrada)
;fabrica-frank-numero-uno-joaquin: Image(entrada)
;fabrica-frank-numero-uno-joaquin: number(entrada)
;fabrica-frank-numero-uno-joaquin: number(entrada)

;fabrica-frank-numero-uno-joaquin: Image(salida)


;2) signatura
;image -> image ;image -> image;image ->image;image -> image;number ->image;number -> image

;3) Proposito
;la funcion toma como parametros partes del cuerpo de un frank para formarlo
;y estas partes son constantes previamente armadas de otros personajes

;4) Ejemplos

;(fabrica-frank-numero-uno TORZO-ISAAC CABEZA-STEVE PATAS-ISAAC BRAZO-COMPLETO-HOLLOW 10 20)
;:esto da como resultado un frank con cuerpo de el personaje isaac una cabeza del personaje steve
;unas patas del isaac un brazo del personaje hollow y en este caso pasamos primero la rotacion como
;parametro y la ubicacion en el eje y como parametro

;(fabrica-frank-numero-uno CUERPO-AMONGUS CABEZA-ISAAC PATAS-AMONGUS BRAZO-ISAAC 50 10)
;:esto da como resultado un frank con cuerpo de el personaje amongus una cabeza del personaje isaac
;unas patas del amoungus un brazo del personaje isaac y en este caso pasamos primero la rotacion como
;parametro y la ubicacion en el eje y como parametro

;(fabrica-frank-numero-uno CUERPO-HOLLOW CABEZA-HOLLOW PATAS-ISAAC BRAZO-ISAAC 40 20)
;:esto da como resultado un frank con cuerpo de el personaje hollow una cabeza del personaje hollow
;unas patas del isaac un brazo del personaje isaac y en este caso pasamos primero la rotacion como
;parametro y la ubicacion en el eje y como parametro

;5)codigo
(define (fabrica-frank-numero-uno-joaquin cuerpo cabeza patas brazo-arma rotate-brazo cabeza-y)
   (place-image cabeza 140 cabeza-y
    (place-image cuerpo 140 130
      (place-image patas 140 175
       (place-image
         (rotate rotate-brazo brazo-arma) 210 120
           HOJA)))))

;SEGUNDO FRANK JOAQUIN

; 1) Diseño de datos
;notacion:
;cuerpo-de-frank: Image(entrada)
;cabeza-frank: Image(entrada)
;pierna-frank: Image(entrada)
;brazo-izq-frank: Image(entrada)
;brazo-dere-frank: Image(entrada)
;color-de-ojos-frank: string(entrada)
;posicion-ojos-y-frank: number(entrada)
;posicion-ojos-x-frank: number(entrada)

;fabrica-frank-numero-uno-joaquin: Image(salida)


;2) signatura
;image -> image ;image -> image;image ->image;image -> image;number ->image;number -> image


;3) Proposito
;la funcion toma como parametros partes del cuerpo de un frank para formarlo
;y estas partes son constantes previamente armadas de otros personajes

;4) Ejemplos

;(fabrica-frank-numero-uno TORZO-ISAAC CABEZA-STEVE PATAS-ISAAC BRAZO-IZQ-ISAAC BRAZO-DERE-ISAAC "red" 10 20)
;:esto da como resultado un frank con cuerpo de el personaje isaac una cabeza del personaje steve
;unas patas del isaac un brazo del personaje ISAAC y en este caso pasamos primero la rotacion como
;parametro y la ubicacion en el eje y como parametro



(define (fabrica-frank-numero-dos-joaquin cuerpo cabeza pierna brazo-dere brazo-izq color-ojos ojos-y ojos-x)
   (place-image cabeza 140 70
    (place-image cuerpo 140 130
       (place-image
         brazo-dere 168 127
         (place-image
          brazo-izq 90 150
          (place-image
           pierna 120 175
           (place-image
            pierna 160 175
           HOJA)))))))


;PRIMER FRANK PABLO

(define (fabrica-frank-pablo-numero-uno cuerpo cabeza patas brazo brazo-izq brazo-X-izq brazo-X-dere)
   (place-image cabeza 140 55
    (place-image cuerpo 140 130
      (place-image brazo-izq  brazo-X-izq  120 ;65
       (place-image brazo  brazo-X-dere 120 ;220
        (place-image patas 140 195
          HOJA))))))


;(fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 110 170)



(run-movie 0.5 (list (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 110 170)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 100 180)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 90 190)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 80 200)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 70 210)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 80 220)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 70 210)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 65 200)
                      (fabrica-frank-pablo-numero-uno TORZO-OLLIE CABEZA-OLLIE PIERNAS-STEVE BRAZO-OLLIE BRAZO-IZQ-OLLIE 60 220)))


#|(run-movie 0.5 (list (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 55 140)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 45 150)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 35 160)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 25 170)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 15 180)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 25 170)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 35 160)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 45 150)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 55 140)))|#


#|(run-movie 0.5 (list (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAoAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 12 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)))|#