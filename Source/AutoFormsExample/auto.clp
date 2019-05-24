;--------------------------------------------------
;		Coenraad Human - 28410629
;   	Vehicle Diagnosis Expert System
;--------------------------------------------------

;--------------------------------------------------
; GUI related variables, deftemplates, defunctions 
;--------------------------------------------------
   
(defglobal ?*target* = gui) 

(deftemplate MAIN::text-for-id
   (slot id)
   (slot text))

(deftemplate UI-state
   (slot id (default-dynamic (gensym*)))
   (slot display)
   (slot relation-asserted (default none))
   (slot response (default none))
   (multislot valid-answers)
   (multislot display-answers)
   (slot state (default middle)))

(deffunction MAIN::find-text-for-id (?id)
   (bind ?fact
      (find-fact ((?f text-for-id))
                  (eq ?f:id ?id)))
   (if ?fact
      then
      (fact-slot-value (nth$ 1 ?fact) text)
      else
      ?id))
      
(deffunction MAIN::translate-av (?values)
   (bind ?result (create$))
   (progn$ (?v ?values)
      (bind ?nv
         (find-text-for-id ?v))
      (bind ?result (create$ ?result ?nv)))
   ?result)

(deffunction MAIN::replace-spaces (?str)
   (bind ?len (str-length ?str))
   (bind ?i (str-index " " ?str))
   (while (neq ?i FALSE)
      (bind ?str (str-cat (sub-string 1 (- ?i 1) ?str) "-" (sub-string (+ ?i 1) ?len ?str)))
      (bind ?i (str-index " " ?str)))
   ?str)

(deffunction MAIN::sym-cat-multifield (?values)
   (bind ?rv (create$))
   (progn$ (?v ?values)
      (bind ?rv (create$ ?rv (sym-cat (replace-spaces ?v)))))
   ?rv)

(deffunction MAIN::multifield-to-delimited-string (?mv ?delimiter)
   (bind ?rv "")
   (bind ?first TRUE)
   (progn$ (?v ?mv)
      (if ?first
         then
         (bind ?first FALSE)
         (bind ?rv (str-cat ?v))
         else
         (bind ?rv (str-cat ?rv ?delimiter ?v))))
   ?rv)

(defmethod handle-state ((?state SYMBOL (eq ?state greeting))
                         (?target SYMBOL (eq ?target gui))
                         (?message LEXEME)
                         (?relation-asserted SYMBOL)
                         (?valid-answers MULTIFIELD))
   (assert (UI-state (display ?message)
                     (relation-asserted greeting)
                     (state ?state)
                     (valid-answers yes)
                     (display-answers yes)))

;--------------------------------------------------
; Clears/Ensures there is file for new session output
;--------------------------------------------------
   (open "data.txt" data "w")
   (printout data "" crlf)
   (close data)
;--------------------------------------------------

   (halt))

(defmethod handle-state ((?state SYMBOL (eq ?state interview))
                         (?target SYMBOL (eq ?target gui))
                         (?message LEXEME)
                         (?relation-asserted SYMBOL)
                         (?response PRIMITIVE)
                         (?valid-answers MULTIFIELD)
                         (?display-answers MULTIFIELD))
   (assert (UI-state (display ?message)
                     (relation-asserted ?relation-asserted)
                     (state ?state)
                     (response ?response)
                     (valid-answers ?valid-answers)
                     (display-answers ?display-answers)))
   
;--------------------------------------------------
; Writes questions asked for session output
;--------------------------------------------------
   (open "data.txt" data "a")
   (printout data ?message crlf)
   (close data)
;--------------------------------------------------
   
   (halt))
 
(defmethod handle-state ((?state SYMBOL (eq ?state conclusion))
                         (?target SYMBOL (eq ?target gui))
                         (?display LEXEME))
   (assert (UI-state (display ?display)
                     (state ?state)
                     (valid-answers)
                     (display-answers)))
   (assert (conclusion))

;--------------------------------------------------
; Writes conclusion for session output
;--------------------------------------------------
   (open "data.txt" data "a")
   (printout data "----------" crlf)
   (printout data "CONCLUSION" crlf)
   (printout data "----------" crlf)
   (printout data ?display crlf)
   (close data)
;--------------------------------------------------

   (halt))

;--------------------------------------------------
; Greeting message
;--------------------------------------------------

