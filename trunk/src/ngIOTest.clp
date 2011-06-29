(bind ?x (read t))
(if (eq (lowcase ?x) "yes") then (assert (bro-team)))

(defrule broTeam
(bro-team) => (printout t "team of bros"))
(run)