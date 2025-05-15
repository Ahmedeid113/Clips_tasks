(deftemplate person
  (slot hair-color))

(defrule check_color
  (person (hair-color ?c&~(or black brown)))
  =>
  (printout t "The person's hair color is " ?c "." crlf))
(assert (person (hair-color blonde)))
(assert (person (hair-color black)))
(assert (person (hair-color red)))
