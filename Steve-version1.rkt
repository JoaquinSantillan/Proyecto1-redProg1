;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname Steve-version1) (read-case-sensitive #t) (teachpacks ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "universe.rkt" "teachpack" "2htdp") (lib "image.rkt" "teachpack" "2htdp")) #f)))


(define HOJA (empty-scene 250 350 "black"))

(define CABEZA
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


(define CUERPO (place-image
                (rectangle 80 170 "solid" "Medium Turquoise")
                 40 100
                 (empty-scene 80 170 "white")))

(define BRAZOS (place-image
                 (square 36 "solid" "Dark Salmon")
                 20 91
                 (place-image
                    (square 35 "solid" "Dark Salmon")
                      135 91 
                       (empty-scene 155 110 "Light Sea Green"))))

(define PIERNAS (place-image
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

(define STEVE
  (place-image
   CABEZA
    100 50
    (place-image
      CUERPO
       100 110
        (place-image
          BRAZOS
          100 140
           (place-image
             PIERNAS
              100 260
               HOJA)))))

STEVE