(defrule system-banner ""
  (not (greeting yes))
  =>
  (handle-state greeting
                ?*target*
                (find-text-for-id WelcomeMessage)
                greeting
                (create$)))
  
;--------------------------------------------------
; Determine decision branch (initial question)
;--------------------------------------------------

(defrule question_problem ""
   (greeting yes)
   (not (problem ?))
   (not (conclusion))
   =>
   (bind ?answers (create$ engine tyres suspension headlight brake))
   (handle-state interview
                 ?*target*
                 (find-text-for-id typeProblem)
                 problem
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

;--------------------------------------------------
; Engine branch
; (Questions rules are followed by repair rules)
;--------------------------------------------------

; start
(defrule question_engine_0 ""
   (problem engine)
   (not (engine_q0 ?))
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionStart)
                 engine_q0
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; run properly
(defrule question_engine_2 ""
   (problem engine)
   (engine_q0 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionRun)
                 engine_q2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))		 

; rotate
(defrule question_engine_1 ""
   (problem engine)
   (engine_q0 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionRotate)
                 engine_q1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; sluggish
(defrule question_engine_2-1 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionSluggish)
                 engine_q2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; misfire
(defrule question_engine_2-2 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionMisfire)
                 engine_q2-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; knocking
(defrule question_engine_2-3 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionKnock)
                 engine_q2-3
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; output
(defrule question_engine_2-4 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 no)
   (engine_q2-3 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionOutput)
                 engine_q2-4
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; petrol
(defrule question_engine_1-2 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionPetrol)
                 engine_q1-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; battery
(defrule question_engine_1-1 ""
   (problem engine)
   (engine_q1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionBattery)
                 engine_q1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; surface points 1
(defrule question_engine_1-2-1 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 yes)
   (engine_q1-2 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ normal burned contaminated))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionPoints)
                 engine_q1-2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; surface points 2		 
(defrule question_engine_2-5 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 no)
   (engine_q2-3 no)
   (engine_q2-4 yes)
   (not (engine_q1-2-1 ?))
   (not (conclusion ?))
   =>
   (bind ?answers (create$ normal burned contaminated))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionPoints)
                 engine_q1-2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; conductivity ignition coils
(defrule question_engine_1-1-1 ""
   (problem engine)
   (engine_q0 no)      
   (engine_q1 no)
   (engine_q1-1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id engineQuestionCoil)
                 engine_q1-1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; run normal
(defrule repair_engine_2 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id noRepair)))

; sluggish
(defrule repair_engine_2-1 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairSluggish)))

; misfire
(defrule repair_engine_2-2 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairMisfire))) 

; knocking
(defrule repair_engine_2-3 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 no)
   (engine_q2-3 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairKnock)))
   
; output no
(defrule repair_engine_2-4 ""
   (problem engine)
   (engine_q0 yes)
   (engine_q2 no)
   (engine_q2-1 no)
   (engine_q2-2 no)
   (engine_q2-3 no)
   (engine_q2-4 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic)))

; petrol
(defrule repair_engine_1-2 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 yes)
   (engine_q1-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairPetrol)))

; battery
(defrule repair_engine_1-1 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 no)
   (engine_q1-1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairBattery)))

; surface points
(defrule repair_engine_1-2-1-1 ""
   (problem engine)
   (engine_q1-2-1 burned)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairPoints_Burned)))


(defrule repair_engine_1-2-1-2 ""
   (problem engine)
   (engine_q1-2-1 contaminated)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairPoints_Contaminated)))
   
(defrule repair_engine_1-2-1-3 ""
   (problem engine)
   (engine_q1-2-1 normal)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic)))

; conductivity
(defrule repair_engine_1-1-1-2 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 no)
   (engine_q1-1 yes)
   (engine_q1-1-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairCoil_Yes)))

(defrule repair_engine_1-1-1-1 ""
   (problem engine)
   (engine_q0 no)
   (engine_q1 no)
   (engine_q1-1 yes)
   (engine_q1-1-1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id engineRepairCoil_No)))
	 
;--------------------------------------------------
; Tyres branch
; (Questions rules are followed by repair rules)
;--------------------------------------------------

; inflated
(defrule question_tyre_0 ""
   (problem tyres)
   (not (tyre-inflated ?))
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q0)
                 tyre_q0
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; puncture
(defrule question_tyre_1 ""
   (problem tyres)
   (tyre_q0 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q1)
                 tyre_q1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; puncture no
(defrule repair_tyre_1-1 ""
   (problem tyres)
   (tyre_q0 no)
   (tyre_q1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r1-1)))

