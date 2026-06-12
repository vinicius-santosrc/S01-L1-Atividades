(defstruct local
  nome
  elemento
  dificuldade
  recompensa)

(defun bonus-elemental (l)
  (cond
    ((or (eq (local-elemento l) 'pyro)
         (eq (local-elemento l) 'electro))
     (* (local-recompensa l) 1.20))
    ((eq (local-elemento l) 'cryo)
     (* (local-recompensa l) 1.10))
    (t (local-recompensa l))))

(defun vale-a-pena (l)
  (and (> (bonus-elemental l) 500)
       (<= (local-dificuldade l) 3)))

(defun rota-de-farm (lista)
  (mapcar
   (lambda (l)
     (concatenate 'string
                  (local-nome l)
                  " - Recompensa: "
                  (write-to-string (bonus-elemental l))))
   (remove-if-not #'vale-a-pena lista)))

(defun mostra-local (l)
  (concatenate 'string
               "local: " (local-nome l)
               " | elemento: " (write-to-string (local-elemento l))
               " | dificuldade: " (write-to-string (local-dificuldade l))
               " | recompensa com bonus: " (write-to-string (bonus-elemental l))))

(defun main ()
  (let ((catalogo
         (list
          (make-local :nome "dominio das chamas" :elemento 'pyro :dificuldade 2 :recompensa 450)
          (make-local :nome "chefe do lago" :elemento 'hydro :dificuldade 4 :recompensa 800)
          (make-local :nome "montanha gelada" :elemento 'cryo :dificuldade 3 :recompensa 480)
          (make-local :nome "templo do trovao" :elemento 'electro :dificuldade 3 :recompensa 520)
          (make-local :nome "ruinas do vento" :elemento 'anemo :dificuldade 1 :recompensa 300)))))

    (format t "lista completa:~%")
    (mapcar
     (lambda (l) (format t "~a~%" (mostra-local l)))
     catalogo)

    (format t "~%rota boa pra farm~%")
    (mapcar
     (lambda (texto) (format t "~a~%" texto))
     (rota-de-farm catalogo))))

(main)