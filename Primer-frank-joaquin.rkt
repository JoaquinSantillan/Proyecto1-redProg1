;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Primer-frank-joaquin) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
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


;STEVE

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


(define PIERNAS-HOLLOW  (triangle/sss 80 80 40 "solid" "Light Slate Gray"))



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
    (rectangle 100 100 "solid" "transparent")
    25 25 75 75
    (make-pen "Navajo White" 20 "solid" "round" "round"))))

(define BRAZO-DERE-ISAAC (add-line
    (rectangle 100 100 "solid" "transparent")
    25 25 75 75
    (make-pen "Navajo White" 20 "solid" "round" "round")))



#|(define CUERPO-ENTERO-ISAAC (place-image
                CABEZA-ISAAC 90 80
                 (place-image
                  TORZO-ISAAC 90 157
                  (place-image
                   PATAS-ISAAC 90 190
                   (place-image
                    BRAZO-IZQ 55 150
                    (place-image
                     BRAZO-DERE 125 150
                     (empty-scene 200 300 "black" )))))))|#



#|CODIGO|#



(define (fabrica-frank-numero-uno cuerpo cabeza patas mochila brazo)
   (place-image cabeza 140 55
    (place-image cuerpo 140 130
       (place-image
         brazo 220 120
        (place-image patas 140 195
         (place-image mochila 100 140 HOJA))))))


;PRIMER FRANK JOAQUIN

(define (fabrica-frank-numero-uno-joaquin cuerpo cabeza patas brazo-arma rotate-brazo cabeza-y)
   (place-image cabeza 140 cabeza-y
    (place-image cuerpo 140 130
      (place-image patas 140 175
       (place-image
         (rotate rotate-brazo brazo-arma) 210 120
           HOJA)))))

#|(run-movie 0.5 (list (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 55 140)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 45 150)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 35 160)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 25 170)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 15 180)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 25 170)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 35 160)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 45 150)
                      (fabrica-frank CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS 55 140)))|#


(run-movie 0.5 (list (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 35 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 12 65)
                      (fabrica-frank-numero-uno-joaquin TORZO-ISAAC CABEZA-STEVE  PATAS-ISAAC BRAZO-COMPLETE-HOLLOW 17 55)))

