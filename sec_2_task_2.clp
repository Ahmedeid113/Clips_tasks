(deftemplate rect
  (slot height)
  (slot width))

(defrule perimeter
  (rect (height ?h) (width ?w))
  =>
  (bind ?p (* 2 (+ ?h ?w)))  ;; حساب المحيط: 2 * (الطول + العرض)
  (printout t "The perimeter of the rectangle is: " ?p crlf))
(assert (rect (height 5) (width 3)))
