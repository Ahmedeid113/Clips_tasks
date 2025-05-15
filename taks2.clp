(deftemplate number
  (slot value))

(defrule pos_int
  ?n <- (number (value ?v&:(and (integerp ?v) (> ?v 0))))
  =>
  (printout t "The number is a positive integer" crlf))

(assert (number (value 5)))
(assert (number (value -3)))
(assert (number (value 4.2)))
