
; if you are changing anything change where it says to in the text 
; here are the keys like ctrl, alt, shift so that you can change to  you liking 
; + = shift 
; ! = alt
; ^ = control
; my keys are start on ctrl b "^b" and my limit key is ctrl n "^n"

toggle := false  

^b::        ;the start key, you can change to to your key 
toggle := !toggle

if (toggle) {
    Gosub, AltLAction   
    SetTimer, AltLLoop, 8000        ; you can chage the time here 1000 is 1 second  
} else {
    SetTimer, AltLLoop, Off
    Gosub, AltLFinal   
}
return

AltLAction:
Send ^n         ; change this to you key bined the "^n" to your key
Sleep, 50
return

AltLLoop:
Send ^n         ; change this to you key bined the "^n" to your key
Sleep, 50
Send ^n         ; change this to you key bined the "^n" to your key
return

AltLFinal:
Send ^n         ; change this to you key bined the "^n" to your key
return 