;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname FabricaAmong) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))

(define (Cuerpo color)
  (rectangle 70 80 "solid" color))

(define HOJA (empty-scene 200 300 "black"))

(define (Cabeza color)
  (ellipse 70 60 "solid" color))

(define (Mochila color) (rectangle 30 60 "solid" color))


(define (Patas color) (place-image (rectangle 20 30 "solid" color) 15 15
                             (place-image (ellipse 20 40 "solid" color) 15 25
                                (place-image (rectangle 20 30 "solid" color) 65 15 
                                   (place-image (ellipse 20 40 "solid" color) 65 25 (empty-scene 80 50 "black"))))))


(define (Visor color-1 color-2 color-3)
  (place-image (ellipse 30 14 "solid" color-1)
               44 12 (place-image (ellipse 40 20 "solid"  color-2)40 12
                                  (ellipse 60 30 "solid"  color-3))))




#|CODIGO|#


(define AMONGUS
  (place-image
   (Visor "white" "Light Cyan" "Light Steel Blue") 120 70
    (place-image
     (Cuerpo "red") 100 110
      (place-image
       (Cabeza "red") 100 70
        (place-image 
         (Patas "red")100 165
          (place-image
           (Mochila "blue")60 110
   HOJA))))))

AMONGUS
