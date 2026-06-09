사용법

1. ASM을 HEX로 변환

    python asmtohex.py led.asm

결과:

    led.hex

2. HEX를 COM3로 전송

    python hexsend.py led.hex

pyserial 설치:

    pip install pyserial

명령어 포맷:

    16bit = opcode[15:12] + operand[11:0]

명령어:

    NOP      0x0
    LOAD n   0x1
    INC      0x2
    DEC      0x3
    JMP addr 0x4
    JZ addr  0x5
    JNZ addr 0x6
    LED_ON   0x7
    LED_OFF  0x8
    DELAY n  0x9

led.asm 변환 결과:

    1005
    7000
    9064
    8000
    9064
    3000
    6001
    5008
    7000
    4008

시리얼 전송 바이트:

    10 05 70 00 90 64 80 00 90 64 30 00 60 01 50 08 70 00 40 08