; puncture yes  
(defrule repair_tyre_1-2 ""
   (problem tyres)
   (tyre_q0 no)
   (tyre_q1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r1-2)))   

; allignment
(defrule question_tyre_2 ""
   (problem tyres)
   (tyre_q0 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q2)
                 tyre_q2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_tyre_2 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r2)))

; movement
(defrule question_tyre_2-1 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q2-1)
                 tyre_q2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_tyre_2-1 ""
   (problem tyres)
   (tyre_q2-1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r2-1)))

; vibration
(defrule question_tyre_2-2 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 yes)
   (tyre_q2-1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q2-2)
                 tyre_q2-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

; normal
(defrule repair_tyre_2-2 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 yes)
   (tyre_q2-1 yes)
   (tyre_q2-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id noRepair))) ; no repair

; mud
(defrule question_tyre_2-3 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 yes)
   (tyre_q2-1 yes)
   (tyre_q2-2 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q2-3)
                 tyre_q2-3
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_tyre_2-3 ""
   (problem tyres)
   (tyre_q2-3 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r2-3)))

; noise
(defrule question_tyre_2-4 ""
   (problem tyres)
   (tyre_q0 yes)
   (tyre_q2 yes)
   (tyre_q2-1 yes)
   (tyre_q2-2 yes)
   (tyre_q2-3 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_tyres_q2-4)
                 tyre_q2-4
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_tyre_2-4-1 ""
   (problem tyres)
   (tyre_q2-4 no)
   (not (repair ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic))) ; mechanic

(defrule repair_tyre_2-4-2 ""
   (problem tyres)
   (tyre_q2-4 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_tyres_r2-4-2)))

;--------------------------------------------------
; Headlight branch
;--------------------------------------------------

(defrule question_headlight_0 ""
   (problem headlight)
   (not (headlight_q0 ?))
   (not (conclusion ?))
   =>
   (bind ?answers (create$ fluctuating dim always_off))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_headlight_q0)
                 headlight_q0
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_headlight_0 ""
   (problem headlight)
   (headlight_q0 always_off)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r0)))
   
(defrule question_headlight_1 ""
   (problem headlight)
   (headlight_q0 fluctuating)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_headlight_q1)
                 headlight_q1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_headlight_1-1 ""
   (problem headlight)
   (headlight_q0 fluctuating)
   (headlight_q1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r1-1)))  

(defrule repair_headlight_1-2 ""
   (problem headlight)
   (headlight_q0 fluctuating)
   (headlight_q1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r1-2)))
   
(defrule question_headlight_2 ""
   (problem headlight)
   (headlight_q0 dim)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_headlight_q2)
                 headlight_q2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_headlight_2 ""
   (problem headlight)
   (headlight_q0 dim)
   (headlight_q2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r2)))

(defrule question_headlight_2-1 ""
   (problem headlight)
   (headlight_q0 dim)
   (headlight_q2 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_headlight_q2-1)
                 headlight_q2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_headlight_2-1-1 ""
   (problem headlight)
   (headlight_q0 dim)
   (headlight_q2 no)
   (headlight_q2-1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r2-1-1)))

(defrule repair_headlight_2-1-2 ""
   (problem headlight)
   (headlight_q0 dim)
   (headlight_q2 no)
   (headlight_q2-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_headlight_r2-1-2)))
   
;--------------------------------------------------
; Brakes branch
;--------------------------------------------------

(defrule question_brake_0 ""
   (problem brake)
   (not (brake_q0 ?))
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q0)
                 brake_q0
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule question_brake_1 ""
   (problem brake)
   (brake_q0 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q1)
                 brake_q1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule question_brake_2 ""
   (problem brake)
   (brake_q0 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q2)
                 brake_q2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_brake_2-1 ""
   (problem brake)
   (brake_q0 yes)
   (brake_q2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r2-1)))

(defrule repair_brake_2-2 ""
   (problem brake)
   (brake_q0 yes)
   (brake_q2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r2-2)))

(defrule question_brake_1-1 ""
   (problem brake)
   (brake_q0 no)
   (brake_q1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q1-1)
                 brake_q1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_brake_1-1 ""
   (problem brake)
   (brake_q1-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r1-1))) 

