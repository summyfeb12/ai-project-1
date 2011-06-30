(printout t "Are your processes well established? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Are your processes self regenerating?" crlf))
(if (eq (lowcase ?x) "n") then (printout t "Are your processes defined and documented?" crlf))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (processes AT-LEAST self-regenerating)))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (processes AT-LEAST well-established)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (processes AT-LEAST defined-and-documented)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (processes AT-LEAST evolving)))

(printout t "Are your operating procedures institutionalized? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y" ) then (printout t "Are your operating procedures self adjusting?" crlf))
(if (eq (lowcase ?x) "n" ) then (printout t "Are your operating procedures stabilizing?" crlf))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (operating-procedures AT-LEAST self-adjusting)))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (operating-procedures AT-LEAST institutionalized)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (operating-procedures AT-LEAST stabilizing)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (operating-procedures AT-LEAST being-defined)))

(printout t "Is information security data available? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is your data in a standard repository?" crlf))
(if (eq (lowcase ?x) "n") then (printout t "Do you have means to collect data?" crlf))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (data-availability AT-LEAST in-standard-repository)))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (data-availability AT-LEAST available)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (data-availability AT-LEAST can-be-collected)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (data-availability AT-LEAST non-existent)))

(printout t "Is the collection of data difficult? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is collecting data VERY difficult?" crlf))
(if (eq (lowcase ?x) "n") then (printout t "Is your data collection integral to business processes?" crlf))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (collection-difficulty AT-LEAST high)))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (collection-difficulty AT-LEAST medium)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (collection-difficulty AT-LEAST integral)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (collection-difficulty AT-LEAST low)))

(printout t "Is your data collection automation high? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is your data collection collection full?" crlf))
(if (eq (lowcase ?x) "n") then (printout t "Is your data collection automation low?" crlf))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (collection-automation AT-LEAST full)))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (collection-automation AT-LEAST high)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (collection-automation AT-LEAST low)))
(if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (collection-automation AT-LEAST medium)))


;;; Tests
; Testing this module requires either piping a file in as the console input, or entering the values manually.
; Regardless of the method chosen, test the following values:
; Test 1: y y y y y y y y y y
; Test 2: y n y y y y y y y y
; Test 3: y n y n n n n y y y
; Test 4: n n n n n n y y n n