(deftemplate person
  (multislot name
    (type SYMBOL STRING)      ; يسمح بالرموز أو السلاسل
    (cardinality 2 4))        ; يجب أن يحتوي على 2 إلى 4 عناصر

  (slot age
    (type INTEGER)            ; يجب أن يكون عددًا صحيحًا
    (range 20 25)))           ; ضمن النطاق [20, 25]
(assert (person (name "John" "Doe") (age 22)))
