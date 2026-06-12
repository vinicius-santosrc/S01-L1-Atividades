(defstruct item
  nome
  tipo
  preco
  forca-magica)

(defun adiciona-imposto (preco)
  (* preco 1.15))

(defun bonus-maldicao (forca)
  (cond
    ((> forca 80) (* forca 1.5))
    (t forca)))

(defun descricao-venda (i)
  (concatenate 'string
               "item: " (item-nome i)
               " | preco; " (write-to-string (item-preco i))
               " | forca magica: " (write-to-string (item-forca-magica i))))

(defun processa-venda (lista)
  (mapcar
   #'descricao-venda
   (mapcar
    (lambda (i)
      (make-item
       :nome (item-nome i)
       :tipo (item-tipo i)
       :preco (adiciona-imposto (item-preco i))
       :forca-magica (bonus-maldicao (item-forca-magica i))))
    (remove-if-not
     (lambda (i) (eq (item-tipo i) 'arma))
     lista))))

(defun main ()
  (let ((catalogo
         (list
          (make-item :nome "adaga velha" :tipo 'arma :preco 100.0 :forca-magica 30)
          (make-item :nome "pocao pequena" :tipo 'pocao :preco 40.0 :forca-magica 10)
          (make-item :nome "espada amaldiçoada" :tipo 'arma :preco 500.0 :forca-magica 90)
          (make-item :nome "cristal antigo" :tipo 'artefato :preco 700.0 :forca-magica 100)
          (make-item :nome "machado de ferro" :tipo 'arma :preco 250.0 :forca-magica 75)))))

    (format t "vendas processadas:~%")
    (mapcar
     (lambda (texto) (format t "~a~%" texto))
     (processa-venda catalogo))))

(main)