(defrule question_brake_1-2 ""
   (problem brake)
   (brake_q0 no)
   (brake_q1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q1-2)
                 brake_q1-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_brake_1-2-1 ""
   (problem brake)
   (brake_q1 yes)
   (brake_q1-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r1-2-1)))

(defrule repair_brake_1-2-2 ""
   (problem brake)
   (brake_q1 yes)
   (brake_q1-2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r1-2-2)))

(defrule question_brake_1-1-1 ""
   (problem brake)
   (brake_q0 no)
   (brake_q1 no)
   (brake_q1-1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q1-1-1)
                 brake_q1-1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_brake_1-1-1 ""
   (problem brake)
   (brake_q0 no)
   (brake_q1 no)
   (brake_q1-1 no)
   (brake_q1-1-1 no)
   (not (repair ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic)))  ; mechanic
   
(defrule question_brake_1-1-2 ""
   (problem brake)
   (brake_q0 no)
   (brake_q1 no)
   (brake_q1-1 no)
   (brake_q1-1-1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_brake_q1-1-2)
                 brake_q1-1-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_brake_1-1-2-1 ""
   (problem brake)
   (brake_q1-1-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r1-1-2-1)))

(defrule repair_brake_1-1-2-2 ""
   (problem brake)
   (brake_q1-1-2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_brake_r1-1-2-2)))  
   
;--------------------------------------------------
; Suspension and Steering branch
;--------------------------------------------------

(defrule question_ss_0 ""
   (problem suspension)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q0)
                 ss_q0
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule question_ss_2 ""
   (problem suspension)
   (ss_q0 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q2)
                 ss_q2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_2-1 ""
   (problem suspension)
   (ss_q2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r2-1)))

(defrule repair_ss_2-2 ""
   (problem suspension)
   (ss_q2 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r2-2)))

(defrule question_ss_1 ""
   (problem suspension)
   (ss_q0 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1)
                 ss_q1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule question_ss_1-2 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-2)
                 ss_q1-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_1-2 ""
   (problem suspension)
   (or (ss_q1-2 yes)
       (ss_q1-1-2 yes))
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-2)))

(defrule question_ss_1-2-1 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 yes)
   (ss_q1-2 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-2-1)
                 ss_q1-2-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_1-2-1-1 ""
   (problem suspension)
   (ss_q1-2-1 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-2-1-1)))

(defrule repair_ss_1-2-1-2 ""
   (problem suspension)
   (ss_q1-2-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-2-1-2)))

(defrule question_ss_1-1 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-1)
                 ss_q1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule question_ss_1-1-2 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 no)
   (ss_q1-1 yes)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-1-2)
                 ss_q1-1-2
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_1-1-2-1 ""
   (problem suspension)
   (ss_q1-1-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-1-2-1)))

(defrule repair_ss_1-1-2-2 ""
   (problem suspension)
   (ss_q1-1-2 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic)))

(defrule question_ss_1-1-1 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 no)
   (ss_q1-1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-1-1)
                 ss_q1-1-1
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_1-1-1 ""
   (problem suspension)
   (ss_q1-1-1 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-1-1)))

(defrule question_ss_1-1-3 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 no)
   (ss_q1-1 no)
   (ss_q1-1-1 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-1-3)
                 ss_q1-1-3
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))


(defrule repair_ss_1-1-3 ""
   (problem suspension)
   (ss_q1-1-3 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-1-3)))

(defrule question_ss_1-1-4 ""
   (problem suspension)
   (ss_q0 no)
   (ss_q1 no)
   (ss_q1-1 no)
   (ss_q1-1-1 no)
   (ss_q1-1-3 no)
   (not (conclusion ?))
   =>
   (bind ?answers (create$ no yes))
   (handle-state interview
                 ?*target*
                 (find-text-for-id text_ss_q1-1-4)
                 ss_q1-1-4
                 (nth$ 1 ?answers)
                 ?answers
                 (translate-av ?answers)))

(defrule repair_ss_1-1-4-1 ""
   (problem suspension)
   (ss_q1-1-4 no)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id mechanic)))

(defrule repair_ss_1-1-4-2 ""
   (problem suspension)
   (ss_q1-1-4 yes)
   (not (conclusion ?))
   =>
   (handle-state conclusion ?*target* (find-text-for-id text_ss_r1-1-4-2)))