;---------------------------------------------
; deffacts, modular text for system - english
;---------------------------------------------
(deffacts text-for-id

;------------------
; welcome messagge
;------------------

(text-for-id 
   (id WelcomeMessage)
   (text "Welcome to the Vehicle Diagnosis Expert System."))

;----------------
; first question
;----------------

(text-for-id 
   (id typeProblem)
   (text "Select area of vehicle where you are currently experiencing problems with:")) 
   
;---------------
; valid answers
;---------------

(text-for-id 
   (id AutoDemo)
   (text "Vehicle Diagnosis System - 28410629"))
   
(text-for-id 
   (id Next)
   (text "Next"))
   
(text-for-id 
   (id Prev)
   (text "Prev"))
   
(text-for-id 
   (id Restart)
   (text "Restart"))  

(text-for-id 
   (id no)
   (text "no"))
   
(text-for-id 
   (id yes)
   (text "yes"))

(text-for-id 
   (id always)
   (text "always"))
   
(text-for-id 
   (id not_always)
   (text "not_always"))

(text-for-id 
   (id fluctuating)
   (text "fluctuating"))
   
(text-for-id 
   (id dim)
   (text "dim"))
   
(text-for-id 
   (id always_off)
   (text "always Off"))
   
(text-for-id 
   (id engine)
   (text "engine"))
   
(text-for-id 
   (id tyres)
   (text "tyres and Wheels"))
   
(text-for-id 
   (id suspension)
   (text "suspension and Steering"))
   
(text-for-id 
   (id headlight)
   (text "headlights"))
   
(text-for-id 
   (id brake)
   (text "brakes")) 

(text-for-id 
   (id normal)
   (text "normal"))
   
(text-for-id 
   (id burned)
   (text "burned"))
   
(text-for-id 
   (id contaminated)
   (text "contaminated")) 

;------------------
; general repairs
;------------------
   
(text-for-id 
   (id noRepair)
   (text "Vehicle does not require a repair."))

(text-for-id 
   (id mechanic)
   (text "Can't determine fault, please take vehicle to mechanic for further diagnosis."))
   
;------------------
; engine questions
;------------------

(text-for-id 
   (id engineQuestionStart)
   (text "Does the engine start properly (yes/no)? "))

(text-for-id 
   (id engineQuestionRun)
   (text "Does the vehicle run normally (yes/no)? ")) 

(text-for-id 
   (id engineQuestionRotate)
   (text "Are there any parts rotating (yes/no)? ")) 

(text-for-id 
   (id engineQuestionSluggish)
   (text "Does the vehicle struggle to accelerate or sputter and stall whilst driving (yes/no)? ")) 
   
(text-for-id 
   (id engineQuestionMisfire)
   (text "Does the vehicle engine run rough, jerk, or buck (yes/no)? "))  
   
(text-for-id 
   (id engineQuestionKnock)
   (text "Is the engine making pinging or knocking sounds (yes/no)? ")) 
   
(text-for-id 
   (id engineQuestionOutput)
   (text "Is the engine's power output low (yes/no)? ")) 
   
(text-for-id 
   (id engineQuestionPetrol)
   (text "Does the vehicle have petrol (yes/no)? ")) 
   
(text-for-id 
   (id engineQuestionBattery)
   (text "Is the battery's voltage more than 12V (yes/no)? ")) 

(text-for-id 
   (id engineQuestionPoints)
   (text "What is the surface state of the ignition points (normal/burned/contaminated)? ")) 
   
(text-for-id 
   (id engineQuestionCoil)
   (text "Is there conductivity between the primary winding and secondary winding of the ignition coil (yes/no)? "))  

;----------------
; engine repairs
;----------------

(text-for-id 
   (id engineRepairSluggish)
   (text "Suggested repair is that the vehicle fuel line should be cleaned to regain functionality."))

(text-for-id 
   (id engineRepairMisfire)
   (text "The car is misfiring and should be taken to a mechanic to determine the type of misfire and repair to regain functionality."))

(text-for-id 
   (id engineRepairKnock)
   (text "Suggested repair is to replace the oil filter, thereafter refill the oil with fuel-injection cleaner."))

(text-for-id 
   (id engineRepairPetrol)
   (text "Please fill it up with petrol to regain functionality."))

(text-for-id 
   (id engineRepairBattery)
   (text "The battery is not charged, please charge it to regain functionality."))

(text-for-id 
   (id engineRepairPoints_Burned)
   (text "Suggested repair is to replace the burned points."))

(text-for-id 
   (id engineRepairPoints_Contaminated)
   (text "Suggested repair is to clean the contaminated points."))

(text-for-id 
   (id engineRepairCoil_Yes)
   (text "Suggested repair is to replace the distributor lead wire connected to the ignition coil."))

(text-for-id 
   (id engineRepairCoil_No)
   (text "Suggested repair is to replace the ignition coil."))
   
;-----------------
; tyres questions
;-----------------

(text-for-id 
   (id text_tyres_q0)
   (text "Is the tyre/s inflated?")) 
   
(text-for-id 
   (id text_tyres_q1)
   (text "Is there any signs of a puncture?")) 

(text-for-id 
   (id text_tyres_q2)
   (text "Is the car pulling to a side whilst driving?")) 
   
(text-for-id 
   (id text_tyres_q2-1)
   (text "Is the wheel/s moving freely?"))  
   
(text-for-id 
   (id text_tyres_q2-2)
   (text "Is the wheel/s vibrating whilst driving on a even surface?")) 
   
(text-for-id 
   (id text_tyres_q2-3)
   (text "Is there any mud or dirt present in rim/s of the faulty wheel/s?")) 
   
(text-for-id 
   (id text_tyres_q2-4)
   (text "Is there any noise coming from the wheel bearings of the faulty wheel/s?")) 

;---------------------------------
; repairs tyres
;---------------------------------

(text-for-id 
   (id text_tyres_r1-2)
   (text "Suggested repair is to fix the puncture and re-inflate the tyre/s."))

(text-for-id 
   (id text_tyres_r1-1)
   (text "Suggested repair is to re-inflate the tyre/s."))

(text-for-id 
   (id text_tyres_r2)
   (text "Suggested repair is to get a wheel alignment done."))
   
(text-for-id 
   (id text_tyres_r2-1)
   (text "Suggested repair is to apply oil to the axle of the faulty wheel/s."))

;2-2 no repair

(text-for-id 
   (id text_tyres_r2-3)
   (text "Suggested repair is to clean the mud/dirt from the rim."))

; 2-4-1 mechanic

(text-for-id 
   (id text_tyres_r2-4-2)
   (text "Suggested repair is to change all loose, worn or damaged wheel bearings."))

;---------------------
; headlight questions
;---------------------

(text-for-id 
   (id text_headlight_q0)
   (text "What is the state of the headlight?"))  
   
(text-for-id 
   (id text_headlight_q1)
   (text "After checking the connections to the headlight, are they tight?")) 
   
(text-for-id 
   (id text_headlight_q2)
   (text "Is the headlight always dim or only when electronic device is turned on in the vehicle?")) 
   
(text-for-id 
   (id text_headlight_q2-1)
   (text "After checking the alternator, is it aged?")) 

;---------------------------------
; repairs headlights
;---------------------------------

(text-for-id 
   (id text_headlight_r1-2)
   (text "Battery is most likely the reason behind the fault. It is suggested that the battery's contact points should be cleaned, otherwise if the problem persists the battery should be replaced."))

(text-for-id 
   (id text_headlight_r1-1)
   (text "Suggested repair is that all connections of the headlight should be tightend."))

(text-for-id 
   (id text_headlight_r2)
   (text "Suggested repair is to replace dim headlight's bulb."))
   
(text-for-id 
   (id text_headlight_r2-1-2)
   (text "Suggested repair is to replace alternator with one that has a higher amperage."))

(text-for-id 
   (id text_headlight_r2-1-1)
   (text "Suggested repair is to replace the alternator with same model or see if it can be repaired."))

(text-for-id 
   (id text_headlight_r0)
   (text "Suggested repair is to inspect the electrical connector on back of the headlight. If damaged, repair/replace the connector of the headlight otherwise take it to a mechanic."))

;-----------------
; brake questions
;-----------------

(text-for-id 
   (id text_brake_q1-1-2)
   (text "Is the brake discs still thick at the side that the vehicle pulling?")) 
   
(text-for-id 
   (id text_brake_q1-1-1)
   (text "Is the brake pedal pulsing whilst driving?")) 
   
(text-for-id 
   (id text_brake_q1-1)
   (text "Is the vehicle pull to one a side whilst braking?")) 

(text-for-id 
   (id text_brake_q1-2)
   (text "Is there any signs of a leakage near the brake master cylinder?"))  
   
(text-for-id 
   (id text_brake_q1)
   (text "Does the brake pedal feel soft/spongy?")) 
   
(text-for-id 
   (id text_brake_q2)
   (text "Has the vehicle the vehicle been unused for some time?")) 
   
(text-for-id 
   (id text_brake_q0)
   (text "Do the brake pedal feel hard whilst driving?")) 
   
;---------------------------------
; repairs brakes
;---------------------------------

(text-for-id 
   (id text_brake_r2-2)
   (text "Suggested repair is to clean the brake pedal."))

(text-for-id 
   (id text_brake_r2-1)
   (text "Most likely a vault with the engine vacuum or a defective brake booster. Suggested repair is to inspect both and repair as needed."))

(text-for-id 
   (id text_brake_r1-2-2)
   (text "Suggested repair is to find and repair leakage near brake master cylinder."))

(text-for-id 
   (id text_brake_r1-2-1)
   (text "Suggested repair is to check for internal damamge, if there is replace the brake master cylinder."))
   
(text-for-id 
   (id text_brake_r1-1)
   (text "There is a possibility of frozen brake caliper. Suggested repair is to check if it is and unstick the brake caliper."))

; 1-1-1 mechanic

(text-for-id 
   (id text_brake_r1-1-2-2)
   (text "Suggested repair is to resurface the brake discs."))

(text-for-id 
   (id text_brake_r1-1-2-1)
   (text "Suggested replace the brake pads."))

;-----------------------------------
; questions steering and suspension
;-----------------------------------

(text-for-id 
   (id text_ss_q0)
   (text "Is the vehicle porpoising over bumps or uneven roads?")) 

(text-for-id 
   (id text_ss_q2)
   (text "Are the shocks worn?"))  
   
(text-for-id 
   (id text_ss_q1-2)
   (text "Check tyre inflation. Is the problem solved?")) 
   
(text-for-id 
   (id text_ss_q1-2-1)
   (text "Are there cracks in the rod/steering rack?")) 
   
(text-for-id 
   (id text_ss_q1-1)
   (text "Is the flip flop wheel shimmy?")) 
   
(text-for-id 
   (id text_ss_q1-1-2)
   (text "Check tyre inflation and wheel balance. Is the problem solved?")) 

(text-for-id 
   (id text_ss_q1-1-1)
   (text "Is the vehicle clunking over bumps?"))  
   
(text-for-id 
   (id text_ss_q1-1-3)
   (text "Is the vehicle having loose steering?")) 
   
(text-for-id 
   (id text_ss_q1-1-4)
   (text "Is the steering vibrating at high speeds?")) 
      
(text-for-id 
   (id text_ss_q1)
   (text "Is the vehicle pulling to one side while driving?")) 
   
;---------------------------------
; repairs steering and suspension
;---------------------------------

(text-for-id 
   (id text_ss_r2-2)
   (text "Replace shocks."))
   
(text-for-id 
   (id text_ss_r2-1)
   (text "Replace leaf springs."))
   
(text-for-id 
   (id text_ss_r1-2)
   (text "Problem Solved."))

(text-for-id 
   (id text_ss_r1-2-1-2)
   (text "Replace rods."))

(text-for-id 
   (id text_ss_r1-2-1-1)
   (text "Replace brake caliper."))
   
(text-for-id 
   (id text_ss_r1-1-2-1)
   (text "Inspect tyres and replace them in pairs. Inspect tie rods and repair if needed."))

; 1-1-2-2 mechanic

(text-for-id 
   (id text_ss_r1-1-1)
   (text "Replace worn shacks, worn bearings and warn ball joints."))
   
(text-for-id 
   (id text_ss_r1-1-3)
   (text "Check power steering fluid, worn bearing and broken rack mounts."))

; 1-1-4-1 mechanic

(text-for-id 
   (id text_ss_r1-1-4-2)
   (text "Check wheel balance, loose wheel bolts and warped brake rotors."))

;---------------------------------
) ; end of deffacts
;---------------------------------



