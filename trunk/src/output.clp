(batch recommendations.clp)

(defrule rulestage1-1
(program stage1)
=> (printout t ?stage1msg1 crlf) (assert (first-printed)))

(defrule rulestage1-2
(first-printed)
(and (program stage1) (not (processes AT-LEAST defined-and-documented)))
=> (printout t ?stage1msg2 crlf))

(defrule rulestage1-3
(first-printed)
(and (program stage1) (not (operating-procedures AT-LEAST stabilizing)))
=> (printout t ?stage1msg3 crlf))

(defrule rulestage1-4
(first-printed)
(and (program stage1) (not (data-availability AT-LEAST can-be-collected)))
=> (printout t ?stage1msg4 crlf))

(defrule rulestage1-5
(first-printed)
(and (program stage1) (not (collection-difficulty AT-LEAST medium)))
=> (printout t ?stage1msg5 crlf))

(defrule rulestage1-6
(first-printed)
(and (program stage1) (not (collection-automation AT-LEAST medium)))
=> (printout t ?stage1msg6 crlf))

(defrule rulestage2-1
(program stage2)
=> (printout t ?stage2msg1 crlf) (assert (first-printed)))

(defrule rulestage2-2
(first-printed)
(and (program stage2) (not (processes AT-LEAST well-established)))
=> (printout t ?stage2msg2 crlf))

(defrule rulestage2-3
(first-printed)
(and (program stage2) (not (operating-procedures AT-LEAST institutionalized)))
=> (printout t ?stage2msg3 crlf))

(defrule rulestage2-4
(first-printed)
(and (program stage2) (not (data-availability AT-LEAST available)))
=> (printout t ?stage2msg4 crlf))

(defrule rulestage2-5
(first-printed)
(and (program stage2) (not (collection-difficulty AT-LEAST low)))
=> (printout t ?stage2msg5 crlf))

(defrule rulestage2-6
(first-printed)
(and (program stage2) (not (collection-automation AT-LEAST high)))
=> (printout t ?stage2msg6 crlf))

(defrule rulestage3-1
(program stage3)
=> (printout t ?stage3msg1 crlf) (assert (first-printed)))

(defrule rulestage3-2
(first-printed)
(and (program stage3) (not (processes AT-LEAST self-regenerating)))
=> (printout t ?stage3msg2 crlf))

(defrule rulestage3-3
(first-printed)
(and (program stage3) (not (operating-procedures AT-LEAST self-adjusting)))
=> (printout t ?stage3msg3 crlf))

(defrule rulestage3-4
(first-printed)
(and (program stage3) (not (data-availability AT-LEAST in-standard-repository)))
=> (printout t ?stage3msg4 crlf))

(defrule rulestage3-5
(first-printed)
(and (program stage3) (not (collection-difficulty AT-LEAST integral)))
=> (printout t ?stage3msg5 crlf))

(defrule rulestage3-6
(first-printed)
(and (program stage3) (not (collection-automation AT-LEAST full)))
=> (printout t ?stage3msg6 crlf))