(printout t "Do you have operating procedures?" crlf)
(printout t "?" crlf)
(bind ?operating-procedures (read t))
(printout t ?operating-procedures )


(defrule stage1
(processes AT-LEAST evolving)
(not (or (program stage2) (program stage3) (program stage4)))
(operating-procedures AT-LEAST being-defined)
(data-availability AT-LEAST non-existent)
(collection-difficulty AT-LEAST high)
(collection-automation AT-LEAST low)
=> (assert (program stage1)))

(defrule stage2
(not (or (program stage3) (program stage4)))
(processes AT-LEAST defined-and-documented)
(operating-procedures AT-LEAST stabilizing)
(data-availability AT-LEAST can-be-collected)
(collection-difficulty AT-LEAST medium)
(collection-automation AT-LEAST medium)
=> (assert (program stage2)))

(defrule stage3
(not (program stage4))
(processes AT-LEAST well-established)
(operating-procedures AT-LEAST institutionalized)
(data-availability AT-LEAST available)
(collection-difficulty AT-LEAST low)
(collection-automation AT-LEAST high)
=> (assert (program stage3)))

(defrule stage4
(processes AT-LEAST self-regenerating)
(operating-procedures AT-LEAST self-adjusting)
(data-availability AT-LEAST in-standard-repository)
(collection-difficulty AT-LEAST integral-to-business-processes)
(collection-automation AT-LEAST full)
=> (assert (program stage4)))