(deftemplate animal
  (slot type))

(defrule check_animal
  (animal (type ?t&:(or (eq ?t duck) (eq ?t turtle))))
  =>
  (printout t "This animal is a " ?t "." crlf))
(assert (animal (type duck)))
(assert (animal (type cat)))
(assert (animal (type turtle)))
