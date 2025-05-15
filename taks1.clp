(deftemplate animal
  (slot type))

(defrule check_animal
  ?a <- (animal (type ?t&~dog)) 
  =>
  (printout t "This animal is a " ?t "." crlf))

(assert (animal (type cat)))