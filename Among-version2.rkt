;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Among-version2) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))

(define CUERPO (rectangle 70 80 "solid" "yellow"))

(define HOJA (empty-scene 200 300 "black"))

(define CABEZA (ellipse 70 60 "solid" "yellow"))

(define MOCHILA (rectangle 30 60 "solid" "Light Steel Blue"))


(define PATAS (place-image (rectangle 20 30 "solid" "yellow") 15 15
                             (place-image (ellipse 20 40 "solid" "yellow") 15 25
                                (place-image (rectangle 20 30 "solid" "yellow") 65 15 
                                   (place-image (ellipse 20 40 "solid" "yellow") 65 25 (empty-scene 80 50 "black"))))))


(define VISOR (place-image
               (ellipse 30 14 "solid" "white")
               44 12 (place-image (ellipse 40 20 "solid" "Light Cyan")40 12
                                  (ellipse 60 30 "solid" "Light Steel Blue") )))




#|CODIGO|#


(define AMONGUS 
(place-image VISOR 120 70
  (place-image CUERPO 100 110
     (place-image CABEZA 100 70
        (place-image PATAS 100 165
           (place-image MOCHILA 60 110 HOJA))))))

AMONGUS
