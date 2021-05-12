#lang racket
(define X 2) (define Y 3)
(let ((a (+ 1 (* X Y)))
      (b (- 1 Y)))
  (+ (* X a a)
     (* Y b)
     (* a b)))

;1 Переписать этот let как λ

((λ (f g a b x y) (f (g x a a) (g y b) (g a b))) + * ((λ (f one g x y) (f one (g x y))) + 1 * X Y) ((λ (f one y) (f one y)) - 1 Y) X Y)

;2 ДЗ Нарисовать стрелочные диаграммы и построить выражения с помощью cons: ((A B) C), ((A B) (D C)), ((A B) (D (C E)))
(cons (cons 'A 'B) 'C)
(cons (cons 'A 'B)(cons (cons 'C 'D) null))
(cons (cons 'A 'B) (cons (cons 'D (cons (cons 'C 'E) null)) null))


(define L1 (list 1 2 3 4))
(define L2 (cons 'A (cons (cons 'B (cons 'C null)) null)))

;3 ДЗ Нарисовать стрелочную диаграмму для данного списка и объяснить полученный результат
; строчка 32 это то же самое что 29 в другом виде итого имеем ((1 2) 3 4) - поэтому длина 3
(LENGTH (cons (cons 1 (cons 2 null)) (cons 3 (cons 4 null))))
(cons (cons 1 (cons 2 null)) (cons 3 (cons 4 null)))
(cons (list 1 2) (list 3 4))

;4 ДЗ Разработать процедуру, возвращающую n-ый элемент списка (нумерация начинается с нуля)

  (define (search lst counter)
  (cond ((null? lst) (error 'search "index out of range"))
        ((eq? counter 0) (first lst))
        (else (search (rest lst) (- counter 1)))))

(search L1 (read))
