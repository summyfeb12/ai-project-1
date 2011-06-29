(defrule stage4
(processes AT-LEAST self-regenerating)
(operating-procedures AT-LEAST self-adjusting)
(data-availability AT-LEAST in-standard-repository)
(collection-difficulty AT-LEAST integral)
(collection-automation AT-LEAST full)
=> (assert (program stage4)))

(defrule stage3
(processes AT-LEAST well-established)
(operating-procedures AT-LEAST institutionalized)
(data-availability AT-LEAST available)
(collection-difficulty AT-LEAST low)
(collection-automation AT-LEAST high)
(not (program stage4))
=> (assert (program stage3)))

(defrule stage2
(processes AT-LEAST defined-and-documented)
(operating-procedures AT-LEAST stabilizing)
(data-availability AT-LEAST can-be-collected)
(collection-difficulty AT-LEAST medium)
(collection-automation AT-LEAST medium)
(not (or (program stage3) (program stage4)))
=> (assert (program stage2)))

(defrule stage1
(processes AT-LEAST evolving)
(operating-procedures AT-LEAST being-defined)
(data-availability AT-LEAST non-existent)
(collection-difficulty AT-LEAST high)
(collection-automation AT-LEAST low)
(not (or (program stage2) (program stage3) (program stage4)))
=> (assert (program stage1)))

(defrule proc1 (processes AT-LEAST self-regenerating)      => (assert (processes AT-LEAST well-established)))
(defrule proc2 (processes AT-LEAST well-established)       => (assert (processes AT-LEAST defined-and-documented)))
(defrule proc3 (processes AT-LEAST defined-and-documented) => (assert (processes AT-LEAST evolving)))

(defrule op1 (operating-procedures AT-LEAST self-adjusting)    => (assert (operating-procedures AT-LEAST institutionalized)))
(defrule op2 (operating-procedures AT-LEAST institutionalized) => (assert (operating-procedures AT-LEAST stabilizing)))
(defrule op3 (operating-procedures AT-LEAST stabilizing)       => (assert (operating-procedures AT-LEAST being-defined)))


(defrule da1 (data-availability AT-LEAST in-standard-repository) => (assert (data-availability AT-LEAST available)))
(defrule da2 (data-availability AT-LEAST available)              => (assert (data-availability AT-LEAST can-be-collected)))
(defrule da3 (data-availability AT-LEAST can-be-collected)       => (assert (data-availability AT-LEAST non-existent))) 

(defrule cd1 (collection-difficulty AT-LEAST integral) => (assert (collection-difficulty AT-LEAST low)))
(defrule cd2 (collection-difficulty AT-LEAST low)      => (assert (collection-difficulty AT-LEAST medium)))
(defrule cd3 (collection-difficulty AT-LEAST medium)   => (assert (collection-difficulty AT-LEAST high)))

(defrule ca1 (collection-automation AT-LEAST full)   => (assert (collection-automation AT-LEAST high)))
(defrule ca2 (collection-automation AT-LEAST high)   => (assert (collection-automation AT-LEAST medium)))
(defrule ca3 (collection-automation AT-LEAST medium) => (assert (collection-automation AT-LEAST low)))