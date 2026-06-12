(defstruct criatura
  nome
  ambiente
  periculosidade
  vida-media)

(defun filtra-por-perigo (lista)
  (remove-if
   (lambda (c) (eq (criatura-periculosidade c) 'baixa))
   lista))

(defun relatorio-profundidade (lista)
  (mapcar
   (lambda (c)
     (concatenate 'string
                  (criatura-nome c)
                  ": Vive em "
                  (criatura-ambiente c)))
   (remove-if-not
    (lambda (c) (string= (criatura-ambiente c) "Deep"))
    lista)))

(defun descricao-criatura (c)
  (concatenate 'string
               "nome: " (criatura-nome c)
               " | ambiente: " (criatura-ambiente c)
               " | perigo: " (write-to-string (criatura-periculosidade c))))

(defun main ()
  (let ((catalogo
         (list
          (make-criatura :nome "Peeper" :ambiente "Safe Shallows" :periculosidade 'baixa :vida-media 3)
          (make-criatura :nome "Reaper Leviathan" :ambiente "Crash Zone" :periculosidade 'alta :vida-media 80)
          (make-criatura :nome "Ghost Leviathan" :ambiente "Deep" :periculosidade 'alta :vida-media 100)
          (make-criatura :nome "Warper" :ambiente "Deep" :periculosidade 'media :vida-media 40)))))

    (format t "catalogo completo:~%")
    (mapcar (lambda (c) (format t "~a~%" (descricao-criatura c))) catalogo)

    (format t "~%criaturas perigosas:~%")
    (mapcar (lambda (c) (format t "~a~%" (descricao-criatura c)))
            (filtra-por-perigo catalogo))

    (format t "~%relatorio do deep:~%")
    (mapcar (lambda (texto) (format t "~a~%" texto))
            (relatorio-profundidade catalogo))))

(main)