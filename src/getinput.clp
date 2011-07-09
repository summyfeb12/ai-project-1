(printout t "Are your processes well established? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Are your processes self regenerating?" crlf)
else (if (eq (lowcase ?x) "n") then (printout t "Are your processes defined and documented?" crlf)
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (processes AT-LEAST self-regenerating))
else (if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (processes AT-LEAST well-established))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (processes AT-LEAST defined-and-documented))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (processes AT-LEAST evolving))
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))))

(printout t "Are your operating procedures institutionalized? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y" ) then (printout t "Are your operating procedures self adjusting?" crlf)
else (if (eq (lowcase ?x) "n" ) then (printout t "Are your operating procedures stabilizing?" crlf)
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (operating-procedures AT-LEAST self-adjusting))
else (if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (operating-procedures AT-LEAST institutionalized))
else (if (nd (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (operating-procedures AT-LEAST stabilizing))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (operating-procedures AT-LEAST being-defined))
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))))


(printout t "Is information security data available? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is your data in a standard repository?" crlf)
else (if (eq (lowcase ?x) "n") then (printout t "Do you have means to collect data?" crlf)
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (data-availability AT-LEAST in-standard-repository))
else (if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (data-availability AT-LEAST available))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (data-availability AT-LEAST can-be-collected))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (data-availability AT-LEAST non-existent))
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))))

(printout t "Is the collection of data difficult? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is collecting data VERY difficult?" crlf)
else (if (eq (lowcase ?x) "n") then (printout t "Is your data collection integral to business processes?" crlf)
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (collection-difficulty AT-LEAST high))
else (if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (collection-difficulty AT-LEAST medium))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (collection-difficulty AT-LEAST integral))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (collection-difficulty AT-LEAST low))
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))))

(printout t "Is your data collection automation high? y/n" crlf)
(bind ?x (read t))
(if (eq (lowcase ?x) "y") then (printout t "Is your data collection collection full?" crlf)
else (if (eq (lowcase ?x) "n") then (printout t "Is your data collection automation low?" crlf)
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))
(bind ?y (read t))
(if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "y")) then (assert (collection-automation AT-LEAST full))
else (if (and (eq (lowcase ?x) "y") (eq (lowcase ?y) "n")) then (assert (collection-automation AT-LEAST high))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "y")) then (assert (collection-automation AT-LEAST low))
else (if (and (eq (lowcase ?x) "n") (eq (lowcase ?y) "n")) then (assert (collection-automation AT-LEAST medium))
else (printout t "Please enter 'y' or 'n'.  You will need to restart the program.") (exit)))))

;;; Tests
; Testing this module requires either piping a file in as the console input, or entering the values manually.
; Regardless of the method chosen, test the following values:
; Test 1: y y y y y y y y y y
; Test 2: y n y y y y y y y y
; Test 3: y n y n n n n y y y
; Test 4: n n n n n n y y n n