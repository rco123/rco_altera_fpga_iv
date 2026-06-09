LOAD 1      ; R0 = 5

LOOP:
LED_ON      ; LED 켜기
DELAY 300   ; 대기

LED_OFF     ; LED 끄기
DELAY 300   ; 대기

DEC         ; R0 = R0 - 1

JNZ LOOP    ; R0 != 0이면 LOOP로 이동

JZ END_ON   ; R0 == 0이면 END_ON으로 이동

END_ON:
LED_ON      ; LED 켠 상태 유지
JMP END_ON  ; 무한 반복
