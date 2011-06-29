(batch getinput.clp)
(batch fig31rules.clp)
(defrule printstuff
(program ?x) => (printout t "Your program is at: " ?x crlf))
(run)