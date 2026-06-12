(defstruct erva
  nome
  preco-base)

(defun calcula-dosagem (peso idade)
  (cond
    ((or (< idade 8) (< peso 25)) "10ml")
    ((or (< idade 18) (< peso 60)) "25ml")
    (t "50ml")))

(defun ajusta-preco (e)
  (cond
    ((string= (erva-nome e) "Ginseng") (* (erva-preco-base e) 3.0))
    ((string= (erva-nome e) "lotus") (* (erva-preco-base e) 1.5))
    (t (erva-preco-base e))))

(defun descricao-erva (e peso idade)
  (concatenate 'string
               "erva: " (erva-nome e)
               " | preco ajustado " (write-to-string (ajusta-preco e))
               " | dosagem: " (calcula-dosagem peso idade)))

(defun main ()
  (let ((ginseng (make-erva :nome "Ginseng" :preco-base 20.0))
        (lotus (make-erva :nome "lotus" :preco-base 15.0))
        (camomila (make-erva :nome "Camomila" :preco-base 8.0)))

    (format t "~a~%" (descricao-erva ginseng 20 6))
    (format t "~a~%" (descricao-erva lotus 55 16))
    (format t "~a~%" (descricao-erva camomila 80 30))))

(main)