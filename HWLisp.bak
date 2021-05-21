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

;Подсчет числа элементов в списке
(define (LENGTH items)
  (if  (null? items)
       0
       (+ 1 (LENGTH (cdr items)))))
(LENGTH L1)
(LENGTH L2)
(LENGTH (cons (list 1 2) (list 3 4)))

(define L1 (list 1 2 3 4))
(define L2 (cons 'A (cons (cons 'B (cons 'C null)) null)))

;3 ДЗ Нарисовать стрелочную диаграмму для данного списка и объяснить полученный результат
; имеем ((1 2) 3 4) - поэтому длина 3
(LENGTH (cons (cons 1 (cons 2 null)) (cons 3 (cons 4 null))))
(cons (cons 1 (cons 2 null)) (cons 3 (cons 4 null)))
(cons (list 1 2) (list 3 4))

;4 ДЗ Разработать процедуру, возвращающую n-ый элемент списка (нумерация начинается с нуля)

  (define (search lst counter)
  (cond ((null? lst) (error 'search "index out of range"))
        ((eq? counter 0) (first lst))
        (else (search (rest lst) (- counter 1)))))

(search L1 (read))

;задача 2 Модифицируйте программу, моделирующую посадку ракеты, таким образом, чтобы учесть требование замедления ракеты при посадке (от некоторой начальной скорости до нуля).
; тут будет

;задача 3 Определите процедуру, которая принимает в качестве аргументов три числа и возвращает сумму квадратов двух больших из них.
(define (func3 a b c)
  (if (> a b) (if (> b c) (+ (* a a) (* b b)) (+ (* a a) (* c c)))
      (if(> a c)(+ (* a a)(* b b))(+ (* b b)(* c c)))))
(func3 2 2 1)

;задание 4 Определите процедуру, которая принимает в качестве аргументов два числа и возвращает сумму первого и абсолютное значение второго.
(define (func4 a b)
  (if (> 0 b) (+ a (- b)) (+ a b)))
(func4 1 -2)

;задание 5 Создайте процедуру для расчета функции Аккермана.
(define (func5 m n)
  (cond
    [(= m 0) (+ n 1)]
    [(= n 0) (func5 (- m 1) 1)]
    [else (func5 (- m 1) (func5 m (- n 1)))]))
(func5 5 0)

;задание 6 Напишите процедуру, вычисляющую элементы треугольника Паскаля с помощью рекурсивного процесса.

(define (factorial n)
  (if (= n 0) 1 (* n (factorial (- n 1)))))

(define (binom n m)
  (/ (factorial n) (* (factorial m) (factorial (- n m)))))

(define (pascal n k)
  (cond
    [(= k n) 1]
    [else (display (binom n k)) (pascal n (+ k 1))]))

(pascal 6 0)
