(deftemplate number
  (slot value))

(defrule Odd_number
  (number (value ?v&:(and (integerp ?v) (= (mod ?v 2) 1))))
  =>
  (printout t "The number is odd" crlf))
(assert (number (value 7)))
(assert (number (value 4)))
