(assert (bro))
(defrule brorule 
(bro) => (printout t "test") (printout t "testing"))
(run)