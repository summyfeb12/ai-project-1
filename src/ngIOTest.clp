(bind ?x (read t))

(if (eq (lowcase ?x) "yes") then (assert (bro-team)))

(defrule broTeam
(bro-team) 
=> (printout t "team of bros"))

(run)

(printout t "Are your process well established? y/n" crlf)
(bind ?x (read t))
(if(eq ( lowcase ?x) "y" ) then printout( "Are your process self regenerating?" ))
(if(eq ( lowcase ?x) "n" ) then printout( "Are your processes defined and document?" ))
(bind ?y (read t))
(if(eq ( lowcase ?x) "y" AND ( lowcase ?y ) "y" ) than printout("Are your operating procedures stabilizing?" ))
