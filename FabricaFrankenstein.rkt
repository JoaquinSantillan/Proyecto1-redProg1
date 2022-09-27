;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname FabricaFrankenstein) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))
;AMONGUS

(define CUERPO-AMONGUS (rectangle 70 80 "solid" "yellow"))

(define HOJA (empty-scene 200 300 "black"))

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
(define BRAZO-HOLLOW (rotate 60(rectangle 70 20 "solid" "white")))
(define MANO-HOLLOW (circle 15 "solid" "white"))

(define ARMA (place-image
              (rotate 90(rectangle 30 10 "solid" "gray"))20 90
               (place-image
                (isosceles-triangle 60 30 "solid" "gray") 20 50
                  (empty-scene 40 100 "transparent"))))

(define BRAZO-COMPLETE-HOLLOW (place-image BRAZO 85 55
                                    (place-image MANO 60 90
                                      (place-image (rotate 45 ARMA) 20 50 (empty-scene 120 120 "transparent")))))

;CABEZA ISAAC(JOAQUIN)
(define CABEZA-ISAAC (place-image
                (circle 12 "solid" "black") 25 50
                 (place-image (circle 12 "solid" "black") 75 50
                   (place-image (rectangle 10 20 "solid" "Deep Sky Blue") 75 70
                    (place-image (rectangle 10 20 "solid" "Deep Sky Blue") 25 70
                     (place-image (ellipse  20 10 "solid" "black") 50 60
                      (place-image (circle 40 "solid" "Navajo White") 50 50
                      (empty-scene 100 100 "transparent"))))))))


#|CODIGO|#


(define (fabrica-frank visor cuerpo cabeza patas mochila )
   (place-image cabeza 100 55
    (place-image cuerpo 100 130
        (place-image patas 100 195
         (place-image mochila 60 140 HOJA)))))

(fabrica-frank VISOR-AMONGUS CUERPO-AMONGUS CABEZA-STEVE PATAS-AMONGUS MOCHILA-AMONGUS)
