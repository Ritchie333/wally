ORG $7B00

; Lookup table for reversing graphics
;
; Used by the routine at Reverse_Sprite.
;
; The table gives a fast way of reversing all the bits in a byte. On lookup,
; the index to the table gives the inverse bit pattern. This saves time
; calculating it by hand.
Reverse_Lookup:
  DEFB $00,$80,$40,$C0,$20,$A0,$60,$E0
  DEFB $10,$90,$50,$D0,$30,$B0,$70,$F0
  DEFB $08,$88,$48,$C8,$28,$A8,$68,$E8
  DEFB $18,$98,$58,$D8,$38,$B8,$78,$F8
  DEFB $04,$84,$44,$C4,$24,$A4,$64,$E4
  DEFB $14,$94,$54,$D4,$34,$B4,$74,$F4
  DEFB $0C,$8C,$4C,$CC,$2C,$AC,$6C,$EC
  DEFB $1C,$9C,$5C,$DC,$3C,$BC,$7C,$FC
  DEFB $02,$82,$42,$C2,$22,$A2,$62,$E2
  DEFB $12,$92,$52,$D2,$32,$B2,$72,$F2
  DEFB $0A,$8A,$4A,$CA,$2A,$AA,$6A,$EA
  DEFB $1A,$9A,$5A,$DA,$3A,$BA,$7A,$FA
  DEFB $06,$86,$46,$C6,$26,$A6,$66,$E6
  DEFB $16,$96,$56,$D6,$36,$B6,$76,$F6
  DEFB $0E,$8E,$4E,$CE,$2E,$AE,$6E,$EE
  DEFB $1E,$9E,$5E,$DE,$3E,$BE,$7E,$FE
  DEFB $01,$81,$41,$C1,$21,$A1,$61,$E1
  DEFB $11,$91,$51,$D1,$31,$B1,$71,$F1
  DEFB $09,$89,$49,$C9,$29,$A9,$69,$E9
  DEFB $19,$99,$59,$D9,$39,$B9,$79,$F9
  DEFB $05,$85,$45,$C5,$25,$A5,$65,$E5
  DEFB $15,$95,$55,$D5,$35,$B5,$75,$F5
  DEFB $0D,$8D,$4D,$CD,$2D,$AD,$6D,$ED
  DEFB $1D,$9D,$5D,$DD,$3D,$BD,$7D,$FD
  DEFB $03,$83,$43,$C3,$23,$A3,$63,$E3
  DEFB $13,$93,$53,$D3,$33,$B3,$73,$F3
  DEFB $0B,$8B,$4B,$CB,$2B,$AB,$6B,$EB
  DEFB $1B,$9B,$5B,$DB,$3B,$BB,$7B,$FB
  DEFB $07,$87,$47,$C7,$27,$A7,$67,$E7
  DEFB $17,$97,$57,$D7,$37,$B7,$77,$F7
  DEFB $0F,$8F,$4F,$CF,$2F,$AF,$6F,$EF
  DEFB $1F,$9F,$5F,$DF,$3F,$BF,$7F,$FF

; Character names
Character_Text:
  DEFM "WALLY"
  DEFB $FF
  DEFM "WILMA"
  DEFB $FF
  DEFM "TOM"
  DEFB $FF
  DEFM "DICK"
  DEFB $FF
  DEFM "HARRY"
  DEFB $FF

; Wages page text
Final_Score_Text:
  DEFB $FE
  DEFM "CTODAY'S WAGES"
  DEFB $B8
  DEFB $04
  DEFB $FE
  DEFM "FWALLY'S PAY"
  DEFB $BD
  DEFB $03
  DEFM "WILMA'S PAY"
  DEFB $BD
  DEFB $03
  DEFM "TOM'S PAY"
  DEFB $BF
  DEFB $03
  DEFM "DICK'S PAY"
  DEFB $BE
  DEFB $03
  DEFM "HARRY'S PAY"
  DEFB $FE
  DEFM "C"
  DEFB $BF
  DEFB $04
  DEFM "OVERALL"
  DEFB $FF

; Completed page text
Game_Won_Text:
  DEFB $FE
  DEFM "DYOU CLEVER DICK  (PLUS TOM,"
  DEFB $AD
  DEFB $03
  DEFM "HARRY, WILMA AND WALLY)."
  DEFB $B0
  DEFB $03
  DEFM "YOU'VE OPENED THE SAFE."
  DEFB $B1
  DEFB $03
  DEFM "PERHAPS  EVERYONE'S  NOT  A"
  DEFB $AD
  DEFB $03
  DEFM "WALLY AFTER ALL."
  DEFB $B8
  DEFB $03
  DEFM "THE GANG HAVE BEEN PAID AND"
  DEFB $AD
  DEFB $03
  DEFM "ARE NOW OFF ON THEIR HOLS."
  DEFB $AE
  DEFB $03
  DEFM "SEE YOU AGAIN SOMETIME."
  DEFB $FF

; Game over page text
Game_Over_Text:
  DEFB $FE
  DEFM "DTOUGH LUCK.  THE GANG HAS"
  DEFB $AF
  DEFB $03
  DEFM "EARNED"
  DEFB $CE
  DEFB $00
  DEFM ",  BUT  CAN'T"
  DEFB $AF
  DEFB $03
  DEFM "HAVE  IT  'COS  THE  SAFE"
  DEFB $AF
  DEFB $03
  DEFM "WASN'T OPENED, AND THAT'S"
  DEFB $AF
  DEFB $03
  DEFM "WHERE THE MONEY IS."
  DEFB $FF

; Title page text
Title_Text:
  DEFB $FE
  DEFM "BKEY:-"
  DEFB $FE
  DEFM "F   1.SINCLAIR JOYSTICK"
  DEFB $AD
  DEFB $07
  DEFB $FE
  DEFM "BKEY:-"
  DEFB $FE
  DEFM "F   2.KEMPSTON JOYSTICK"
  DEFB $AD
  DEFB $07
  DEFB $FE
  DEFM "BKEY:-"
  DEFB $FE
  DEFM "F   3.KEYBOARD"
  DEFB $BA
  DEFB $08
  DEFB $FE
  DEFM "EPRESS KEY 4 TO START"
  DEFB $FF

; 'Key :'
Key_Text:
  DEFB $FE
  DEFM "GKEY:-"
  DEFB $FF

; Status bar text
Status_Bar_Text:
  DEFB $FB
  DEFB $DC
  DEFB $DF
  DEFB $FE
  DEFM "DCHARACTER:"
  DEFB $BE
  DEFB $02
  DEFB $FE
  DEFM "GENDURANCE:"
  DEFB $AE
  DEFB $00
  DEFB $FE
  DEFM "G  "
  DEFB $C6
  DEFB $01
  DEFM "  "
  DEFB $C6
  DEFB $01
Status_Bar_Text_1:
  DEFB $FB
  DEFB $DC
  DEFB $DF
  DEFB $FE
  DEFM "B"
  DEFB $FD
  DEFM " ["
  DEFB $FF

; Morning tea break
Morning_Tea:
  DEFB $FE
  DEFM "E"
  DEFB $CD
  DEFB $0C
  DEFM "HO HUM, TIME FOR A BUN"
  DEFB $B4
  DEFB $04
  DEFM "MORNING TEA BREAK"
  DEFB $FF

; Lunch time
Lunch_Time:
  DEFB $FE
  DEFM "C"
  DEFB $CA
  DEFB $0C
  DEFM "RUBBA DUB DUB, TIME FOR GRUB"
  DEFB $B5
  DEFB $04
  DEFM "LUNCH TIME"
  DEFB $FF

; Afternoon tea break
Afternoon_Tea:
  DEFB $FE
  DEFM "F"
  DEFB $CA
  DEFB $0C
  DEFM "FIDDLE DEE DEE, TIME FOR TEA"
  DEFB $B1
  DEFB $04
  DEFM "AFTERNOON TEA BREAK"
  DEFB $FF

; Room block data : Asteroids
Asteroid_Graphics:
  DEFB $FE,$42,$FB,$BC,$D7,$00,$01,$C6
  DEFB $01,$02,$03,$DC,$FF,$00,$01,$C6
  DEFB $01,$02,$03,$FF

; Room block data : Hole opening for chase
;
; Used by the routine at Chase.
;
; This block data is simply four empty spaces.
Hole_Graphics:
  DEFB $FB,$DC,$DF,$FE,$46,$FD,$04,$20
  DEFB $FF

; Location text
;
; Used by the routine at Print_Character_Room.
Location_Text:
  DEFM "THE TOWN SQUARE"
  DEFB $FF
  DEFM "STAMP STREET"
  DEFB $FF
  DEFM "THE POST OFFICE"
  DEFB $FF
  DEFM "MARKET STREET"
  DEFB $FF
  DEFM "THE SUPER MARKET"
  DEFB $FF
  DEFM "THE PARK"
  DEFB $FF
  DEFM "WOBBLY WALK"
  DEFB $FF
  DEFM "RUBBLE ROAD"
  DEFB $FF
  DEFM "WALL STREET"
  DEFB $FF
  DEFM "PETE STREET"
  DEFB $FF
  DEFM "THE WORK SHED"
  DEFB $FF
  DEFM "SCHOOL LANE"
  DEFB $FF
  DEFM "THE SCHOOL"
  DEFB $FF
  DEFM "BAKER STREET"
  DEFB $FF
  DEFM "THE BAKERS"
  DEFB $FF
  DEFM "THE PUB"
  DEFB $FF
  DEFM "MOTOR WAY"
  DEFB $FF
  DEFM "THE LABORATORY"
  DEFB $FF
  DEFM "THE GARAGE"
  DEFB $FF
  DEFM "REFERENCE ROAD"
  DEFB $FF
  DEFM "THE LIBRARY"
  DEFB $FF
  DEFM "PENNY LANE"
  DEFB $FF
  DEFM "THE BANK"
  DEFB $FF
  DEFM "WALLY'S HOUSE"
  DEFB $FF
  DEFM "MEAT STREET"
  DEFB $FF
  DEFM "THE BUTCHERS"
  DEFB $FF
  DEFM "TRUNK ROAD"
  DEFB $FF
  DEFM "THE ZOO"
  DEFB $FF
  DEFM "RAIL ROAD"
  DEFB $FF
  DEFM "THE STATION"
  DEFB $FF
  DEFM "THE DOCKS"
  DEFB $FF
  DEFM "THE SEWER"
  DEFB $FF
  DEFM "THE CAVE"
  DEFB $FF

; Positions of the lightning bolts in the "asteroids" game
;
; Used by the routines at Space_Game, Space_Collision_Detect, Space_Check_Fire
; and Space_Move_Lightning.
;
; The format is:
; +------+--------------------------------------------+
; | Byte | Description                                |
; +------+--------------------------------------------+
; | 0    | x co-ordinate, or FF for no lightning here |
; | 1    | y co-ordinate                              |
; | 2    | change in X (may be negative)              |
; | 3    | change in Y (may be negative)              |
; | 4    | object ID to draw with                     |
; +------+--------------------------------------------+
Space_Lightning_States:
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00

; Show title screen
;
; Used by the routines at Run_Demo and Main.
;
; The routine returns when the user starts a game.
Display_Title:
  CALL Clear_Screen       ; Clear the screen.
  CALL Init_Theme_Tune    ; Initialize the theme tune data.
Display_Title_0:
  LD HL,Title_Text        ; Print the title page text. (Title_Text)
  LD DE,$0003             ;
  CALL Print_String       ;
  LD HL,Key_Text          ; Point HL at the "key" text. (Key_Text)
  LD A,(Input_Method)     ; Put the current control mechanism (Input_Method) in
  LD B,A                  ; B.
  LD A,$02                ; Convert this to a location on screen and put it in
  SUB B                   ; DE.
  LD B,A                  ;
  ADD A,A                 ;
  ADD A,A                 ;
  ADD A,A                 ;
  SUB B                   ;
  LD D,A                  ;
  LD E,$03                ;
  CALL Print_String       ; Print a marker against the selected option.
Display_Title_1:
  LD A,$FF                ; Set to no key pressed.
  LD (Last_Key),A         ;
  CALL Play_Theme_Tune_Note ; Play the next note of the theme tune.
  LD A,(Is_Character_Computer) ; Is the tune still playing?
  OR A                         ;
  JR NZ,Run_Demo          ; If not, start demo mode.
  LD A,(Last_Key)         ; Get the last key pressed.
  BIT 0,A                 ; Was '1' pressed?
  JR NZ,Display_Title_2   ; Jump forward if not.
  CALL Select_Sinclair    ; Select Sinclair control and continue playing the
  JR Display_Title_0      ; tune.
Display_Title_2:
  BIT 1,A                 ; Was '2' pressed?
  JR NZ,Display_Title_3   ; Jump forward if not.
  CALL Select_Kempston    ; Select Kempston control and continue playing the
  JR Display_Title_0      ; tune.
Display_Title_3:
  BIT 2,A                 ; Was '3' pressed?
  JR NZ,Display_Title_4   ; Jump forward if not.
  CALL Select_Keyboard    ; Select Keyboard control and continue playing the
  JR Display_Title_0      ; tune.
Display_Title_4:
  BIT 3,A                 ; Was '4' pressed?
  JR NZ,Display_Title_1   ; Jump back if not to continue playing the tune.
  RET                     ; Otherwise return to start the game.

; The current room showing in demo mode.
Demo_Room:
  DEFB $00

; Set up initial game data
;
; Used by the routines at Run_Demo and Main.
Init_Game:
  CALL Draw_Background    ; Draw the room.
  LD BC,$0014             ; Number of entries to update.
Init_Game_0:
  PUSH BC                 ; Store BC.
  CALL Init_Sprites       ; Initialize the sprite buffers
  CALL Logic_Town_Square_1 ; Draw the fountain.
  CALL Draw_Characters    ; Update character positions.
  CALL Update_Sprites     ; Put sprites on screen.
  POP BC                  ; Restore BC.
  DEC BC                  ; Loop until all entries are refreshed.
  LD A,B                  ;
  OR C                    ;
  JR NZ,Init_Game_0       ;
  RET                     ;

; Demo mode
;
; Used by the routine at Display_Title.
Run_Demo:
  CALL Init_Character     ; Initialize character data.
  CALL Clear_Screen       ; Clear the screen.
  CALL Update_Status      ; Refresh the status bar.
  CALL Init_Game          ; Set up initial data.
  LD (Demo_Room),A        ; Set the current room (Demo_Room) to 0 (set up by
                          ; the previous routine)
; The main loop of the demo mode begins here.
Run_Demo_0:
  LD A,(Demo_Room)        ; Get the current room in demo mode.
  CP (IY+$0F)             ; Is is the current room for the current character?
  JR Z,Run_Demo_1         ; Jump forward if it is.
  LD A,(IY+$0F)           ; Otherwise copy the current room to the demo mode
  LD (Demo_Room),A        ; room flag.
  CALL Draw_Background    ; Draw the room.
Run_Demo_1:
  CALL Main_update        ; Move everything on screen.
  XOR A                   ; Read all keys.
  IN A,($FE)              ;
  OR $E0                  ; Set bits 5-7 as the hardware doesn't read those.
  CP $FF                  ; Was any key pressed?
  JP NZ,Display_Title     ; No, so carry on in demo mode.
  JR Run_Demo_0           ; Otherwise loop back round and continue.

; Main entry point
;
; Used by the routines at Cracked_Safe and Final_Score.
Main:
  DI                      ; Disable interrupts.
  LD SP,$FC00             ; Put the stack somewhere safe.
  CALL Display_Title      ; Show the title screen.
; The game is now ready to start.
  CALL Init_Character     ; Initialize character data
  CALL Update_Status      ; Refresh the status bar.
  CALL Init_Game          ; Set up initial game data.
; This entry point is used by the routine at Space_Game.
Main_0:
  CALL Character_Has_Object ; See if any collectable items are being touched.
  CALL Do_Logic           ; Process logic for this room.
  CALL Check_New_Room     ; Check to see if a new room is entered.
  CALL Change_Character   ; Check for changing a character.
  CALL Detect_Input       ; Check for user input.
  CALL Main_update        ; Update the screen.
  CALL Pause_Loop         ; Check for pause.
  CALL Show_Reward        ; Display a break screen if necessary.
  JR Main_0               ; Loop back and do it again.

; Move everything on screen
;
; Used by the routines at Run_Demo, Main and Chase.
Main_update:
  CALL Update_Character_In_Room_T ; Update the "{character} is in {room}" tick
                                  ; count, if any.
  CALL Update_Characters  ; Move the computer controlled characters.
  CALL Update_Room        ; Refresh the current room.
  CALL Update_Jumping_Jack ; Move the jumping jack.
  CALL Handle_Food        ; Display any food.
  CALL Move_Herbert       ; Move Herbert.
  CALL Draw_Characters    ; Update and draw characters.
  RET                     ; Return.

; Check for the pause key
;
; If CAPS + SPACE is held down, loop until it is released.
Pause_Loop:
  LD A,$FE                ; Read CAPS - V on the keyboard.
  IN A,($FE)              ;
  LD B,A                  ; Put this in B.
  LD A,$7F                ; Read SPACE - B on the keyboard.
  IN A,($FE)              ;
  OR B                    ; Merge the two key presses together.
  BIT 0,A                 ; Did both have the first key pressed? (ie: CAPS +
                          ; SPACE )
  RET NZ                  ; Return if not.
  JP Pause_Loop           ; Otherwise loop back and wait until the keys are
                          ; released.

; Change direction
;
; Used by the routines at Jump, Move_Character and Chase.
;
; IY Current character pointer (Character_Base - BC6B)
Change_Direction:
  EXX                     ; Exchange all registers.
  XOR $01                 ; Invert bit 1.
  LD (IY-$3C),A           ; Set this for this character
  LD E,(IY+$23)           ; Put the graphic ID in DE.
  LD D,(IY+$28)           ;
  LD BC,$0400             ; Copy 0400 bytes (size of all frames). Control
                          ; passes to Reverse_Sprite.

; Change a sprite to the reverse direction
;
; Used by the routine at Shark_Reverse.
;
; DE The address of the graphic
; BC The size of the data to copy
;
; The buffer at Reverse_Lookup has lookup entries that allow fast reversal of
; graphic data without having to recalculate it by hand.
Reverse_Sprite:
  LD A,(DE)               ; Get the first byte.
  EX AF,AF'               ; Swap A for the shadow copy.
  INC DE                  ; Put the second byte in A.
  LD A,(DE)               ;
  DEC DE                  ;
  LD L,A                  ; Set the index to copy from the buffer.
  LD H,$7B                ;
  LDI                     ; Do the copy.
  EX AF,AF'               ; Swap A for the other instance.
  LD H,$7B                ; Set the index to copy from the buffer.
  LD L,A                  ;
  LDI                     ; Do the copy.
  JP PE,Reverse_Sprite    ; Loop while there is more to do.
  EXX                     ; Swap all main registers and return.
  RET                     ;

; Screen offset table
;
; Used by the routines at Print_Char, Print_Inventory_Item, Print_Graphic,
; Clear_Status and Clear_Inventory.
;
; This buffer holds the various locations on screen where each line of text
; should go
;
; Status bar
Screen_Offsets:
  DEFW $4000
  DEFW $4100
  DEFW $4200
  DEFW $4300
  DEFW $4400
  DEFW $4500
  DEFW $4600
  DEFW $4700
  DEFW $4020
  DEFW $4120
  DEFW $4220
  DEFW $4320
  DEFW $4420
  DEFW $4520
  DEFW $4620
  DEFW $4720
  DEFW $4040
  DEFW $4140
  DEFW $4240
  DEFW $4340
  DEFW $4440
  DEFW $4540
  DEFW $4640
  DEFW $4740
  DEFW $4060
  DEFW $4160
  DEFW $4260
  DEFW $4360
  DEFW $4460
  DEFW $4560
  DEFW $4660
  DEFW $4760
  DEFW $4080
  DEFW $4180
  DEFW $4280
  DEFW $4380
  DEFW $4480
  DEFW $4580
  DEFW $4680
  DEFW $4780
; Separator bar between status and main screen
Screen_Offsets_1:
  DEFW $40A0
  DEFW $41A0
  DEFW $42A0
  DEFW $43A0
  DEFW $44A0
  DEFW $45A0
  DEFW $46A0
  DEFW $47A0
  DEFW $40C0
  DEFW $41C0
  DEFW $42C0
  DEFW $43C0
  DEFW $44C0
  DEFW $45C0
  DEFW $46C0
  DEFW $47C0
  DEFW $40E0
  DEFW $41E0
  DEFW $42E0
  DEFW $43E0
  DEFW $44E0
  DEFW $45E0
  DEFW $46E0
  DEFW $47E0
; Main screen
Screen_Offsets_2:
  DEFW $4800
  DEFW $4900
  DEFW $4A00
  DEFW $4B00
  DEFW $4C00
  DEFW $4D00
  DEFW $4E00
  DEFW $4F00
  DEFW $4820
  DEFW $4920
  DEFW $4A20
  DEFW $4B20
  DEFW $4C20
  DEFW $4D20
  DEFW $4E20
  DEFW $4F20
  DEFW $4840
  DEFW $4940
  DEFW $4A40
  DEFW $4B40
  DEFW $4C40
  DEFW $4D40
  DEFW $4E40
  DEFW $4F40
  DEFW $4860
  DEFW $4960
  DEFW $4A60
  DEFW $4B60
  DEFW $4C60
  DEFW $4D60
  DEFW $4E60
  DEFW $4F60
  DEFW $4880
  DEFW $4980
  DEFW $4A80
  DEFW $4B80
  DEFW $4C80
  DEFW $4D80
  DEFW $4E80
  DEFW $4F80
  DEFW $48A0
  DEFW $49A0
  DEFW $4AA0
  DEFW $4BA0
  DEFW $4CA0
  DEFW $4DA0
  DEFW $4EA0
  DEFW $4FA0
  DEFW $48C0
  DEFW $49C0
  DEFW $4AC0
  DEFW $4BC0
  DEFW $4CC0
  DEFW $4DC0
  DEFW $4EC0
  DEFW $4FC0
  DEFW $48E0
  DEFW $49E0
  DEFW $4AE0
  DEFW $4BE0
  DEFW $4CE0
  DEFW $4DE0
  DEFW $4EE0
  DEFW $4FE0
  DEFW $5000
  DEFW $5100
  DEFW $5200
  DEFW $5300
  DEFW $5400
  DEFW $5500
  DEFW $5600
  DEFW $5700
  DEFW $5020
  DEFW $5120
  DEFW $5220
  DEFW $5320
  DEFW $5420
  DEFW $5520
  DEFW $5620
  DEFW $5720
  DEFW $5040
  DEFW $5140
  DEFW $5240
  DEFW $5340
  DEFW $5440
  DEFW $5540
  DEFW $5640
  DEFW $5740
  DEFW $5060
  DEFW $5160
  DEFW $5260
  DEFW $5360
  DEFW $5460
  DEFW $5560
  DEFW $5660
  DEFW $5760
  DEFW $5080
  DEFW $5180
  DEFW $5280
  DEFW $5380
  DEFW $5480
  DEFW $5580
  DEFW $5680
  DEFW $5780
  DEFW $50A0
  DEFW $51A0
  DEFW $52A0
  DEFW $53A0
  DEFW $54A0
  DEFW $55A0
  DEFW $56A0
  DEFW $57A0
  DEFW $50C0
  DEFW $51C0
  DEFW $52C0
  DEFW $53C0
  DEFW $54C0
  DEFW $55C0
  DEFW $56C0
  DEFW $57C0
  DEFW $50E0
  DEFW $51E0
  DEFW $52E0
  DEFW $53E0
  DEFW $54E0
  DEFW $55E0
  DEFW $56E0
  DEFW $57E0

; Object 00 - The plunger
Object_00:
  DEFB $01,$80,$01,$80,$01,$80,$01,$80
  DEFB $01,$80,$01,$80,$01,$80,$01,$80
  DEFB $01,$80,$01,$80,$00,$00,$03,$C0
  DEFB $0D,$F0,$13,$F8,$17,$F8,$3F,$FC

; Object 01 - The letter A
  DEFB $03,$C0,$03,$C0,$03,$C0,$07,$E0
  DEFB $06,$60,$06,$60,$0E,$70,$0C,$30
  DEFB $0C,$30,$1C,$38,$1F,$F8,$1F,$F8
  DEFB $38,$1C,$30,$0C,$78,$1E,$FC,$3F

; Object 02 - Book 2
  DEFB $6F,$EF,$6F,$F7,$2F,$FB,$2F,$FD
  DEFB $6E,$1E,$6C,$CF,$2F,$CF,$6F,$9F
  DEFB $6F,$3F,$6E,$7F,$6C,$FF,$2C,$0E
  DEFB $2F,$FD,$2F,$FB,$6F,$F7,$6F,$EF

; Object 03 - The sand
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$03,$00,$06,$80,$0D,$40
  DEFB $1A,$A0,$3D,$50,$7A,$A8,$FD,$54

; Object 04 - The battery
  DEFB $00,$00,$38,$1C,$39,$9C,$00,$00
  DEFB $BF,$FF,$BF,$FF,$00,$00,$7F,$FE
  DEFB $7D,$BE,$6F,$FE,$45,$A2,$6F,$FE
  DEFB $7D,$BE,$7F,$FE,$7D,$BE,$00,$00

; Object 05 - The letter K
  DEFB $7E,$7E,$3C,$38,$18,$70,$18,$E0
  DEFB $19,$C0,$1B,$80,$1F,$00,$1E,$00
  DEFB $1F,$00,$1B,$80,$19,$C0,$18,$E0
  DEFB $18,$70,$18,$38,$3C,$1C,$7E,$3F

; Object 06 - The cement
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$E0,$03,$10,$04,$E8
  DEFB $0E,$D4,$17,$2A,$29,$F6,$76,$8D

; Object 07 - Book 3
  DEFB $6F,$EF,$6F,$F7,$2F,$FB,$2F,$FD
  DEFB $6E,$1E,$6C,$CF,$2F,$CF,$6F,$CF
  DEFB $6F,$1F,$6F,$CF,$6F,$CF,$2C,$CE
  DEFB $2E,$1D,$2F,$FB,$6F,$F7,$6F,$EF

; Object 08 - The trowel
  DEFB $00,$80,$00,$80,$01,$40,$01,$40
  DEFB $02,$E0,$02,$E0,$05,$F0,$05,$F0
  DEFB $0B,$78,$04,$B0,$02,$A0,$00,$80
  DEFB $01,$C0,$01,$C0,$01,$C0,$01,$C0

; Object 09 - The matches
  DEFB $1F,$FC,$10,$04,$15,$54,$15,$54
  DEFB $15,$54,$10,$04,$1F,$FC,$18,$0C
  DEFB $17,$F4,$17,$74,$16,$34,$16,$B4
  DEFB $16,$B4,$17,$74,$18,$0C,$1F,$FC

; Object 0A - The cracked insulator
  DEFB $00,$00,$00,$00,$41,$04,$E3,$8E
  DEFB $E3,$8A,$F3,$C7,$FB,$EF,$FB,$EF
  DEFB $C1,$EF,$98,$E9,$32,$47,$63,$8E
  DEFB $E3,$8E,$41,$04,$00,$00,$00,$00

; Object 0B - Book 1
  DEFB $6F,$EF,$6F,$F7,$2F,$FB,$2F,$FD
  DEFB $6F,$9E,$6F,$1F,$2F,$9F,$6F,$9F
  DEFB $6F,$9F,$6F,$9F,$6F,$9F,$2F,$0E
  DEFB $2F,$FD,$2F,$FB,$6F,$F7,$6F,$EF

; Object 0C - The monkey nuts
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$1C,$E0,$3F,$F0,$1C,$E2
  DEFB $00,$07,$0E,$E7,$1F,$F7,$0E,$E2
  DEFB $00,$07,$1D,$C7,$3F,$E7,$1D,$C2

; Object 0D - The money
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$FF,$FF,$FF,$D5,$FF,$85
  DEFB $DD,$D3,$A9,$83,$BD,$C3,$9D,$D7
  DEFB $BD,$B3,$88,$83,$FF,$FF,$00,$00

; Object 0E - Superglue
  DEFB $00,$80,$00,$80,$00,$80,$00,$00
  DEFB $01,$C0,$01,$C0,$00,$00,$07,$F0
  DEFB $06,$30,$04,$90,$04,$F0,$06,$30
  DEFB $07,$90,$04,$90,$06,$30,$07,$F0

; Object 0F - Chewing gum
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $FF,$DF,$FD,$C0,$FE,$D8,$80,$40
  DEFB $FE,$D8,$FD,$C0,$FF,$D8,$00,$00

; Object 10 - The bucket
  DEFB $00,$00,$5F,$FE,$5F,$FE,$00,$00
  DEFB $2B,$7C,$2B,$7C,$2C,$7C,$2E,$3C
  DEFB $17,$18,$17,$88,$17,$C0,$17,$E6
  DEFB $17,$F6,$00,$00,$17,$F8,$17,$F8

; Object 11 - The jump leads
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$03,$00,$44,$9C
  DEFB $64,$A2,$38,$02,$FB,$FC,$00,$00
  DEFB $44,$AC,$74,$A2,$18,$A2,$FB,$1C

; Object 12 - The bunsen burner
  DEFB $00,$E0,$00,$A0,$00,$A0,$00,$A0
  DEFB $00,$A0,$00,$A0,$00,$A0,$00,$E0
  DEFB $00,$00,$00,$E0,$0E,$C0,$3E,$E0
  DEFB $70,$00,$63,$F8,$C4,$FC,$D9,$FF

; Object 13 - The letter B
  DEFB $7F,$F0,$3F,$F8,$18,$1C,$18,$0C
  DEFB $18,$0C,$18,$0C,$18,$1C,$1F,$F8
  DEFB $1F,$FC,$18,$0E,$18,$06,$18,$06
  DEFB $18,$06,$18,$0E,$3F,$FC,$7F,$F8

; Object 14 - The gas mask
  DEFB $00,$00,$00,$00,$00,$00,$1C,$1C
  DEFB $22,$22,$5D,$5D,$5D,$5D,$5D,$5D
  DEFB $2E,$3A,$2D,$DA,$53,$65,$56,$B5
  DEFB $05,$50,$06,$B0,$03,$60,$01,$C0

; Object 15 - The parcel
  DEFB $01,$40,$03,$60,$07,$F0,$01,$80
  DEFB $FE,$7F,$FE,$7F,$82,$41,$7E,$7E
  DEFB $AA,$55,$D6,$6B,$AA,$55,$01,$00
  DEFB $00,$80,$AA,$55,$D6,$6B,$FE,$7F

; Object 16 - The fuse
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$E0,$07
  DEFB $0F,$F0,$E0,$07,$EF,$F7,$EF,$F7
  DEFB $E0,$07,$00,$00,$00,$00,$00,$00

; Object 17 - The meat
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$38,$1C,$C4,$23,$3A,$5C,$FD
  DEFB $5F,$FD,$B3,$FD,$B3,$FA,$BF,$F2
  DEFB $5F,$0C,$20,$F0,$1F,$00,$00,$00

; Object 18 - The monkey wrench
  DEFB $3F,$E0,$3F,$E0,$2A,$E0,$00,$E0
  DEFB $00,$E0,$2A,$00,$3F,$F0,$1F,$10
  DEFB $07,$B0,$03,$10,$03,$F0,$01,$F0
  DEFB $01,$F0,$00,$00,$00,$E0,$00,$E0

; Object 19 - Screwdriver
  DEFB $00,$00,$00,$02,$00,$07,$00,$06
  DEFB $00,$08,$00,$30,$00,$70,$00,$E0
  DEFB $07,$C0,$0A,$80,$14,$80,$29,$00
  DEFB $52,$00,$74,$00,$58,$00,$30,$00

; Object 1A - The letter E
  DEFB $7F,$FE,$3F,$FE,$18,$06,$18,$02
  DEFB $18,$00,$18,$20,$18,$60,$1F,$E0
  DEFB $1F,$E0,$18,$60,$18,$20,$18,$00
  DEFB $18,$02,$18,$06,$3F,$FE,$7F,$FE

; Object 1B - The hook
  DEFB $03,$C0,$00,$00,$01,$80,$01,$80
  DEFB $01,$C0,$00,$E0,$00,$70,$08,$30
  DEFB $18,$30,$18,$30,$1C,$70,$0F,$E0
  DEFB $03,$80,$00,$00,$00,$00,$00,$00

; Object 1C - The patch
  DEFB $07,$C0,$1F,$F0,$3F,$F8,$7F,$FC
  DEFB $7D,$7C,$FA,$BE,$F5,$5E,$FA,$BE
  DEFB $F5,$5E,$FA,$BE,$7D,$7C,$7F,$FC
  DEFB $3F,$F8,$1F,$F0,$07,$C0,$00,$00

; Object 1D - The pipe
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$7F,$F6,$80,$09,$FF,$E9
  DEFB $FF,$E9,$7F,$F6,$00,$00,$00,$00

; Object 1E - The letter R
  DEFB $7F,$F0,$3F,$F8,$18,$1C,$18,$0C
  DEFB $18,$0C,$18,$0C,$18,$1C,$1F,$F8
  DEFB $1F,$F0,$18,$60,$18,$70,$18,$30
  DEFB $18,$38,$18,$18,$3C,$1C,$7E,$3F

; Object 1F - The oil can
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$78,$03
  DEFB $08,$0C,$3C,$30,$01,$E0,$DD,$80
  DEFB $BD,$00,$BE,$00,$BE,$00,$DE,$00

; Object 20 - The fuse wire
  DEFB $00,$00,$3F,$FC,$7F,$FE,$7F,$FE
  DEFB $3F,$FC,$20,$04,$1F,$F8,$20,$04
  DEFB $1F,$F8,$20,$04,$1F,$F8,$20,$04
  DEFB $1F,$F8,$7F,$FE,$7F,$FE,$3F,$FC

; Object 21 - The good insulator
  DEFB $00,$00,$00,$00,$41,$04,$E3,$8E
  DEFB $E3,$8E,$F3,$CF,$FB,$EF,$FB,$EF
  DEFB $FB,$EF,$FB,$EF,$F3,$CF,$E3,$8E
  DEFB $E3,$8E,$41,$04,$00,$00,$00,$00

; Object 22 - The bottle
  DEFB $01,$C0,$01,$C0,$00,$00,$01,$40
  DEFB $01,$40,$01,$40,$02,$E0,$05,$F0
  DEFB $05,$70,$05,$00,$05,$70,$05,$50
  DEFB $05,$60,$05,$70,$05,$80,$07,$F0

; Object 23 - The red herring
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$0F,$80
  DEFB $3F,$C1,$7F,$F3,$5E,$7E,$FD,$BE
  DEFB $EF,$7E,$67,$F3,$1F,$81,$00,$00

; Object 24 - The test tube
  DEFB $00,$00,$04,$10,$02,$20,$02,$20
  DEFB $02,$20,$02,$20,$03,$E0,$02,$E0
  DEFB $02,$E0,$02,$E0,$02,$E0,$02,$E0
  DEFB $02,$E0,$02,$E0,$02,$20,$01,$C0

; Object 25 - The can of beans
  DEFB $17,$FC,$00,$00,$17,$FC,$17,$FC
  DEFB $17,$00,$16,$FC,$16,$C4,$16,$D8
  DEFB $16,$C4,$16,$D8,$16,$C4,$16,$FC
  DEFB $17,$00,$17,$FC,$00,$00,$17,$FC

; Object 26 - The rubber stamp
  DEFB $00,$00,$01,$80,$02,$C0,$02,$C0
  DEFB $05,$E0,$05,$E0,$02,$C0,$02,$C0
  DEFB $02,$C0,$01,$80,$01,$80,$03,$C0
  DEFB $1F,$F8,$00,$00,$1F,$F8,$00,$00

; Object 27 - The pliers
  DEFB $01,$40,$01,$40,$01,$40,$03,$60
  DEFB $03,$60,$03,$60,$03,$A0,$01,$40
  DEFB $00,$C0,$03,$60,$02,$20,$06,$30
  DEFB $06,$30,$06,$30,$06,$30,$04,$10

; Object 28 - The whistle
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$67,$F0
  DEFB $7F,$FC,$00,$5E,$00,$BE,$01,$7F
  DEFB $01,$7E,$00,$BE,$00,$7C,$00,$10

; Object 29 - 2A - Beer mug
Object_29:
  DEFB $80,$03,$00,$00,$80,$03,$3F,$F8
  DEFB $80,$03,$15,$50,$C0,$03,$17,$80
  DEFB $C0,$01,$0B,$78,$E0,$01,$0B,$7C
  DEFB $E0,$01,$0B,$8C,$E0,$01,$0B,$EC
  DEFB $E0,$01,$0B,$EC,$C0,$01,$0B,$EC
  DEFB $C0,$01,$17,$9C,$C0,$01,$17,$78
  DEFB $80,$03,$17,$60,$80,$03,$35,$90
  DEFB $80,$03,$3F,$F8,$80,$03,$00,$00

; Object 2B - Fork lift
Object_2B:
  DEFB $00,$00,$00,$00,$C0,$00,$C0,$00
  DEFB $40,$00,$40,$00,$C0,$00,$C0,$00
  DEFB $C0,$00,$40,$00,$40,$00,$C0,$00
  DEFB $C0,$00,$E0,$00,$E7,$F8,$7B,$FF

; Object 2C - 2D / 2E - 2F / 30 - 31 - Shark
Object_2C:
  DEFB $E0,$00,$0F,$FE,$E0,$00,$0F,$E6
  DEFB $E0,$00,$07,$E2,$F0,$08,$07,$C0
  DEFB $F0,$1F,$07,$C0,$F0,$1F,$03,$C0
  DEFB $F8,$1F,$03,$C0,$F8,$1F,$03,$C0
  DEFB $F8,$1F,$03,$C0,$F0,$0F,$03,$C0
  DEFB $F0,$0F,$07,$E0,$E0,$0F,$07,$60
  DEFB $C0,$07,$0E,$E0,$80,$07,$1E,$70
  DEFB $00,$03,$38,$30,$03,$83,$60,$18
Object_2C_0:
  DEFB $E0,$00,$0F,$FE,$E0,$00,$0F,$EE
  DEFB $E0,$00,$07,$C6,$F0,$10,$07,$C2
  DEFB $F0,$18,$07,$C0,$F0,$1F,$07,$C0
  DEFB $F0,$1F,$03,$C0,$F8,$0F,$03,$C0
  DEFB $F8,$0F,$03,$E0,$F8,$0F,$03,$E0
  DEFB $F0,$0F,$02,$E0,$F0,$07,$06,$E0
  DEFB $E0,$03,$07,$70,$E0,$01,$0E,$38
  DEFB $C0,$80,$0C,$1C,$C1,$C0,$10,$06
Object_2C_1:
  DEFB $F1,$FF,$00,$00,$E0,$FF,$04,$00
  DEFB $E0,$3F,$0E,$00,$C0,$3F,$0F,$80
  DEFB $C0,$1F,$1F,$80,$80,$1F,$1F,$C0
  DEFB $80,$0F,$3F,$C0,$80,$0F,$3E,$60
  DEFB $80,$0F,$1F,$60,$C0,$0F,$0E,$60
  DEFB $00,$0F,$07,$E0,$00,$07,$43,$E0
  DEFB $00,$03,$70,$F0,$00,$01,$3F,$F8
  DEFB $80,$00,$1F,$FC,$C0,$00,$0F,$FE

; Object 32 - Toast
Object_32:
  DEFB $F0,$1F,$00,$00,$E0,$03,$07,$C0
  DEFB $C0,$01,$0D,$78,$80,$01,$1A,$AC
  DEFB $80,$01,$35,$54,$80,$01,$3A,$AC
  DEFB $80,$01,$15,$58,$C0,$03,$1A,$A8
  DEFB $C0,$03,$0D,$58,$C0,$03,$1A,$B0
  DEFB $C0,$03,$15,$58,$C0,$03,$1A,$A8
  DEFB $C0,$03,$15,$58,$C0,$03,$1A,$A8
  DEFB $C0,$03,$1F,$F8,$C0,$03,$00,$00

; Object 34 - Hammer
Object_34:
  DEFB $FE,$3F,$00,$00,$FC,$1F,$00,$80
  DEFB $F8,$0F,$01,$40,$F0,$0F,$03,$A0
  DEFB $E0,$0F,$07,$C0,$C0,$1F,$0E,$80
  DEFB $80,$3F,$1D,$00,$00,$1F,$3B,$80
  DEFB $00,$0F,$5D,$C0,$00,$07,$28,$E0
  DEFB $82,$03,$10,$70,$C7,$01,$00,$38
  DEFB $FF,$80,$00,$1C,$FF,$C0,$00,$0E
  DEFB $FF,$E0,$00,$06,$FF,$F0,$00,$00

; Object 36 - Shopping trolley
Object_36:
  DEFB $00,$00,$00,$00,$00,$00,$FF,$FB
  DEFB $00,$00,$AA,$AB,$00,$00,$55,$5A
  DEFB $00,$00,$6A,$AC,$00,$01,$35,$54
  DEFB $80,$01,$2A,$AC,$80,$01,$15,$54
  DEFB $C0,$01,$1F,$FC,$C0,$01,$00,$0C
  DEFB $C7,$81,$00,$1C,$C0,$01,$10,$38
  DEFB $C0,$03,$0F,$F0,$80,$01,$10,$08
  DEFB $83,$C1,$38,$1C,$83,$C1,$10,$08

; Object 38 - 3A - Lightning bolt
Object_38:
  DEFB $FE,$03,$00,$00,$FE,$03,$00,$F8
  DEFB $FC,$03,$00,$F0,$FC,$07,$01,$F0
  DEFB $F8,$07,$01,$E0,$F8,$01,$03,$E0
  DEFB $F0,$01,$03,$CC,$F0,$01,$07,$F8
  DEFB $E0,$03,$07,$F8,$E0,$03,$0C,$70
  DEFB $E0,$07,$00,$60,$FE,$0F,$00,$E0
  DEFB $FC,$0F,$00,$C0,$FC,$1F,$01,$80
  DEFB $FC,$3F,$01,$00,$FC,$7F,$00,$00
Object_38_0:
  DEFB $FE,$03,$00,$00,$FE,$03,$00,$F8
  DEFB $FC,$03,$00,$90,$FC,$07,$01,$10
  DEFB $F8,$07,$01,$20,$F8,$01,$02,$20
  DEFB $F0,$01,$02,$4C,$F0,$01,$04,$78
  DEFB $E0,$03,$07,$88,$E0,$03,$0C,$90
  DEFB $E0,$07,$00,$90,$FC,$07,$00,$A0
  DEFB $FC,$0F,$01,$40,$FC,$1F,$01,$80
  DEFB $FC,$3F,$01,$00,$FC,$7F,$00,$00

; Object 3C - 3E - Bird
Object_3C:
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$72,$4E,$00,$00,$1B,$D8
  DEFB $C0,$03,$0F,$F0,$E0,$07,$05,$A0
  DEFB $F0,$0F,$03,$C0,$F8,$1F,$01,$80
  DEFB $FC,$3F,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
Object_3C_0:
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $F8,$1F,$00,$00,$F8,$1F,$02,$40
  DEFB $F0,$0F,$03,$C0,$C0,$03,$07,$E0
  DEFB $80,$01,$1D,$B8,$00,$00,$33,$CC
  DEFB $00,$00,$41,$82,$1C,$38,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Object 40 - 42 - Herbert R
  DEFB $FF,$F8,$00,$00,$FF,$80,$00,$02
  DEFB $FF,$00,$00,$3D,$FE,$00,$00,$7A
  DEFB $FE,$00,$00,$EE,$FE,$00,$00,$8C
  DEFB $06,$00,$00,$DE,$00,$00,$70,$6F
  DEFB $00,$00,$FB,$7E,$00,$00,$FB,$EC
  DEFB $00,$01,$FB,$E0,$00,$07,$F3,$E0
  DEFB $00,$07,$4B,$70,$00,$07,$38,$70
  DEFB $01,$01,$5C,$30,$01,$81,$7C,$3C
  DEFB $FF,$FF,$00,$00,$FF,$F8,$00,$00
  DEFB $FF,$80,$00,$02,$FF,$00,$00,$3D
  DEFB $FE,$00,$00,$7A,$06,$00,$00,$EE
  DEFB $00,$00,$70,$8C,$00,$00,$FB,$DE
  DEFB $00,$00,$FB,$6F,$00,$00,$FB,$FE
  DEFB $00,$00,$FB,$EC,$00,$01,$73,$60
  DEFB $00,$0F,$4B,$60,$00,$0F,$38,$60
  DEFB $03,$07,$B8,$60,$03,$07,$F8,$30

; Object 44 - 46 - Herbert L
  DEFB $1F,$FF,$00,$00,$01,$FF,$40,$00
  DEFB $00,$FF,$BC,$00,$00,$7F,$5E,$00
  DEFB $00,$7F,$77,$00,$00,$7F,$31,$00
  DEFB $00,$60,$7B,$00,$00,$00,$F6,$0E
  DEFB $00,$00,$7E,$DF,$00,$00,$37,$DF
  DEFB $80,$00,$07,$DF,$E0,$00,$07,$CF
  DEFB $E0,$00,$0E,$D2,$E0,$00,$0E,$1C
  DEFB $80,$80,$0C,$3A,$81,$80,$3C,$3E
  DEFB $FF,$FF,$00,$00,$1F,$FF,$00,$00
  DEFB $01,$FF,$40,$00,$00,$FF,$BC,$00
  DEFB $00,$7F,$5E,$00,$00,$60,$77,$00
  DEFB $00,$00,$31,$0E,$00,$00,$7B,$DF
  DEFB $00,$00,$F6,$DF,$00,$00,$7F,$DF
  DEFB $00,$00,$37,$DF,$80,$00,$06,$CE
  DEFB $F0,$00,$06,$D2,$F0,$00,$06,$1C
  DEFB $E0,$C0,$06,$1D,$E0,$C0,$0C,$1F

; Object 48 - 4A - Jumping jack
Object_48:
  DEFB $F0,$0F,$00,$00,$F0,$0F,$07,$E0
  DEFB $F0,$0F,$01,$80,$FC,$3F,$01,$80
  DEFB $F0,$0F,$01,$80,$E0,$07,$06,$E0
  DEFB $E0,$07,$0B,$30,$E0,$07,$0A,$90
  DEFB $E0,$07,$09,$D0,$E0,$07,$0D,$50
  DEFB $E0,$07,$07,$E0,$F0,$0F,$00,$00
  DEFB $FC,$3F,$01,$80,$F8,$1F,$01,$80
  DEFB $E0,$07,$02,$C0,$E0,$07,$0D,$F0
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $F0,$0F,$00,$00,$F0,$0F,$07,$E0
  DEFB $F0,$0F,$01,$80,$F0,$0F,$01,$80
  DEFB $E0,$07,$06,$E0,$E0,$07,$0B,$30
  DEFB $E0,$07,$0A,$90,$E0,$07,$09,$D0
  DEFB $E0,$07,$0D,$50,$E0,$07,$07,$E0
  DEFB $F0,$0F,$00,$00,$F8,$1F,$01,$80
  DEFB $E0,$07,$02,$C0,$E0,$07,$0D,$F0

; Object 4C - 4F - Flame
  DEFB $00,$00,$00,$00,$00,$00,$00,$80
  DEFB $00,$80,$00,$80,$01,$C0,$01,$C0
  DEFB $03,$E0,$03,$60,$07,$70,$06,$B0
  DEFB $06,$B0,$03,$60,$01,$40,$01,$40
  DEFB $00,$00,$00,$00,$02,$00,$00,$00
  DEFB $02,$00,$03,$00,$07,$80,$07,$C0
  DEFB $07,$C0,$0E,$E0,$0E,$E0,$0D,$70
  DEFB $0D,$B0,$06,$70,$03,$60,$01,$40
  DEFB $00,$80,$00,$00,$00,$80,$00,$80
  DEFB $01,$C0,$01,$C0,$03,$E0,$03,$E0
  DEFB $07,$F0,$07,$70,$0F,$78,$0E,$B8
  DEFB $0E,$B8,$07,$70,$03,$60,$01,$40
  DEFB $00,$00,$00,$00,$00,$20,$00,$20
  DEFB $00,$60,$00,$F0,$01,$F0,$03,$F0
  DEFB $03,$F0,$07,$B8,$07,$78,$06,$B8
  DEFB $06,$B0,$03,$70,$01,$40,$01,$40

; Object 50 - 52 - Fountain L
  DEFB $C0,$00,$40,$00,$60,$00,$60,$00
  DEFB $60,$00,$50,$00,$70,$00,$70,$00
  DEFB $70,$00,$50,$00,$70,$00,$70,$00
  DEFB $78,$00,$E8,$00,$B8,$00,$FC,$00
  DEFB $C0,$00,$40,$00,$60,$00,$60,$00
  DEFB $60,$00,$70,$00,$70,$00,$70,$00
  DEFB $50,$00,$70,$00,$70,$00,$70,$00
  DEFB $7E,$00,$D9,$80,$FB,$80,$FE,$00
  DEFB $C0,$00,$40,$00,$60,$00,$40,$00
  DEFB $60,$00,$70,$00,$70,$00,$70,$00
  DEFB $70,$00,$70,$00,$70,$00,$70,$00
  DEFB $58,$00,$F8,$00,$F8,$C0,$B4,$20

; Object 53 - 55 - Fountain R
  DEFB $00,$03,$00,$02,$00,$06,$00,$06
  DEFB $00,$06,$00,$0A,$00,$0E,$00,$0E
  DEFB $00,$0E,$00,$0A,$00,$0E,$00,$0E
  DEFB $00,$1E,$00,$17,$00,$1D,$00,$3F
  DEFB $00,$03,$00,$02,$00,$06,$00,$06
  DEFB $00,$06,$00,$0E,$00,$0E,$00,$0E
  DEFB $00,$0A,$00,$0E,$00,$0E,$00,$0E
  DEFB $00,$7E,$01,$9B,$01,$DF,$00,$7F
  DEFB $00,$03,$00,$02,$00,$06,$00,$02
  DEFB $00,$06,$00,$0E,$00,$0E,$00,$0E
  DEFB $00,$0E,$00,$0E,$00,$0E,$00,$0E
  DEFB $00,$1A,$00,$1F,$03,$1F,$04,$2D

; Object 56 - Light bulb
Object_56:
  DEFB $00,$80,$00,$00,$01,$C0,$00,$00
  DEFB $01,$C0,$00,$00,$01,$C0,$03,$E0
  DEFB $02,$E0,$05,$F0,$05,$D0,$0B,$E8
  DEFB $0B,$E8,$09,$E8,$04,$D0,$03,$E0

; Object 57 - 5A - School desk
Object_57:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $FF,$FF,$FF,$FF,$00,$00,$FF,$F4
  DEFB $FF,$F4,$FF,$EC,$00,$0C,$00,$0C
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$0E,$00,$FE,$1F,$F8
  DEFB $FF,$80,$F0,$00,$00,$00,$FF,$F4
  DEFB $FF,$F4,$FF,$EC,$00,$0C,$00,$0C
  DEFB $00,$00,$00,$00,$00,$1C,$00,$7C
  DEFB $01,$F0,$07,$C0,$1F,$00,$7C,$00
  DEFB $F0,$00,$C0,$00,$00,$00,$FF,$F4
  DEFB $FF,$F4,$FF,$EC,$00,$0C,$00,$0C
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$0E,$00,$FE,$1F,$F8
  DEFB $FF,$80,$F0,$00,$00,$00,$FF,$F4
  DEFB $FF,$F4,$FF,$EC,$00,$0C,$00,$0C

; Object 5B - Burger
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$0B,$70
  DEFB $3F,$DC,$6E,$F6,$00,$00,$AA,$AA
  DEFB $55,$55,$00,$00,$7F,$FE,$3F,$FC

; Object 5C - Iced bun
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$7F,$FE,$FF,$FF,$79,$FE
  DEFB $86,$3D,$EF,$43,$BD,$EF,$77,$7A

; Object 5D - Fiz
  DEFB $5F,$F0,$00,$00,$7F,$F0,$43,$30
  DEFB $4F,$D0,$45,$D0,$4F,$F0,$49,$10
  DEFB $49,$90,$79,$30,$79,$90,$5F,$90
  DEFB $5E,$90,$5E,$30,$67,$F0,$3F,$E0

; Object 5E - Bottle
  DEFB $00,$00,$30,$00,$48,$00,$58,$00
  DEFB $3C,$00,$0F,$00,$07,$E0,$03,$98
  DEFB $03,$E6,$01,$FA,$01,$FD,$00,$FD
  DEFB $00,$FD,$00,$7A,$00,$3E,$00,$00

; Object 5F - Pear
  DEFB $1C,$60,$16,$C0,$1A,$80,$0D,$80
  DEFB $02,$00,$01,$C0,$01,$C0,$02,$E0
  DEFB $02,$E0,$05,$F0,$05,$F0,$0B,$E8
  DEFB $0B,$E8,$0B,$E8,$0D,$D8,$07,$70

; Object 60 - 63 - Monkey
Object_60:
  DEFB $01,$C0,$03,$60,$06,$30,$06,$00
  DEFB $06,$00,$E6,$00,$6F,$00,$6F,$80
  DEFB $3F,$C0,$3D,$F0,$03,$F8,$03,$78
  DEFB $06,$E8,$0C,$78,$06,$30,$03,$00
  DEFB $01,$C0,$03,$60,$06,$30,$06,$00
  DEFB $06,$00,$07,$00,$EF,$80,$6F,$E0
  DEFB $3D,$F0,$1C,$FE,$00,$FE,$01,$9F
  DEFB $03,$1B,$01,$8E,$00,$C6,$00,$00
  DEFB $01,$F0,$03,$38,$06,$00,$06,$00
  DEFB $06,$00,$06,$00,$0F,$C0,$0F,$F8
  DEFB $7E,$FE,$DC,$FA,$80,$DE,$00,$CF
  DEFB $00,$62,$00,$30,$00,$18,$00,$00
  DEFB $01,$C0,$03,$60,$06,$20,$06,$00
  DEFB $06,$00,$07,$00,$6F,$80,$2F,$E0
  DEFB $3D,$F0,$1C,$FE,$08,$FE,$01,$9F
  DEFB $03,$1B,$01,$8E,$00,$C6,$00,$00

; Object 64 - Banana
Object_64:
  DEFB $00,$00,$00,$08,$00,$1C,$00,$1C
  DEFB $00,$3C,$0E,$38,$09,$78,$10,$F0
  DEFB $1E,$F0,$21,$64,$03,$9C,$0C,$C4
  DEFB $33,$84,$CE,$08,$78,$10,$00,$00

; Object 65 - Morning tea
  DEFB $FF,$FF,$00,$00,$FC,$3F,$00,$00
  DEFB $FC,$3F,$01,$80,$E0,$07,$00,$00
  DEFB $20,$00,$0F,$F0,$00,$00,$80,$06
  DEFB $00,$00,$DF,$F9,$00,$00,$DB,$F9
  DEFB $00,$00,$57,$FD,$00,$00,$37,$FD
  DEFB $80,$00,$37,$FE,$80,$00,$1B,$F8
  DEFB $C0,$03,$1C,$F8,$C0,$03,$0F,$F0
  DEFB $E0,$07,$03,$C0,$F8,$1F,$00,$00

; Object 67 - Lunch
  DEFB $FF,$8F,$00,$00,$C0,$81,$00,$20
  DEFB $C0,$81,$12,$24,$C0,$01,$12,$84
  DEFB $00,$01,$04,$88,$00,$01,$44,$28
  DEFB $00,$01,$48,$24,$00,$00,$21,$84
  DEFB $80,$00,$23,$42,$80,$00,$0E,$A0
  DEFB $C0,$03,$15,$58,$00,$00,$00,$00
  DEFB $00,$00,$7F,$FE,$00,$00,$0F,$F0
  DEFB $E0,$07,$00,$00,$FF,$FF,$00,$00

; Object 69 - Dinner
  DEFB $FF,$0F,$00,$00,$FF,$03,$00,$60
  DEFB $FE,$00,$00,$58,$FE,$00,$00,$D6
  DEFB $C0,$00,$00,$B2,$80,$00,$19,$2C
  DEFB $80,$01,$3D,$C4,$80,$01,$26,$68
  DEFB $80,$03,$07,$18,$E0,$00,$0B,$D0
  DEFB $C0,$00,$0D,$FE,$C0,$00,$1F,$D6
  DEFB $C0,$00,$0F,$E2,$E0,$08,$03,$E0
  DEFB $F8,$0F,$00,$C0,$FE,$1F,$00,$00

; Object 6B - Asteroids small lightning
Object_6B:
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FE,$0F,$00,$00,$FC,$0F,$00,$E0
  DEFB $F8,$0F,$01,$C0,$F0,$0F,$03,$80
  DEFB $E0,$0F,$07,$E0,$E0,$0F,$0F,$C0
  DEFB $E0,$1F,$01,$80,$F0,$3F,$03,$00
  DEFB $F0,$7F,$06,$00,$F0,$FF,$04,$00
  DEFB $F1,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Object 6D - Asteroids missile
Object_6D:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$80,$02,$A0,$01,$40,$06,$B0
  DEFB $01,$40,$02,$A0,$00,$80,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Object 6E - Asteroids ship 0
  DEFB $00,$00,$01,$80,$01,$80,$02,$C0
  DEFB $03,$40,$02,$C0,$07,$60,$06,$E0
  DEFB $07,$60,$0F,$F0,$0E,$70,$1C,$38
  DEFB $18,$18,$00,$00,$00,$00,$00,$00

; Object 6F - Asteroids ship 1
object_6F:
  DEFB $00,$00,$00,$00,$00,$0C,$00,$3C
  DEFB $00,$F8,$03,$D8,$0F,$B0,$3F,$70
  DEFB $7E,$E0,$7D,$E0,$07,$C0,$03,$C0
  DEFB $03,$80,$03,$80,$03,$00,$00,$00

; Object 70 - Asteroids ship 2
  DEFB $00,$00,$00,$00,$00,$00,$18,$00
  DEFB $1E,$00,$0F,$C0,$07,$F8,$03,$56
  DEFB $02,$AE,$07,$F8,$0F,$C0,$1E,$00
  DEFB $18,$00,$00,$00,$00,$00,$00,$00

; Object 71 - Asteroids ship 3
  DEFB $00,$00,$03,$00,$03,$80,$03,$80
  DEFB $03,$C0,$07,$C0,$7D,$E0,$7E,$E0
  DEFB $3F,$70,$0F,$B0,$03,$D8,$00,$F8
  DEFB $00,$3C,$00,$0C,$00,$00,$00,$00

; Object 72 - Asteroids ship 4
  DEFB $00,$00,$00,$00,$00,$00,$18,$18
  DEFB $1C,$38,$0E,$70,$0F,$F0,$06,$E0
  DEFB $07,$60,$06,$E0,$03,$40,$02,$C0
  DEFB $03,$40,$01,$80,$01,$80,$00,$00

; Object 73 - Asteroids ship 5
  DEFB $00,$00,$00,$C0,$01,$C0,$01,$C0
  DEFB $03,$C0,$03,$E0,$07,$BE,$07,$7E
  DEFB $0E,$FC,$0D,$F0,$1B,$C0,$1F,$00
  DEFB $3C,$00,$30,$00,$00,$00,$00,$00

; Object 74 - Asteroids ship 6
  DEFB $00,$00,$00,$00,$00,$00,$00,$18
  DEFB $00,$78,$03,$F0,$1F,$E0,$75,$40
  DEFB $6A,$C0,$1F,$E0,$03,$F0,$00,$78
  DEFB $00,$18,$00,$00,$00,$00,$00,$00

; Object 75 - Asteroids ship 7
  DEFB $00,$00,$00,$00,$30,$00,$3C,$00
  DEFB $1F,$00,$1B,$C0,$0D,$F0,$0E,$FC
  DEFB $07,$7E,$07,$BE,$03,$E0,$03,$C0
  DEFB $01,$C0,$01,$C0,$00,$C0,$00,$00

; Object 76 - Pound symbol
  DEFB $F0,$07,$00,$00,$E0,$03,$07,$F0
  DEFB $E0,$03,$0F,$F8,$E0,$03,$0E,$38
  DEFB $E0,$83,$0E,$00,$E0,$FF,$0E,$00
  DEFB $00,$0F,$0E,$00,$00,$0F,$7F,$E0
  DEFB $00,$0F,$7F,$E0,$00,$0F,$0E,$00
  DEFB $80,$E3,$0E,$00,$00,$23,$3E,$08
  DEFB $00,$03,$7F,$88,$00,$03,$4F,$F8
  DEFB $00,$03,$39,$F0,$80,$07,$00,$00

; Object 78 - Life raft
Object_78:
  DEFB $80,$01,$00,$00,$00,$00,$33,$CC
  DEFB $00,$00,$4F,$F2,$00,$00,$57,$FA
  DEFB $00,$00,$3B,$F4,$00,$00,$3C,$2C
  DEFB $00,$00,$7A,$5E,$00,$00,$78,$1E
  DEFB $00,$00,$78,$1E,$00,$00,$7A,$5E
  DEFB $00,$00,$34,$3C,$00,$00,$2F,$DC
  DEFB $00,$00,$5F,$EA,$00,$00,$4F,$F2
  DEFB $00,$00,$33,$CC,$80,$01,$00,$00

; Object 7A - Stamp
Object_7A:
  DEFB $80,$01,$2A,$AA,$80,$01,$7E,$FC
  DEFB $80,$01,$3D,$5E,$80,$01,$78,$8C
  DEFB $80,$01,$3A,$56,$80,$01,$75,$2C
  DEFB $80,$01,$2F,$AE,$80,$01,$77,$DC
  DEFB $80,$01,$33,$BE,$80,$01,$7D,$BC
  DEFB $80,$01,$3D,$5E,$80,$01,$7A,$EC
  DEFB $80,$01,$33,$CE,$80,$01,$60,$04
  DEFB $80,$01,$3F,$FE,$80,$01,$55,$54

; Object 7C - 80 - Gas
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $F1,$FF,$00,$00,$E0,$C7,$04,$00
  DEFB $E0,$C7,$0E,$10,$E0,$C7,$0E,$00
  DEFB $E0,$1F,$04,$00,$F0,$01,$00,$40
  DEFB $C6,$01,$00,$E4,$C6,$01,$10,$E0
  DEFB $C0,$01,$00,$40,$E0,$00,$04,$04
  DEFB $E0,$00,$0E,$0E,$E0,$00,$0E,$4E
  DEFB $E0,$00,$04,$04,$F1,$F1,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$C7,$00,$00
  DEFB $FF,$83,$00,$10,$F1,$83,$00,$38
  DEFB $E0,$83,$04,$38,$E0,$83,$0A,$10
  DEFB $E0,$00,$04,$04,$C0,$00,$00,$4E
  DEFB $82,$00,$10,$AE,$82,$00,$38,$44
  DEFB $83,$11,$38,$00,$80,$09,$10,$40
  DEFB $C0,$00,$04,$E4,$E0,$00,$0A,$EA
  DEFB $E0,$00,$04,$44,$F1,$11,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$C7,$00,$00
  DEFB $FF,$83,$00,$10,$FF,$83,$00,$28
  DEFB $F1,$83,$00,$10,$F1,$C1,$04,$00
  DEFB $F1,$E0,$00,$04,$C7,$00,$00,$0A
  DEFB $83,$00,$10,$44,$83,$11,$28,$00
  DEFB $83,$FF,$10,$00,$C7,$1F,$00,$00
  DEFB $F0,$01,$00,$40,$F0,$01,$04,$A4
  DEFB $F0,$01,$00,$40,$FF,$1F,$00,$00

; Object 82 - Left arrow
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $F1,$FF,$00,$00,$E1,$FF,$04,$00
  DEFB $C1,$FF,$0C,$00,$80,$00,$1C,$00
  DEFB $00,$00,$3B,$FE,$00,$00,$77,$FE
  DEFB $00,$00,$76,$02,$00,$00,$3B,$FE
  DEFB $80,$00,$1C,$00,$C1,$FF,$0C,$00
  DEFB $E1,$FF,$04,$00,$F1,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Object 84 - Right arrow
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$8F,$00,$00,$FF,$87,$00,$20
  DEFB $FF,$83,$00,$30,$00,$01,$00,$38
  DEFB $00,$00,$7F,$DC,$00,$00,$7F,$EE
  DEFB $00,$00,$40,$6E,$00,$00,$7F,$DC
  DEFB $00,$01,$00,$38,$FF,$83,$00,$30
  DEFB $FF,$87,$00,$20,$FF,$8F,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Wally
  DEFB $F0,$00,$00,$00,$E0,$00,$07,$3E
  DEFB $E0,$00,$0F,$FF,$80,$00,$07,$FE
  DEFB $80,$00,$3C,$3C,$80,$01,$01,$80
  DEFB $F0,$01,$06,$B4,$F0,$01,$07,$F4
  DEFB $F0,$01,$01,$FC,$FC,$01,$01,$F8
  DEFB $FC,$03,$00,$00,$F8,$01,$01,$F8
  DEFB $F0,$00,$03,$8C,$E0,$00,$07,$76
  DEFB $C0,$00,$0F,$76,$C0,$00,$1F,$8A
  DEFB $80,$00,$3F,$BA,$00,$00,$00,$5A
  DEFB $00,$00,$7F,$DA,$00,$00,$7F,$BC
  DEFB $00,$00,$7F,$A8,$00,$01,$3B,$D0
  DEFB $80,$03,$17,$F0,$C0,$03,$0F,$E8
  DEFB $E0,$03,$0F,$88,$E0,$03,$0F,$98
  DEFB $E0,$03,$07,$D8,$F0,$01,$03,$38
  DEFB $80,$01,$07,$BC,$00,$00,$20,$00
  DEFB $00,$00,$77,$9E,$00,$00,$76,$9A
  DEFB $E0,$00,$07,$3E,$E0,$00,$0F,$FF
  DEFB $80,$00,$07,$FE,$80,$00,$3C,$1C
  DEFB $80,$01,$01,$80,$F0,$01,$06,$B4
  DEFB $F0,$01,$07,$F4,$F0,$01,$01,$FC
  DEFB $FC,$01,$01,$F8,$FC,$03,$00,$00
  DEFB $FC,$01,$01,$F8,$F8,$01,$01,$9C
  DEFB $F0,$00,$03,$6C,$E0,$00,$06,$F6
  DEFB $80,$00,$0F,$0E,$80,$00,$3F,$6E
  DEFB $00,$00,$01,$68,$00,$00,$7F,$6E
  DEFB $00,$00,$7F,$6E,$00,$00,$7E,$F6
  DEFB $00,$00,$3E,$AC,$80,$01,$1F,$58
  DEFB $C0,$03,$0F,$F0,$E0,$07,$07,$F0
  DEFB $F0,$03,$07,$E0,$F0,$01,$03,$E8
  DEFB $F8,$01,$03,$EC,$F8,$01,$01,$DC
  DEFB $E0,$01,$03,$E8,$C0,$03,$08,$10
  DEFB $C0,$07,$1D,$E0,$C0,$0F,$1D,$A0
  DEFB $E0,$00,$07,$3E,$E0,$00,$0F,$FF
  DEFB $80,$00,$07,$FE,$80,$00,$3C,$1C
  DEFB $80,$01,$01,$80,$F0,$01,$06,$B4
  DEFB $F0,$01,$07,$F4,$F0,$01,$01,$FC
  DEFB $FC,$01,$01,$F8,$FC,$03,$00,$00
  DEFB $FC,$01,$01,$F8,$F8,$01,$01,$9C
  DEFB $F0,$00,$03,$6C,$E0,$00,$06,$F6
  DEFB $80,$00,$0E,$06,$80,$00,$3F,$6E
  DEFB $00,$00,$02,$D0,$00,$00,$7E,$DE
  DEFB $00,$00,$7E,$DE,$00,$00,$7D,$EE
  DEFB $00,$00,$3D,$5C,$80,$01,$1E,$B8
  DEFB $C0,$03,$0B,$F0,$C0,$07,$13,$F0
  DEFB $C0,$07,$1B,$F0,$C0,$03,$0D,$F0
  DEFB $E0,$03,$02,$F8,$C0,$03,$0A,$70
  DEFB $C0,$03,$1D,$78,$C0,$03,$1A,$00
  DEFB $C0,$03,$07,$78,$F0,$03,$07,$68
  DEFB $F0,$00,$00,$00,$E0,$00,$07,$3E
  DEFB $E0,$00,$0F,$FF,$80,$00,$07,$FE
  DEFB $80,$00,$3C,$1C,$80,$01,$01,$80
  DEFB $F0,$01,$06,$B4,$F0,$01,$07,$F4
  DEFB $F0,$01,$01,$FC,$FC,$01,$01,$F8
  DEFB $FC,$03,$00,$00,$F8,$01,$01,$FC
  DEFB $F0,$00,$03,$9C,$E0,$00,$07,$6E
  DEFB $C0,$00,$0E,$F6,$C0,$00,$1F,$2E
  DEFB $80,$00,$3E,$DE,$00,$00,$02,$D0
  DEFB $00,$00,$7D,$DE,$00,$00,$7B,$BE
  DEFB $00,$00,$7A,$BC,$00,$01,$3D,$78
  DEFB $80,$03,$1F,$F8,$C0,$03,$07,$F8
  DEFB $E0,$03,$0B,$F8,$E0,$03,$0D,$F8
  DEFB $E0,$03,$06,$F8,$F0,$01,$03,$78
  DEFB $80,$01,$07,$3C,$00,$00,$20,$80
  DEFB $00,$00,$75,$DE,$00,$00,$75,$DA
  DEFB $E0,$00,$07,$3E,$E0,$00,$0F,$FF
  DEFB $80,$00,$07,$FE,$80,$00,$3C,$1C
  DEFB $80,$01,$01,$80,$F0,$01,$06,$B4
  DEFB $F0,$01,$07,$F4,$F0,$01,$01,$FC
  DEFB $FC,$01,$01,$F8,$FC,$03,$00,$00
  DEFB $FC,$01,$01,$F8,$F8,$01,$01,$9C
  DEFB $F0,$00,$03,$6C,$E0,$00,$06,$F6
  DEFB $80,$00,$0E,$06,$80,$00,$3F,$6E
  DEFB $00,$00,$02,$D0,$00,$00,$7E,$DE
  DEFB $00,$00,$7E,$DE,$00,$00,$7D,$EE
  DEFB $00,$00,$3D,$5C,$80,$01,$1E,$B8
  DEFB $C0,$03,$0F,$F0,$E0,$07,$07,$80
  DEFB $F0,$03,$07,$A0,$F0,$01,$07,$E8
  DEFB $F0,$01,$01,$EC,$F8,$01,$02,$1C
  DEFB $E0,$01,$02,$D0,$C0,$07,$08,$E0
  DEFB $C0,$0F,$1D,$00,$C0,$0F,$1D,$A0
  DEFB $E0,$00,$07,$3E,$E0,$00,$0F,$FF
  DEFB $80,$00,$07,$FE,$80,$00,$3C,$1C
  DEFB $80,$01,$01,$80,$F0,$01,$06,$B4
  DEFB $F0,$01,$07,$F4,$F0,$01,$01,$FC
  DEFB $FC,$01,$01,$F8,$FC,$03,$00,$00
  DEFB $FC,$01,$01,$F8,$F8,$01,$01,$9C
  DEFB $F0,$00,$03,$6C,$E0,$00,$06,$F6
  DEFB $80,$00,$0F,$0E,$80,$00,$3F,$6E
  DEFB $00,$00,$01,$68,$00,$00,$7F,$6E
  DEFB $00,$00,$7E,$F6,$00,$00,$7E,$AC
  DEFB $00,$01,$37,$58,$80,$03,$17,$F0
  DEFB $C0,$03,$0F,$E0,$C0,$03,$1F,$88
  DEFB $C0,$03,$1F,$38,$C0,$03,$0F,$D8
  DEFB $E0,$03,$03,$E8,$C0,$03,$08,$18
  DEFB $C0,$03,$1D,$E8,$C0,$03,$1D,$A0
  DEFB $C0,$03,$02,$58,$F0,$03,$07,$68
  DEFB $F0,$00,$00,$00,$E0,$00,$07,$3E
  DEFB $E0,$00,$0F,$FF,$80,$00,$07,$FE
  DEFB $80,$00,$3C,$3C,$80,$01,$01,$80
  DEFB $F0,$01,$06,$B4,$F0,$01,$07,$F4
  DEFB $F0,$01,$01,$FC,$FC,$01,$01,$F8
  DEFB $FC,$03,$00,$00,$F8,$01,$01,$F8
  DEFB $F0,$00,$03,$8C,$E0,$00,$07,$76
  DEFB $C0,$00,$0F,$76,$C0,$00,$1E,$AE
  DEFB $80,$00,$39,$DE,$00,$00,$17,$A0
  DEFB $00,$00,$6F,$7E,$00,$00,$6C,$FC
  DEFB $00,$01,$73,$FC,$00,$01,$3F,$F8
  DEFB $80,$01,$17,$F4,$C0,$01,$0F,$EC
  DEFB $00,$00,$0F,$DC,$00,$00,$DF,$3A
  DEFB $00,$00,$CE,$15,$00,$80,$AC,$0E
  DEFB $01,$80,$70,$34,$03,$81,$28,$38
  DEFB $83,$83,$10,$10,$C7,$C7,$00,$00
  DEFB $F0,$00,$00,$00,$E0,$00,$07,$3E
  DEFB $E0,$00,$0F,$FF,$80,$00,$07,$FE
  DEFB $80,$00,$3C,$1C,$80,$01,$01,$80
  DEFB $F0,$01,$06,$B4,$F0,$01,$07,$F4
  DEFB $F0,$01,$01,$FC,$FC,$01,$01,$F8
  DEFB $FC,$01,$00,$00,$F8,$01,$01,$FC
  DEFB $80,$00,$02,$1C,$00,$00,$31,$EE
  DEFB $00,$00,$6F,$F6,$00,$00,$6F,$EE
  DEFB $80,$00,$00,$0E,$00,$00,$1F,$F0
  DEFB $00,$00,$7F,$FE,$00,$00,$7B,$FE
  DEFB $00,$00,$37,$FC,$00,$00,$17,$F8
  DEFB $00,$00,$CF,$E3,$00,$00,$EF,$DA
  DEFB $00,$00,$CF,$3B,$00,$00,$1E,$FB
  DEFB $00,$00,$DC,$18,$01,$C0,$D8,$03
  DEFB $03,$F0,$50,$07,$07,$F0,$C0,$03
  DEFB $1F,$F8,$00,$00,$FF,$FF,$00,$00

; Wilma
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$16,$F8,$C0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$E0,$F0,$07,$00,$70
  DEFB $E0,$07,$07,$60,$E0,$07,$0B,$70
  DEFB $E0,$03,$0B,$60,$E0,$03,$0B,$78
  DEFB $E0,$1F,$0B,$40,$E0,$1F,$07,$40
  DEFB $F0,$0F,$03,$40,$F8,$0F,$03,$60
  DEFB $F8,$0F,$03,$60,$F8,$0F,$02,$E0
  DEFB $F8,$07,$03,$60,$F8,$07,$02,$F0
  DEFB $F0,$03,$01,$F0,$F0,$03,$07,$F8
  DEFB $F0,$03,$00,$00,$F0,$03,$07,$38
  DEFB $F0,$03,$06,$18,$E0,$C1,$04,$08
  DEFB $C1,$C1,$0C,$0C,$C1,$C1,$14,$14
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0E,$E0
  DEFB $C0,$07,$1F,$F0,$C0,$07,$19,$D0
  DEFB $C0,$03,$06,$F0,$F0,$03,$06,$F8
  DEFB $F0,$03,$02,$F0,$E0,$07,$02,$D0
  DEFB $E0,$07,$0E,$F0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$F0,$F0,$07,$00,$60
  DEFB $E0,$07,$07,$70,$E0,$03,$0B,$60
  DEFB $E0,$03,$0B,$78,$E0,$03,$0B,$00
  DEFB $E0,$1F,$0B,$40,$E0,$1F,$07,$40
  DEFB $F0,$0F,$03,$40,$F8,$0F,$03,$60
  DEFB $F0,$0F,$03,$60,$F0,$0F,$06,$E0
  DEFB $F0,$0F,$06,$E0,$F0,$0F,$01,$C0
  DEFB $F0,$1F,$07,$C0,$F0,$1F,$00,$00
  DEFB $F0,$07,$06,$C0,$F0,$07,$02,$D0
  DEFB $F8,$07,$00,$D0,$FC,$07,$00,$A0
  DEFB $F8,$0F,$01,$A0,$F8,$0F,$02,$80
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$06,$F8,$F0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$E0,$F0,$07,$00,$70
  DEFB $E0,$03,$07,$60,$E0,$03,$0B,$78
  DEFB $E0,$03,$0B,$00,$E0,$1F,$0B,$40
  DEFB $F0,$1F,$07,$40,$E0,$0F,$06,$C0
  DEFB $C0,$0F,$0E,$E0,$C0,$0F,$1D,$E0
  DEFB $C0,$0F,$1B,$E0,$C0,$0F,$03,$E0
  DEFB $F0,$0F,$07,$C0,$F0,$0F,$07,$C0
  DEFB $F0,$0F,$07,$E0,$F0,$0F,$00,$00
  DEFB $F0,$0F,$06,$E0,$F0,$0F,$04,$60
  DEFB $E0,$0F,$06,$60,$E0,$07,$0A,$20
  DEFB $E0,$07,$00,$30,$FF,$07,$00,$50
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$06,$F8,$F0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$E0,$F0,$07,$00,$70
  DEFB $E0,$03,$07,$60,$E0,$03,$0B,$78
  DEFB $E0,$03,$0B,$00,$E0,$1F,$0B,$40
  DEFB $E0,$1F,$0B,$40,$C0,$0F,$07,$40
  DEFB $C0,$0F,$1E,$E0,$C0,$0F,$19,$E0
  DEFB $C0,$0F,$03,$E0,$F8,$0F,$03,$E0
  DEFB $F8,$07,$03,$E0,$F0,$03,$03,$F0
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $F0,$03,$07,$38,$F0,$03,$06,$18
  DEFB $F0,$C3,$06,$18,$E0,$C1,$04,$08
  DEFB $C1,$C1,$0C,$0C,$C1,$C1,$14,$14
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$06,$F8,$F0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$E0,$F0,$07,$00,$70
  DEFB $E0,$03,$07,$60,$E0,$03,$0B,$78
  DEFB $E0,$03,$0B,$00,$E0,$1F,$0B,$40
  DEFB $F0,$1F,$07,$40,$F0,$1F,$06,$C0
  DEFB $E0,$0F,$06,$C0,$E0,$0F,$0E,$E0
  DEFB $C0,$0F,$0D,$E0,$C0,$0F,$1B,$E0
  DEFB $C0,$0F,$1B,$E0,$C0,$0F,$07,$C0
  DEFB $F0,$1F,$07,$C0,$F0,$1F,$00,$00
  DEFB $F0,$07,$07,$80,$F0,$07,$01,$F0
  DEFB $FC,$07,$00,$20,$FC,$0F,$00,$A0
  DEFB $F8,$0F,$01,$80,$F8,$3F,$02,$80
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0E,$E0
  DEFB $C0,$07,$1F,$F0,$C0,$07,$19,$D0
  DEFB $C0,$03,$06,$F0,$F0,$03,$06,$F8
  DEFB $F0,$03,$02,$F0,$E0,$07,$02,$D0
  DEFB $E0,$07,$0E,$F0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$F0,$F0,$07,$00,$60
  DEFB $E0,$07,$07,$70,$E0,$03,$0B,$60
  DEFB $E0,$03,$0B,$78,$E0,$03,$0B,$00
  DEFB $E0,$1F,$0B,$40,$E0,$1F,$07,$40
  DEFB $F0,$0F,$03,$40,$F0,$0F,$06,$E0
  DEFB $E0,$0F,$06,$E0,$E0,$0F,$0D,$E0
  DEFB $E0,$0F,$0D,$C0,$E0,$0F,$03,$C0
  DEFB $F0,$0F,$07,$E0,$F0,$0F,$00,$00
  DEFB $F0,$0F,$06,$E0,$F0,$0F,$04,$60
  DEFB $E0,$0F,$06,$60,$E0,$07,$0A,$20
  DEFB $E0,$07,$00,$30,$FF,$07,$00,$50
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$16,$F8,$C0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$E0,$F0,$07,$00,$70
  DEFB $E0,$07,$07,$60,$E0,$07,$0B,$70
  DEFB $E0,$03,$0B,$60,$E0,$03,$0B,$78
  DEFB $E0,$1F,$0B,$40,$C0,$0F,$07,$40
  DEFB $C0,$0F,$1E,$E0,$C0,$0F,$19,$E0
  DEFB $C0,$0F,$03,$E0,$F0,$07,$03,$E0
  DEFB $F0,$07,$07,$F0,$E0,$03,$07,$F0
  DEFB $E0,$03,$0F,$F8,$C0,$03,$03,$C0
  DEFB $80,$01,$1C,$38,$01,$80,$38,$1C
  DEFB $03,$C0,$40,$02,$1F,$F8,$C0,$03
  DEFB $1F,$F8,$00,$00,$FF,$FF,$00,$00
  DEFB $E0,$0F,$07,$C0,$C0,$07,$0D,$60
  DEFB $C0,$07,$1F,$B0,$C0,$03,$19,$D0
  DEFB $C0,$03,$16,$F8,$C0,$03,$06,$D0
  DEFB $F0,$03,$02,$F8,$E0,$03,$02,$D0
  DEFB $E0,$07,$0E,$B0,$E0,$07,$06,$E0
  DEFB $F0,$07,$00,$F0,$F0,$07,$00,$60
  DEFB $E0,$07,$07,$70,$E0,$03,$0B,$60
  DEFB $E0,$03,$06,$78,$E0,$03,$0E,$80
  DEFB $80,$1F,$1D,$C0,$80,$1F,$3B,$C0
  DEFB $80,$0F,$31,$C0,$80,$0F,$03,$E0
  DEFB $F8,$07,$03,$E0,$F0,$07,$03,$F0
  DEFB $E0,$03,$07,$F0,$E0,$00,$0F,$F8
  DEFB $E0,$00,$08,$FA,$E0,$00,$06,$77
  DEFB $F0,$00,$04,$00,$F0,$FF,$06,$00
  DEFB $F0,$FF,$06,$00,$F0,$FF,$04,$00
  DEFB $F1,$FF,$00,$00,$FF,$FF,$00,$00

; Tom
  DEFB $01,$FF,$00,$00,$00,$FF,$54,$00
  DEFB $00,$7F,$7E,$00,$00,$7F,$C3,$00
  DEFB $00,$3F,$3D,$00,$00,$3F,$7E,$80
  DEFB $00,$3F,$1A,$80,$00,$0F,$F6,$00
  DEFB $00,$07,$3D,$E0,$80,$03,$1B,$30
  DEFB $80,$03,$36,$D8,$80,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$04,$D8
  DEFB $F8,$07,$02,$D0,$F8,$03,$00,$C0
  DEFB $F0,$03,$02,$D8,$F0,$03,$06,$D8
  DEFB $E0,$03,$05,$D0,$E0,$03,$0D,$C8
  DEFB $E0,$03,$0E,$38,$E0,$83,$0C,$38
  DEFB $E0,$83,$0E,$38,$C0,$81,$04,$08
  DEFB $C0,$81,$1E,$3C,$C0,$81,$04,$08
  DEFB $E1,$C3,$0C,$18,$80,$01,$0C,$18
  DEFB $80,$01,$2E,$5C,$80,$01,$32,$64
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$80,$03,$36,$D8
  DEFB $80,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$05,$D8
  DEFB $F0,$03,$05,$D8,$F0,$03,$05,$D0
  DEFB $F0,$03,$03,$80,$F0,$03,$07,$78
  DEFB $C0,$03,$06,$F8,$C0,$03,$1C,$F0
  DEFB $C0,$07,$19,$E0,$C0,$0F,$03,$C0
  DEFB $F8,$1F,$03,$80,$F8,$1F,$03,$C0
  DEFB $F8,$07,$01,$C0,$F8,$07,$01,$B0
  DEFB $F8,$07,$03,$D0,$F8,$01,$00,$B0
  DEFB $FC,$01,$01,$9C,$E0,$01,$01,$9C
  DEFB $E0,$01,$0B,$D8,$E0,$03,$0E,$50
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$80,$03,$36,$D8
  DEFB $80,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$03,$E8,$F0,$03,$03,$D8
  DEFB $C0,$03,$07,$B8,$00,$03,$1F,$70
  DEFB $00,$03,$FC,$00,$00,$03,$D1,$F8
  DEFB $00,$03,$01,$F8,$F0,$03,$02,$F0
  DEFB $F0,$07,$06,$F0,$E0,$07,$06,$E0
  DEFB $E0,$0F,$0E,$E0,$E0,$0F,$0C,$C0
  DEFB $E0,$0F,$06,$60,$F0,$03,$07,$60
  DEFB $C0,$03,$02,$F8,$C0,$03,$17,$10
  DEFB $C0,$07,$1D,$30,$C0,$03,$00,$30
  DEFB $FC,$03,$01,$78,$FC,$03,$01,$C8
  DEFB $01,$FF,$00,$00,$00,$FF,$54,$00
  DEFB $00,$7F,$7E,$00,$00,$7F,$C3,$00
  DEFB $00,$3F,$3D,$00,$00,$3F,$7E,$80
  DEFB $00,$3F,$1A,$80,$00,$0F,$F6,$00
  DEFB $00,$07,$3D,$E0,$80,$03,$1B,$30
  DEFB $80,$03,$36,$D8,$80,$03,$06,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$03,$E8
  DEFB $F0,$03,$03,$D8,$00,$03,$07,$B8
  DEFB $00,$03,$DF,$70,$00,$03,$FE,$00
  DEFB $00,$03,$00,$F8,$F0,$03,$03,$78
  DEFB $F0,$03,$07,$78,$E0,$03,$07,$B8
  DEFB $E0,$03,$0F,$38,$E0,$03,$0C,$38
  DEFB $E0,$83,$0E,$38,$E0,$83,$04,$10
  DEFB $E0,$83,$0E,$38,$E0,$83,$04,$10
  DEFB $E1,$C3,$0C,$18,$80,$01,$0C,$18
  DEFB $80,$01,$2E,$5C,$80,$01,$32,$64
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$80,$03,$36,$D8
  DEFB $80,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$03,$D8,$E0,$03,$07,$B0
  DEFB $00,$03,$0F,$00,$00,$03,$7C,$F8
  DEFB $00,$03,$71,$F0,$04,$07,$21,$E0
  DEFB $88,$07,$01,$E0,$F8,$07,$02,$F0
  DEFB $F8,$07,$03,$70,$F8,$03,$03,$70
  DEFB $F8,$01,$03,$98,$F0,$01,$01,$BC
  DEFB $F0,$01,$07,$C8,$F0,$01,$00,$98
  DEFB $FC,$01,$01,$9C,$F0,$01,$01,$9C
  DEFB $F0,$01,$05,$98,$F0,$03,$06,$B0
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$80,$03,$36,$D8
  DEFB $80,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$05,$E8,$F0,$03,$05,$D0
  DEFB $F8,$03,$01,$C0,$F0,$03,$03,$B8
  DEFB $E0,$03,$07,$78,$E0,$03,$0E,$F0
  DEFB $E0,$07,$0D,$E0,$E0,$07,$03,$90
  DEFB $E0,$07,$0E,$30,$E0,$07,$04,$70
  DEFB $E0,$07,$0F,$70,$E0,$03,$02,$20
  DEFB $C0,$03,$03,$78,$C0,$03,$17,$90
  DEFB $C0,$07,$1C,$B0,$C0,$03,$00,$30
  DEFB $FC,$03,$01,$78,$FC,$03,$01,$C8
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$80,$03,$36,$D8
  DEFB $80,$03,$05,$E8,$F0,$03,$05,$E8
  DEFB $F0,$03,$03,$E8,$F0,$03,$03,$D8
  DEFB $C0,$03,$07,$B8,$00,$03,$1F,$70
  DEFB $00,$03,$FC,$00,$00,$03,$D1,$F8
  DEFB $00,$03,$01,$F8,$E0,$03,$06,$F8
  DEFB $E0,$03,$0E,$F0,$C0,$01,$0F,$78
  DEFB $C0,$01,$16,$3C,$80,$81,$0C,$0C
  DEFB $81,$C0,$30,$18,$03,$C0,$18,$06
  DEFB $03,$F0,$B0,$07,$03,$C0,$F8,$04
  DEFB $03,$C1,$08,$14,$E3,$C1,$00,$18
  DEFB $FF,$C3,$00,$00,$FF,$FF,$00,$00
  DEFB $00,$FF,$54,$00,$00,$7F,$7E,$00
  DEFB $00,$7F,$C3,$00,$00,$3F,$3D,$00
  DEFB $00,$3F,$7E,$80,$00,$3F,$1A,$80
  DEFB $00,$0F,$F6,$00,$00,$07,$3D,$E0
  DEFB $80,$03,$1B,$30,$00,$03,$34,$D8
  DEFB $00,$03,$C3,$E8,$00,$03,$FF,$E8
  DEFB $00,$03,$FF,$D8,$00,$03,$00,$38
  DEFB $F0,$03,$07,$F8,$F0,$03,$03,$F0
  DEFB $C0,$03,$00,$00,$80,$03,$1B,$F8
  DEFB $80,$03,$3D,$F8,$80,$03,$3D,$F0
  DEFB $80,$07,$35,$E0,$80,$07,$39,$E0
  DEFB $80,$00,$10,$F0,$00,$00,$18,$F3
  DEFB $00,$00,$BC,$7E,$01,$00,$E4,$16
  DEFB $01,$C0,$00,$03,$FF,$F8,$00,$01
  DEFB $FF,$F8,$00,$03,$FF,$F8,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Dick
  DEFB $FC,$3F,$00,$00,$FC,$3F,$01,$80
  DEFB $F8,$0F,$00,$00,$F0,$07,$03,$E0
  DEFB $E0,$07,$04,$10,$E0,$07,$0F,$F0
  DEFB $E0,$07,$00,$00,$C0,$07,$09,$90
  DEFB $C0,$07,$1F,$10,$C0,$07,$07,$A0
  DEFB $E0,$0F,$0E,$E0,$E0,$01,$0D,$00
  DEFB $E0,$01,$03,$FC,$F0,$01,$07,$18
  DEFB $E0,$01,$06,$E8,$E0,$01,$0E,$EC
  DEFB $C0,$01,$1F,$74,$C0,$01,$00,$30
  DEFB $C0,$01,$1F,$B4,$C0,$01,$1F,$C0
  DEFB $C0,$03,$0F,$D8,$E0,$03,$07,$D8
  DEFB $F0,$03,$03,$E0,$F0,$03,$03,$F0
  DEFB $F0,$03,$07,$C8,$F0,$03,$07,$B8
  DEFB $F0,$03,$07,$38,$E0,$01,$00,$00
  DEFB $E0,$01,$0F,$3C,$E0,$01,$00,$00
  DEFB $80,$01,$0F,$3C,$80,$01,$3B,$6C
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$70
  DEFB $F0,$01,$06,$8C,$F0,$01,$01,$F8
  DEFB $F0,$03,$03,$38,$E0,$01,$06,$D8
  DEFB $C0,$01,$0E,$EC,$C0,$01,$1E,$EC
  DEFB $C0,$01,$00,$E0,$C0,$01,$1F,$6C
  DEFB $C0,$01,$1F,$6C,$C0,$01,$1F,$9C
  DEFB $C0,$01,$0F,$6C,$E0,$01,$07,$68
  DEFB $F0,$03,$03,$90,$F8,$07,$03,$E0
  DEFB $F8,$0F,$03,$C0,$F8,$0F,$03,$80
  DEFB $F8,$0F,$03,$A0,$F8,$03,$00,$20
  DEFB $F8,$03,$03,$D8,$F0,$03,$00,$30
  DEFB $C0,$07,$07,$A0,$C0,$0F,$1D,$80
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$70
  DEFB $F0,$01,$06,$8C,$F0,$01,$01,$F8
  DEFB $F0,$03,$03,$18,$E0,$01,$06,$E8
  DEFB $C0,$01,$0E,$EC,$C0,$01,$1E,$EC
  DEFB $C0,$01,$01,$C0,$C0,$01,$1D,$BC
  DEFB $C0,$01,$1D,$BC,$C0,$01,$0C,$7C
  DEFB $E0,$01,$03,$7C,$F0,$01,$03,$78
  DEFB $E0,$03,$04,$F8,$E0,$03,$0F,$78
  DEFB $E0,$03,$00,$78,$F0,$03,$07,$B8
  DEFB $E0,$03,$00,$38,$80,$03,$0F,$00
  DEFB $80,$03,$3B,$78,$80,$03,$00,$00
  DEFB $F8,$07,$00,$F0,$F8,$07,$03,$B0
  DEFB $FF,$0F,$00,$00,$FF,$0F,$00,$60
  DEFB $F8,$0F,$00,$00,$F0,$07,$03,$E0
  DEFB $E0,$07,$04,$10,$E0,$07,$0F,$F0
  DEFB $E0,$07,$00,$00,$C0,$07,$09,$90
  DEFB $C0,$07,$1F,$10,$C0,$07,$07,$A0
  DEFB $E0,$0F,$0E,$E0,$E0,$01,$0D,$00
  DEFB $E0,$01,$03,$FC,$F0,$01,$07,$18
  DEFB $E0,$01,$06,$E8,$E0,$01,$0E,$EC
  DEFB $C0,$01,$1E,$EC,$C0,$01,$00,$E0
  DEFB $C0,$01,$1E,$EC,$C0,$01,$1E,$EC
  DEFB $C0,$01,$0F,$1C,$E0,$01,$06,$DC
  DEFB $F0,$01,$02,$D8,$F8,$03,$01,$38
  DEFB $F0,$03,$02,$F8,$F0,$03,$07,$78
  DEFB $F0,$03,$07,$B8,$E0,$01,$00,$00
  DEFB $E0,$01,$0F,$3C,$E0,$01,$00,$00
  DEFB $80,$01,$0F,$3C,$80,$01,$3A,$EC
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$70
  DEFB $F0,$01,$06,$8C,$F0,$01,$01,$F8
  DEFB $F0,$03,$03,$18,$E0,$01,$06,$E8
  DEFB $C0,$01,$0E,$F4,$C0,$01,$1E,$F4
  DEFB $C0,$01,$00,$70,$C0,$01,$1F,$74
  DEFB $C0,$01,$1F,$74,$C0,$01,$1F,$8C
  DEFB $C0,$01,$0F,$6C,$E0,$01,$07,$6C
  DEFB $F0,$01,$03,$98,$F8,$03,$01,$F0
  DEFB $F8,$07,$02,$E0,$F8,$07,$02,$E0
  DEFB $F8,$07,$03,$70,$F8,$03,$00,$40
  DEFB $F8,$03,$03,$B8,$F0,$03,$00,$30
  DEFB $C0,$07,$06,$E0,$C0,$0F,$1D,$00
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$70
  DEFB $F0,$01,$06,$8C,$F0,$01,$01,$F8
  DEFB $F0,$03,$03,$18,$E0,$01,$06,$E8
  DEFB $C0,$01,$0E,$EC,$C0,$01,$1F,$74
  DEFB $C0,$01,$00,$70,$C0,$01,$1F,$74
  DEFB $C0,$01,$1F,$8C,$C0,$01,$0D,$B4
  DEFB $E0,$01,$03,$B4,$F0,$01,$03,$C8
  DEFB $E0,$03,$07,$D0,$E0,$03,$0F,$B8
  DEFB $E0,$03,$00,$78,$F0,$03,$07,$B8
  DEFB $F0,$03,$00,$38,$C0,$03,$07,$80
  DEFB $C0,$03,$1D,$B8,$C0,$03,$00,$00
  DEFB $FC,$03,$00,$78,$FC,$03,$01,$D8
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$70
  DEFB $F0,$01,$06,$8C,$F0,$01,$01,$F8
  DEFB $F0,$03,$03,$18,$E0,$01,$06,$E8
  DEFB $C0,$01,$0E,$EC,$C0,$01,$1E,$EC
  DEFB $C0,$01,$1E,$EC,$C0,$01,$04,$C0
  DEFB $C0,$01,$1B,$3C,$C0,$01,$1B,$78
  DEFB $C0,$03,$0C,$F8,$E0,$03,$07,$F8
  DEFB $F0,$03,$03,$F0,$E0,$07,$07,$E0
  DEFB $00,$03,$0F,$D0,$00,$00,$B7,$B8
  DEFB $00,$00,$9A,$76,$00,$00,$E8,$2C
  DEFB $03,$80,$30,$06,$87,$F0,$30,$02
  DEFB $87,$F8,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$0F,$00,$60,$FC,$07,$00,$00
  DEFB $F8,$03,$01,$F0,$F0,$03,$02,$08
  DEFB $F0,$03,$07,$F8,$F0,$03,$00,$00
  DEFB $E0,$03,$04,$C8,$E0,$03,$0F,$88
  DEFB $E0,$03,$03,$D0,$F0,$01,$07,$F0
  DEFB $F0,$01,$07,$04,$00,$01,$00,$F8
  DEFB $00,$03,$6F,$F8,$00,$03,$6F,$F0
  DEFB $00,$03,$00,$08,$C0,$03,$1F,$F8
  DEFB $C0,$01,$00,$00,$C0,$01,$1F,$FC
  DEFB $C0,$01,$1F,$FC,$C0,$00,$1F,$FC
  DEFB $00,$00,$0C,$FB,$00,$00,$83,$FB
  DEFB $00,$00,$97,$F2,$00,$00,$D7,$CB
  DEFB $00,$00,$56,$01,$00,$FC,$D0,$01
  DEFB $07,$FC,$C0,$00,$1F,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Harry
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$0F,$75,$40
  DEFB $00,$0F,$6A,$A0,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$07,$15,$40
  DEFB $C0,$03,$0A,$10,$C0,$03,$14,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$03,$68
  DEFB $F8,$03,$03,$68,$F8,$03,$00,$60
  DEFB $F8,$01,$03,$88,$F8,$01,$03,$B4
  DEFB $F8,$01,$03,$B4,$F0,$01,$03,$CC
  DEFB $F0,$01,$07,$FC,$F0,$01,$02,$A8
  DEFB $E0,$03,$05,$50,$E0,$07,$0D,$E0
  DEFB $E0,$0F,$0D,$C0,$E0,$07,$06,$E0
  DEFB $80,$03,$06,$30,$80,$03,$39,$D8
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$E0,$C0,$03,$15,$10
  DEFB $C0,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$03,$68
  DEFB $F8,$03,$00,$60,$F8,$01,$03,$98
  DEFB $F8,$01,$03,$6C,$F8,$01,$03,$6C
  DEFB $F0,$01,$03,$9C,$F0,$01,$07,$FC
  DEFB $F0,$01,$02,$A8,$F0,$03,$01,$50
  DEFB $F0,$07,$05,$E0,$F0,$0F,$05,$80
  DEFB $F0,$0F,$05,$C0,$F0,$07,$02,$E0
  DEFB $C0,$07,$00,$70,$C0,$07,$1B,$80
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$E0,$C0,$03,$15,$10
  DEFB $C0,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$00,$C0,$F8,$01,$03,$38
  DEFB $F8,$01,$02,$DC,$F8,$01,$02,$DC
  DEFB $F0,$01,$03,$3C,$F0,$01,$07,$FC
  DEFB $F0,$01,$02,$A8,$F8,$03,$01,$50
  DEFB $F8,$07,$03,$D0,$F8,$07,$03,$B0
  DEFB $F8,$07,$01,$B0,$FC,$03,$01,$D0
  DEFB $F0,$03,$00,$E8,$F0,$03,$07,$70
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$C1,$FF,$00,$00
  DEFB $80,$FF,$14,$00,$00,$7F,$2A,$00
  DEFB $00,$3F,$55,$00,$00,$3F,$0A,$80
  DEFB $00,$3F,$D5,$00,$00,$1F,$6A,$80
  DEFB $00,$0F,$35,$40,$80,$0F,$2A,$A0
  DEFB $80,$0F,$15,$40,$C0,$07,$0A,$E0
  DEFB $C0,$03,$15,$10,$C0,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$00,$C0
  DEFB $F8,$01,$02,$58,$F8,$01,$01,$BC
  DEFB $F8,$01,$01,$BC,$F0,$01,$02,$7C
  DEFB $F0,$01,$07,$FC,$F0,$01,$02,$A8
  DEFB $E0,$03,$05,$D0,$E0,$07,$0F,$20
  DEFB $E0,$0F,$0E,$E0,$E0,$0F,$07,$60
  DEFB $80,$07,$07,$60,$80,$07,$3B,$B0
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$E0,$C0,$03,$15,$10
  DEFB $C0,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$00,$E0,$F8,$01,$03,$28
  DEFB $F8,$01,$02,$DC,$F8,$01,$02,$DC
  DEFB $F0,$01,$03,$3C,$F0,$01,$07,$FC
  DEFB $F0,$01,$02,$A8,$F8,$03,$01,$70
  DEFB $F0,$07,$03,$C0,$F0,$1F,$07,$80
  DEFB $F0,$0F,$07,$40,$F0,$07,$03,$A0
  DEFB $C0,$07,$03,$B0,$C0,$07,$1D,$C0
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$E0,$C0,$03,$15,$10
  DEFB $C0,$03,$02,$E8,$F8,$03,$02,$E8
  DEFB $F8,$03,$02,$E8,$F8,$03,$03,$68
  DEFB $F8,$03,$00,$60,$F8,$01,$03,$48
  DEFB $F8,$01,$03,$B4,$F8,$01,$03,$B4
  DEFB $F0,$01,$03,$CC,$F0,$01,$07,$FC
  DEFB $F0,$01,$02,$A8,$F8,$03,$01,$50
  DEFB $F0,$07,$02,$E0,$F0,$0F,$05,$C0
  DEFB $F0,$0F,$05,$E0,$F0,$07,$02,$E0
  DEFB $C0,$03,$00,$70,$C0,$03,$1B,$B8
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$E0,$C0,$03,$15,$10
  DEFB $C0,$03,$02,$E8,$F0,$03,$00,$E8
  DEFB $C0,$03,$1B,$E8,$C0,$03,$1B,$D8
  DEFB $C0,$03,$00,$00,$F0,$03,$03,$F8
  DEFB $F0,$01,$07,$F8,$C0,$01,$07,$FC
  DEFB $80,$01,$1B,$FC,$80,$00,$3B,$FC
  DEFB $80,$00,$33,$FD,$80,$00,$32,$AB
  DEFB $80,$00,$38,$16,$83,$80,$38,$3D
  DEFB $01,$80,$18,$1D,$01,$C0,$EC,$01
  DEFB $01,$FC,$00,$00,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$00,$E0,$FF,$00,$00
  DEFB $C0,$7F,$0A,$00,$80,$3F,$15,$00
  DEFB $80,$3F,$2A,$80,$00,$3F,$15,$00
  DEFB $00,$1F,$CA,$80,$00,$1F,$75,$40
  DEFB $00,$1F,$6A,$80,$00,$0F,$35,$40
  DEFB $80,$0F,$0A,$A0,$C0,$0F,$15,$40
  DEFB $C0,$07,$0A,$20,$00,$03,$01,$D0
  DEFB $00,$03,$DF,$E8,$00,$03,$DF,$E8
  DEFB $00,$03,$00,$18,$F8,$03,$03,$F8
  DEFB $F8,$03,$00,$00,$F0,$03,$03,$F8
  DEFB $E0,$01,$07,$F8,$00,$01,$0B,$FC
  DEFB $00,$00,$9B,$FC,$00,$00,$BB,$FD
  DEFB $00,$00,$BA,$AB,$00,$00,$70,$16
  DEFB $07,$80,$E0,$3D,$0F,$80,$80,$1D
  DEFB $3F,$C0,$00,$01,$FF,$FC,$00,$00
  DEFB $FF,$FF,$00,$00,$FF,$FF,$00,$00

; Temporary X co-ordinate for putting static objects on screen
;
; Used by the routine at Draw_Non_Mask.
Draw_XPos:
  DEFB $00

; Temporary Y co-ordinate for putting static objects on screen
;
; Used by the routine at Draw_Non_Mask.
Draw_YPos:
  DEFB $00

; Unused
  DEFS $01

; Temporary store for the stack pointer for putting static objects on screen
Draw_SP:
  DEFW $0000

; Put a static object in the sprite buffer, without a mask
;
; Used by the routines at Update_Room, Logic_Zoo, Logic_Wall_Street,
; Logic_Motor_Way, Logic_Town_Square, Logic_Bank, Logic_Wallys_House,
; Logic_School, Handle_Food, Space_Check_Movement and Space_Check_Fire.
;
; A ID of the object to draw.
;
; The location of the object to draw is stored at Draw_XPos.
;
; This routine is a copy of code used in Pyjamarama, the previous game in the
; series.
Draw_Non_Mask:
  DI                      ; Disable interrupts.
  EXX                     ; Exchange all main registers.
  PUSH AF                 ; Remember the object ID.
  LD (Draw_SP),SP         ; Remember the current stack pointer in Draw_SP.
  LD L,A                  ; Put the object ID in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 32 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD SP,Object_00         ; Point the stack at the start of the graphics
                          ; buffer. (Object_00)
  ADD HL,SP               ; Add the offset so the stack is at the start of the
  LD SP,HL                ; graphic data.
  LD A,(Draw_XPos)        ; Get the x co-ordinate.
  LD B,A                  ; Set this in B.
  AND $07                 ; Get the bottom 3 bits, which are the frame ID.
  INC A                   ; Add 1 to this and modifiy A87B which is executed
  LD ($A87B),A            ; later.
  LD A,B                  ; Get the top 5 bits of the x co-ordinate, which are
  AND $F8                 ; the byte.
  RRCA                    ;
  RRCA                    ;
  RRCA                    ;
  LD ($EFAF),A            ; Change the routine at TownSquare_Attributes to use
                          ; a different pointer in the buffer.
  ADD A,$02               ; Move forward two columns and store this in E.
  LD E,A                  ;
  LD A,(Draw_YPos)        ; Get the Y co-ordinate.
  SUB $40                 ; Subtract 40 to get an offset on screen.
  LD L,A                  ; Put this in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 32 so it points at the start of a row.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD D,$6B                ; Point the high byte of DE at the sprite buffer.
                          ; (6B00)
  ADD HL,DE               ; Add this to the offset so HL points to the correct
                          ; row.
  LD C,$10                ; 16 rows to copy.
Draw_Non_Mask_1:
  POP DE                  ; Put the next graphic data in DE.
  LD B,$00                ; Skip a number of frames. (This code was modified
                          ; earlier in the routine)
  DEC B                   ; If this is frame 0, it sits on a byte boundary and
  JR Z,Draw_Non_Mask_3    ; there is one less byte to update.
  XOR A                   ; Start with a value of 0 ie: all bits off.
Draw_Non_Mask_2:
  SRL E                   ; Shift E, putting 0 in bit 7.
  RR D                    ; Rotate D, respecting carry.
  RRA                     ; Rotate A, respecting carry.
  DJNZ Draw_Non_Mask_2    ; Loop until we get the right frame.
  OR (HL)                 ; Do a logical OR of the byte with the data in A.
  LD (HL),A               ;
Draw_Non_Mask_3:
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical OR of the byte with the data in D.
  OR D                    ;
  LD (HL),A               ;
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical OR of the byte with the data in D.
  OR E                    ;
  LD (HL),A               ;
  LD DE,$0022             ; Move to the next row
  ADD HL,DE               ;
  DEC C                   ; Decrement the number of rows to copy.
  JP NZ,Draw_Non_Mask_1   ; Loop while there is more to draw.
  LD SP,(Draw_SP)         ; Restore the stack pointer.
  POP AF                  ; Restore the object ID in A.
  EXX                     ; Swap back all main registers and return.
  RET                     ;

; Draw a masked object in the sprite buffer
;
; Used by the routines at Show_Reward, Generic_Init_Sprites,
; Chase_Update_Shark, Update_Jumping_Jack, Logic_PostOffice, Move_Herbert,
; Logic_Pub, Logic_Docks, Logic_Sewer, Logic_Bakers, Logic_WorkShed,
; Logic_Supermarket, Logic_School_Lane, Logic_Park, Logic_Bank and
; Space_Collision_Detect.
;
; A ID of the graphic to update
;
; The co-ordinates to update are stored in Draw_XPos.
Draw_Mask:
  EXX                     ; Exchange main registers.
  PUSH AF                 ; Remember AF.
  LD (Draw_SP),SP         ; Store the stack pointer in Draw_SP.
  LD SP,Object_00         ; Set the stack pointer to the start of the object
                          ; graphics. (Object_00)
  LD L,A                  ; Put the sprite ID in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 32.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,SP               ; Use this to set the stack pointer at the graphic
  LD SP,HL                ; data for this object.
  LD A,(Draw_XPos)        ; Put the X co-ordinate in B.
  LD B,A                  ;
  AND $07                 ; Get the bottom 3 bytes, which represents the frame
                          ; number.
  INC A                   ; Add 1, and set this in A8E0 and A8FC which modifies
  LD ($A8E0),A            ; later routines.
  LD ($A8FC),A            ;
  LD A,B                  ; Put the bottom 5 bits, which represents the byte,
  AND $F8                 ; in EFAF. This changes the logic in the routine to
  RRCA                    ; draw the fountain in the town square at
  RRCA                    ; TownSquare_Attributes.
  RRCA                    ;
  LD ($EFAF),A            ;
  ADD A,$02               ; Add 2 to the byte and store it in E.
  LD E,A                  ;
  LD C,$10                ; 10 rows to update.
  LD A,(Draw_YPos)        ; Get the Y co-ordinate.
  SUB $40                 ; Subtract 40 to get an offset in the sprite buffer.
  LD L,A                  ; Put this in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 32 to get a row offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD D,$6B                ; Set the high byte of DE to an offset in the sprite
                          ; buffer. (6B00)
  ADD HL,DE               ; Add this.
Draw_Mask_1:
  POP DE                  ; Get the next value (the mask) in DE.
; If this is not frame 0, it doesn't sit on a byte boundary and bits need
; shifting forwards.
  LD B,$00                ; Set B to the number of frames to loop around. (This
                          ; code is modified earlier)
  DEC B                   ; If this is frame 0, there is one less byte to
  JR Z,Draw_Mask_3        ; update.
  SCF                     ; Set the carry flag, to use in rotating bits.
  LD A,$FF                ; Start with a mask of FF ie: all bits on.
Draw_Mask_2:
  RR E                    ; Rotate E and D, respecting carry.
  RR D                    ;
  RRA                     ; Rotate A, respecting carry.
  DJNZ Draw_Mask_2        ; Loop until we get to the right frame number.
  AND (HL)                ; Do a logical AND of the mask in A against the byte
  LD (HL),A               ; in the sprite buffer.
Draw_Mask_3:
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical AND of the mask in D against the byte
  AND D                   ; in the sprite buffer.
  LD (HL),A               ;
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical AND of the mask in E against the byte
  AND E                   ; in the sprite buffer.
  LD (HL),A               ;
  INC HL                  ; Move forward to the next byte in the buffer.
  INC HL                  ;
  POP DE                  ; Get the next value (the data) in DE.
  LD B,$00                ; Set B to the number of frames to loop around. (This
                          ; code is modified earlier)
  DEC B                   ; If this is frame 0, there is one less byte to
  JR Z,Draw_Mask_5        ; update.
  XOR A                   ; Start with data of 0 ie: all bits off
Draw_Mask_4:
  SRL E                   ; Shift E to the right, putting 0 on bit 7.
  RR D                    ; Rotate D respecting carry.
  RRA                     ; Rotate A repsecting carry.
  DJNZ Draw_Mask_4        ; Loop until we get to the right frame number.
  OR (HL)                 ; Do a logical OR of the data in A against the byte
  LD (HL),A               ; in the sprite buffer.
Draw_Mask_5:
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical OR of the data in D against the byte
  OR D                    ; in the sprite buffer.
  LD (HL),A               ;
  DEC HL                  ; Move back a byte.
  LD A,(HL)               ; Do a logical OR of the data in D against the byte
  OR E                    ; in the sprite buffer.
  LD (HL),A               ;
  LD DE,$0022             ; Move forward a row and two columns.
  ADD HL,DE               ;
  DEC C                   ; Decrement the row count.
  JP NZ,Draw_Mask_1       ; Loop while there are more rows to draw.
  EXX                     ; Restore main registers.
  LD SP,(Draw_SP)         ; Restore the stack pointer.
  POP AF                  ; Restore AF and return.
  RET                     ;

; Set the zero flag if the player is the current one
;
; Used by the routines at Update_Characters, Do_Swap, Move_Character and
; Change_Character.
;
; IY Pointer to player buffer.
Is_Character_Current:
  PUSH IY                 ; Copy the pointer to HL.
  POP HL                  ;
  LD DE,(Current_Player)  ; Subtract the current base pointer to the buffer.
  AND A                   ;
  SBC HL,DE               ;
  RET                     ; Return, with the zero flag set if the pointers
                          ; match.

; Move the computer controlled characters
;
; Used by the routine at Main_update.
;
; IY - base address of character data (Character_Base = Wally - BC6B = Harry)
Update_Characters:
  PUSH IY                 ; Store IY
  LD A,(IY+$0F)           ; Get the room for the current character in A.
  LD (Current_Room),A     ; Store this. (Current_Room)
  LD IY,Character_Base    ; Point IY at the first character.
  LD A,(Is_Character_Computer) ; Get the "computer controlled" player flag.
  ADD A,$04               ; Add 4 to give either 4 (normal) or 5 (demo)
                          ; characters to move.
  LD B,A                  ; Set this in B to loop through the characters.
Update_Characters_1:
  PUSH BC                 ; Remember the character count.
  LD A,(Is_Character_Computer) ; Is this player computer controlled?
  OR A                         ;
  JR NZ,Update_Characters_2 ; Jump forward if so.
; This character is being controlled by the player, so nothing to do
  CALL Is_Character_Current ; Check this character is player-controlled.
  JR NZ,Update_Characters_2 ; Jump forward if not. (Should never get here).
  INC IY                  ; Otherwise jump to the next character.
; This is a computer controlled character, so move them.
Update_Characters_2:
  LD A,(IY+$0F)           ; Get the room for the current character.
  CP (IY+$5A)             ; Does it equal the target room?
  JR NZ,Update_Characters_3 ; Jump forward if it doesn't.
  LD A,(IY-$14)           ; Is the character in the room it wants to get to?
  OR A                    ; (Character_In_Room)
  JP NZ,Update_Characters_7 ; Jump forward if not.
Update_Characters_3:
  CALL Drop_Character     ; If the character is in mid-air, drop them to the
                          ; ground or a platform.
  LD A,(IY+$46)           ; Is the character in mid-jump?
  OR A                    ;
  JR Z,Update_Characters_4 ; If not, move forward to handle movement.
  CALL Jump_1             ; Otherwise finish off the jump.
  JP Update_Characters_6  ;
Update_Characters_4:
  LD A,(IY+$37)           ; Is the character falling?
  OR A                    ;
  JR Z,Update_Characters_5 ; If not, move forward to handle movement.
  CALL Drop_Character_Row ; Otherwise, finish off the fall.
  JR Update_Characters_6  ;
; The computer character can move, so do so.
Update_Characters_5:
  LD A,(IY+$64)           ; Get the computer character's next movement table.
                          ; (Character_Next_Room_2)
  ADD A,A                 ; Double it to get a word offset.
  LD E,A                  ; Put the value in DE.
  LD D,$00                ;
  LD HL,Movement_Tables   ; Add the base address for the movement tables.
  ADD HL,DE               ; (Movement_Tables)
  LD E,(HL)               ; Put the address found in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL.
  LD DE,Update_Characters_6 ; Set Update_Characters_6 as a return address.
  PUSH DE                   ;
  JP (HL)                 ; Execute the routine.
; Control returns from the routine to this point.
Update_Characters_6:
  POP BC                  ; Restore the character count.
  INC IY                  ; Move to the next character.
  DJNZ Update_Characters_1 ; Loop until all the characters have moved.
  POP IY                  ; Restore IY and return.
  RET                     ;
Update_Characters_7:
  CALL Drop_Character     ; If the character is in mid-air, drop them to the
                          ; ground or a platform.
  LD A,(IY+$46)           ; Is the character in mid-jump?
  OR A                    ;
  JR Z,Update_Characters_8 ; If not, move forward to handle movement.
  CALL Jump_1             ; Otherwise finish off the jump.
  JP Update_Characters_6  ;
Update_Characters_8:
  LD A,(IY+$37)           ; Is the character falling?
  OR A                    ;
  JR Z,Update_Characters_9 ; If not, move forward to handle movement.
  CALL Drop_Character_Row ; Otherwise, finish off the fall.
  JP Update_Characters_6  ;
; The character can move, so do so.
Update_Characters_9:
  LD A,(IY+$0A)           ; Get the Y position.
  CP $98                  ; Is it on the ground?
  JR Z,Update_Characters_12 ; Jump forward if it is.
  LD A,(IY+$05)           ; Get the X position.
  CP $78                  ; Is it less than 78?
  JR NC,Update_Characters_11 ; Jump forward if it is.
  LD (IY+$3C),$01         ; Set the character as mid-air.
Update_Characters_10:
  CALL Move_Character     ; Move a character.
  JP Update_Characters_6  ; Jump back to finish off the routine.
; The character is standing next to the wall, and can be built (?)
Update_Characters_11:
  LD (IY+$3C),$FF
  JR Update_Characters_10
; The character is standing in a room with an item, move them towards sawpping
; it.
Update_Characters_12:
  LD B,(IY-$0F)           ; Get the room object index for this character.
                          ; (Character_Next_Swap_ID)
  CALL Get_Next_Object_Ptr ; Get the address of the room object.
  INC HL                  ; Move to the next position.
  LD A,(HL)               ; Get the X co-ordinate.
  PUSH AF                 ; Store AF.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP (HL)                 ; Does it match that of the item?
  JR NC,Update_Characters_13 ; Jump if it's less.
  LD (IY+$3C),$01         ; Set the character to go right.
  JR Update_Characters_14 ;
Update_Characters_13:
  LD (IY+$3C),$FF         ; Otherwise set them to go left.
Update_Characters_14:
  CALL Move_Character     ; Move the character.
  POP AF                  ; Restore A.
  CP (IY+$05)             ; Is the character's X co-ordinate now the same as
                          ; the item's.
  JP NZ,Update_Characters_6 ; Jump back if it isn't.
  LD B,(IY-$0F)           ; Otherwise get the ID of the object to swap with.
  CALL Do_Swap            ; Swap an item.
  LD (IY-$14),$00         ; Mark the character as not in the target room.
                          ; (Character_In_Room)
  LD E,(IY+$78)           ; Put the address of the character's swap buffer in
  LD D,(IY+$7D)           ; DE.
  LD H,$00                ; Set H to 0.
  INC (IY-$05)            ; Move to the next index in the buffer.
  LD L,(IY-$05)           ; Put the index in L.
  ADD HL,DE               ; Add the value in HL to the start of the buffer to
                          ; get the right address.
  LD A,(HL)               ; Get the next swap item.
  CP $FF                  ; Is it an end marker?
  JR NZ,Update_Characters_15 ; Jump forward if it isn't.
  EX DE,HL                ; Otherwise, set the index back to 0.
  LD (IY-$05),$00         ;
Update_Characters_15:
  LD E,(HL)               ; Get the object ID in the buffer.
  CALL Get_Nth_Object_Ptr ; Get the address of the object in HL.
  LD A,B                  ; Is the object index 0?
  OR A                    ;
  JR NZ,Update_Characters_17 ; If so, jump forward.
Update_Characters_16:
  CALL Get_Next_Room_Swap ; Return the next room that the character should swap
                          ; in.
  LD C,$00
  LD D,A                  ; Put this in D.
  LD A,D                  ; Is the next room the current one?
  CP (IY+$0F)             ;
  JR Z,Update_Characters_16 ; Jump back until it isn't.
Update_Characters_17:
  LD (IY+$5A),D           ; Set the next target room. (Character_Next_Room_ID)
  LD (IY-$0F),C           ; Set the room object index. (0?)
  CALL Update_Character   ; Update the character.
  JP Update_Characters_6  ; Jump back to finish off the routine.

; Swap an item when a character moves over it
;
; Used by the routines at Update_Characters and Logic_Action_Swap.
;
; IY The base address of the character buffer (Character_Base - BC6B)
Do_Swap:
  PUSH HL                 ; Remember HL.
  CALL Get_Next_Object_Ptr ; Get the static object buffer for this room.
  INC HL                  ; Move to the flags and put them in A.
  INC HL                  ;
  INC HL                  ;
  LD A,(HL)               ;
  AND (IY-$28)            ; Is the current character allowed to pick it up?
  JR Z,Do_Swap_2          ; Jump foward if they aren't.
; The object the player is standing next to can be picked up, so do it.
  LD A,(HL)               ; Get the flag again.
  AND $80                 ; Is bit 7 set?
  JR Z,Do_Swap_1          ; Jump if it isn't.
  PUSH HL                   ; Is the buffer at iy pointing to the current
  CALL Is_Character_Current ; character?
  POP HL                    ;
  JR NZ,Do_Swap_2         ; Jump forward if it isn't.
; The object can only be collected by this player, and can be done.
Do_Swap_1:
  LD A,(HL)               ; Put the flags in A.
  RES 7,A                 ; Turn off bit 7.
  LD D,A                  ; Store this in D.
  LD A,(HL)               ; Put the flags in A.
  AND $80                 ; Turn off bit 7.
  OR (IY-$32)             ; Merge it with the flags at Object_Flags_2.
  LD (HL),A               ; Set this as the new value to use.
  LD A,(IY-$37)           ; Swap these flags with the values starting at
  LD (IY-$32),A           ; Character_Near_ID.
  LD (IY-$37),D           ;
  LD A,(IY+$55)           ; Set A to the second item held by this player.
  DEC HL                  ; Move back to the start of the object buffer.
  DEC HL                  ;
  DEC HL                  ;
  LD E,(HL)               ; Put the old object ID in E.
  LD (HL),A               ; Replace it with this one.
  LD A,(IY+$50)           ; Set A to the first item held by this player.
  LD (IY+$55),A           ; Set it at the second item.
  LD (IY+$50),E           ; Set the item that was in the room as the second
                          ; item.
  CALL Is_Character_Current ; Is the buffer at IY pointing to the current
                            ; character?
  CALL Z,Print_Inventory  ; If so, need to update the inventory.
Do_Swap_2:
  LD A,(Current_Room)     ; Is the player in the current room?
  CP (IY+$0F)             ;
  CALL Z,Play_Item_swapped ; If so, play the "item swapped" sound.
  POP HL                  ; Restore HL and return.
  RET                     ;

; Generate an "item swapped" sound effect
;
; Used by the routines at Do_Swap and Logic_Action_SwapFor.
Play_Item_swapped:
  LD BC,$FF0A             ; Set the pitch and "descending" times.
  LD DE,$0114             ; Set the "static" and "ascending" times.
  LD HL,$1401             ; Set the "descending" and "ascending" level.
  CALL Play_Sound         ; Play the sound and return.
  RET                     ;

; Get address of the item object buffer given its ID
;
; Used by the routines at Update_Characters, Do_Swap, Logic_Action_SwapFor,
; Character_Has_Object, Logic_Pattern_At_Obj, Item_In_Room and Update_Room.
;
; B ID of the object to get data for.
; HL On exit, points to its data buffer.
Get_Next_Object_Ptr:
  LD A,(IY+$0F)           ; Get the current room.
  LD HL,Room_Objects_00   ; Point HL at the start of the object buffer data.
                          ; (Room_Objects_00)
  CALL Get_Next_Room_Ptr_Direct ; Get the address for this room's data.
  LD A,B                  ; Is the object ID 0?
  OR A                    ;
  JR Z,Get_Next_Object_Ptr_2 ; Return if it is, it's already pointing to the
                             ; right place.
; If the object ID is not zero, move to the right one.
Get_Next_Object_Ptr_1:
  INC HL                  ; Move forward four bytes to the next entry.
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  DJNZ Get_Next_Object_Ptr_1 ; Loop for 'n' number of times.
Get_Next_Object_Ptr_2:
  RET                     ; Return.

; Jump table of movement actions
;
; Used by the routine at Update_Characters.
;
; These entries are analagous to the co-ordinate table at Next_Room_IDs, and
; show how a computer controlled character can get to a target co-ordinate.
Movement_Tables:
  DEFW Movement_Table_00  ; 0 : Far left of a room
  DEFW Movement_Table_01  ; 1 : Far right of a room
  DEFW Movement_Table_02  ; 2 : 78 , 98
  DEFW Movement_Table_03  ; 3 : 30 , 98
  DEFW Movement_Table_04  ; 4 : C0 , 98
  DEFW Movement_Table_05  ; 5 : 00 , 58 (The sewer, L)
  DEFW Movement_Table_06  ; 6 : F0 , 58 (The sewer, R)
  DEFW Movement_Table_01  ; 7 : Far right of a room (duplicate of 1)
  DEFW Movement_Table_00  ; 8 : Far left of a room (duplicate of 0)

; Movement routine 0. Check a character can be moved left, and do so if
; possible
;
; Used by the routine at Update_Characters.
Movement_Table_00:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is it the floor?
  JR Z,Movement_Table_00_01 ; Jump forward if so.
  LD A,(IY+$0F)           ; Get the room number.
  CP $1F                  ; Is it the sewer?
  JR NZ,Movement_Table_00_01 ; Jump forward if not. The sewer requires
                             ; additional logic with computer characters.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $78                  ; Is it less than 78?
  JR NC,Movement_Table_00_01 ; Jump forward if so.
  LD (IY+$3C),$01         ; Set to move right.
  JP Move_Character       ; Move the character.
Movement_Table_00_01:
  LD (IY+$3C),$FF         ; Set to move left.
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  OR A                    ; Is it zero?
  JP Z,Update_Character_Room ; If so, signal this is the end of the room.
  RET                     ; Otherwise return.

; Movement routine 1. Check a character can be moved right, and do so if
; possible
;
; Used by the routine at Update_Characters.
Movement_Table_01:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is it the floor?
  JR Z,Movement_Table_01_1 ; Jump forward if so.
  LD A,(IY+$0F)           ; Get the room number.
  CP $1F                  ; Is it the sewer?
  JR NZ,Movement_Table_01_1 ; Jump forward if not. The sewer requires
                            ; additional logic with computer characters.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $78                  ; Is it greater than 78?
  JR C,Movement_Table_01_1 ; Jump forward if so.
  LD (IY+$3C),$FF         ; Set to move left.
  JP Move_Character       ; Move the character
Movement_Table_01_1:
  LD (IY+$3C),$01         ; Set to move right.
  CALL Move_Character     ; Move the character
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $F0                  ; Is it at the right edge?
  JP Z,Update_Character_Room ; If so, signal this is the end of the room.
  RET                     ; Otherwise return.

; Movement routine 2. Move to 78 , 98
;
; Used by the routine at Update_Characters.
Movement_Table_02:
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $78                    ; If it less than 78 move left, otherwise move
  JR NC,Movement_Table_02_1 ; right.
  LD (IY+$3C),$01           ;
  JR Movement_Table_02_2    ;
Movement_Table_02_1:
  LD (IY+$3C),$FF           ;
Movement_Table_02_2:
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $78                  ; Is it now 78?
  JP Z,Update_Character_Room ; If so, move to the next room.
  RET                     ; Otherwise return.

; Movement routine 3. Move to 30 , 98
;
; Used by the routine at Update_Characters.
Movement_Table_03:
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $30                    ; If it less than 30 move left, otherwise move
  JR NC,Movement_Table_03_1 ; right.
  LD (IY+$3C),$01           ;
  JR Movement_Table_03_2    ;
Movement_Table_03_1:
  LD (IY+$3C),$FF           ;
Movement_Table_03_2:
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $30                  ; Is it now 30?
  JP Z,Update_Character_Room ; If so, move to the next room.
  RET                     ; Otherwise return.

; Movement routine 4. Move to C0 , 98
;
; Used by the routine at Update_Characters.
Movement_Table_04:
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $C0                    ; If it less than C0 move left, otherwise move
  JR NC,Movement_Table_04_1 ; right.
  LD (IY+$3C),$01           ;
  JR Movement_Table_04_2    ;
Movement_Table_04_1:
  LD (IY+$3C),$FF           ;
Movement_Table_04_2:
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $C0                  ; Is it now C0?
  JP Z,Update_Character_Room ; If so, move to the next room.
  RET                     ; Otherwise return.

; Movement routine 5. Move to 00, 58 (Sewer left)
;
; Used by the routine at Update_Characters.
Movement_Table_05:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is it 98 (ie: floor level).
  JR NZ,Movement_Table_05_4 ; Jump forward if it isn't.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $66                    ; If it less than 66 move left, otherwise move
  JR NC,Movement_Table_05_1 ; right.
  LD (IY+$3C),$01           ;
  JR Movement_Table_05_2    ;
Movement_Table_05_1:
  LD (IY+$3C),$FF           ;
Movement_Table_05_2:
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $66                  ; Is it now 66?
  RET NZ                  ; Return if it isn't.
Movement_Table_05_3:
  LD (IY+$3C),$FF         ; Otherwise set to move left.
  JP Jump                 ; Make the character jump.
; The character is not at ground level.
Movement_Table_05_4:
  CP $58                  ; Is the Y co-ordinate now 58?
  JR NZ,Movement_Table_05_3 ; Move back if it isn't, to jump.
  LD (IY+$3C),$FF         ; Otherwise set to move left.
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  OR A                    ; Is it 0?
  JP Z,Update_Character_Room ; If it is, move to a new room.
  RET                     ; Otherwise return.

; Movement routine 6. Move to F0 , 58 (Sewer right)
;
; Used by the routine at Update_Characters.
Movement_Table_06:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is it 98 (ie: floor level).
  JR NZ,Movement_Table_06_4 ; Jump forward if it isn't.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $8A                    ; If it less than 8A move left, otherwise move
  JR NC,Movement_Table_06_1 ; right.
  LD (IY+$3C),$01           ;
  JR Movement_Table_06_2    ;
Movement_Table_06_1:
  LD (IY+$3C),$FF           ;
Movement_Table_06_2:
  CALL Move_Character     ; Move the charcter.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $8A                  ; Is it now 8A?
  RET NZ                  ; Return if it isn't.
Movement_Table_06_3:
  LD (IY+$3C),$01         ; Otherwise set to move right.
  JP Jump                 ; Make the character jump.
; The character is not at ground level.
Movement_Table_06_4:
  CP $58                  ; Is the Y co-ordinate now 58?
  JR NZ,Movement_Table_06_3 ; Move back if it isn't, to jump.
  LD (IY+$3C),$01         ; Otherwise set to move right.
  CALL Move_Character     ; Move the character.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $F0                  ; Is it F0?
  JP Z,Update_Character_Room ; If it is, move to a new room.
  RET                     ; Otherwise return.

; See if the 'in' key was pressed and set A to 1 if it was
;
; Used by the routines at Check_New_Room, Show_Reward and Space_Check_Movement.
Detect_In:
  LD A,(Input_Method)     ; Get the current control mechanism. (Input_Method)
  OR A                    ; Is it 0? (Keyboard)
  JR Z,Detect_In_1        ; Jump forward if it is.
  CP $01                  ; Is it 1? (Kempston)
  JR NZ,Detect_In_2       ; Jump forward if it is.
; Handle Kempston input.
  IN A,($1F)              ; Read the Kempston interface.
  BIT 3,A                 ; Was "up" pressed?
  JR Z,Detect_In_3        ; Jump to set "no input" if it wasn't.
Detect_In_0:
  LD A,$01                ; Other set "in pressed" and return.
  RET
; Handle keyboard input.
Detect_In_1:
  LD A,$FD
  IN A,($FE)
  LD B,A
  LD A,$BF
  IN A,($FE)
  AND B
  OR $E0
  CP $FF
  JR NZ,Detect_In_0
  JR Detect_In_3
; Handle Sinclair input.
Detect_In_2:
  LD A,$EF
  IN A,($FE)
  BIT 1,A
  JR Z,Detect_In_0
; 'in' wasn't pressed, so reset the flag.
Detect_In_3:
  XOR A                   ; Set result as 0 and return.
  RET                     ;

; New room check
;
; Used by the routine at Main.
;
; IY Pointer to current character data (Character_Base - BC6B)
;
; This routine sees if the character is at the left or right of the screen, or
; 'in' was pressed, and switches rooms if appropriate.
Check_New_Room:
  LD A,(IY+$05)           ; Get the current player's x co-ordinate.
                          ; (Character_X)
  OR A                    ; Is it zero? (far left)
  JR Z,Check_New_Room_1   ; Jump forward if it is.
  CP $F0                  ; Is it F0? (far right)
  JR Z,Check_New_Room_1   ; Jump forward if it is.
  CALL Detect_In          ; Was the 'in' key pressed?
  OR A                    ;
  RET Z                   ; Return if not.
; Player has moved off screen, so do something.
Check_New_Room_1:
  LD A,(IY+$0F)           ; Put the current room in A.
  CALL Get_Next_Room_Ptr  ; Get the "next rooms" table for this room.
  EX DE,HL                ; Swap DE and HL, so the "next rooms" table is in DE.
; Loop through the entries in the room, seeing what can be done.
Check_New_Room_2:
  LD A,(DE)               ; Get the next entry.
  CP $FF                  ; Is this an 'end' marker?
  RET Z                   ; Return if it is.
  LD B,A                  ; Otherwise put the new room in B.
  INC DE                  ; Put the co-ordinate table in A.
  LD A,(DE)               ;
  INC DE
  INC DE
  CALL Room_Get_Coords    ; Get the co-ordinate table for this index.
  LD A,(HL)               ; Get the X co-ordinate.
  SUB (IY+$05)            ; Is it close enough to the current X co-ordinate?
  SUB $08                 ;
  CP $F0                  ;
  JR C,Check_New_Room_2   ; Jump back if not.
; The X co-ordinate is in range.
  INC HL                  ; Get the Y co-ordinate.
  LD A,(HL)               ; Does it match the player's?
  CP (IY+$0A)             ;
  JR NZ,Check_New_Room_2  ; Jump back if it doesn't.
  DEC DE                  ; Jump back to the X co-ordinate placeholder.
  LD (IY+$0F),B           ; Set the new room to B.
  LD A,(DE)
  CALL Room_Get_Coords    ; Get the co-ordinate table for this index.
  LD A,(HL)               ; Get the X co-ordinate.
  OR A                    ; Is it zero?
  JR NZ,Check_New_Room_3  ; No, must have not come in from the left.
  LD A,$02                ; Otherwise set the co-ordinate to be far left.
Check_New_Room_3:
  CP $F0                  ; Is it far right?
  JR NZ,Check_New_Room_4  ; No, must have come in from elsewhere.
  LD A,$EE                ; Otherwise set the co-ordinates to be far right.
Check_New_Room_4:
  LD (IY+$05),A           ; Write new X co-ordinate to memory.
  INC HL                  ; Get the Y co-ordinate.
  LD A,(HL)               ;
  LD (IY+$0A),A           ; Set the new Y co-ordinate.
  CALL Draw_Background    ; Draw the room.
Check_New_Room_5:
  CALL Detect_In          ; Wait until the 'in' key is released before
  OR A                    ; continuing.
  JR NZ,Check_New_Room_5  ;
  RET                     ; Return.

; Get the address for the co-ordinate table of a room
;
; Used by the routines at Check_New_Room, Update_Character_Room and
; Move_Herbert.
;
; A The co-ordinate table index
; HL On exit, holds the address of the co-ordinate table to use
Room_Get_Coords:
  ADD A,A                 ; Double the co-ordinate index to get a word offset.
  LD HL,Next_Room_IDs     ; Point HL at the start of the co-ordinate tables.
                          ; (Next_Room_IDs)
  ADD A,L                 ; Add the offset to get the correct address.
  JR NC,Room_Get_Coords_0 ; Increment the high byte if there was an overflow,
  INC H                   ; which shouldn't happen unless there's a bug.
Room_Get_Coords_0:
  LD L,A                  ; Set the correct address and return.
  RET                     ;

; Get the address of the next room table for this room and put it in HL
;
; Used by the routines at Check_New_Room, Update_Character, Change_Character
; and Move_Herbert.
Get_Next_Room_Ptr:
  LD HL,Next_Rooms_00     ; Start at the "next rooms" buffer (Next_Rooms_00).
                          ; Control continues to Get_Next_Room_Ptr_Direct.

; Search for FF a number of times and return a pointer to the next entry after
; it
;
; Used by the routines at Get_Next_Object_Ptr, Print_Character_Room and
; Do_Logic.
;
; HL The base address of item data. On return, points to the correct place for
;    the room data.
; A The current room number
; B On return, holds the number of entries for this room
Get_Next_Room_Ptr_Direct:
  OR A                    ; Is the current room 0?
  RET Z                   ; Return if it is, something's gone wrong.
; Looks like a valid room, so work out the address to return by counting the
; number of END (FF) characters.
  PUSH BC                 ; Remember BC and DE.
  PUSH DE                 ;
  LD E,A                  ; Put the room number in E as the number of matches
                          ; to find.
  LD A,$FF                ; Search for FF.
  LD BC,$0000             ; Search the entire memory.
Get_Next_Room_Ptr_Direct_1:
  CPIR                    ; Look for it.
  DEC E                   ; Reduce the number of matches to find.
  JP NZ,Get_Next_Room_Ptr_Direct_1 ; Jump back if there are more entries to
                                   ; look for.
  POP DE                  ; Restore DE and BC and return.
  POP BC                  ;
  RET                     ;

; Next rooms : The Town Square
Next_Rooms_00:
  DEFB $01,$01,$00,$18,$00,$01,$FF

; Next rooms : Stamp Street
  DEFB $03,$04,$01,$0D,$01,$00,$00,$00
  DEFB $01,$02,$03,$01,$FF

; Next rooms : The Post Office
  DEFB $01,$01,$03,$FF

; Next rooms : Market Street
  DEFB $05,$00,$01,$04,$02,$00,$01,$01
  DEFB $04,$FF

; Next rooms : The Super Market
  DEFB $03,$00,$02,$FF

; Next rooms : The Park
  DEFB $06,$00,$03,$03,$01,$00,$1F,$03
  DEFB $05,$FF

; Next rooms : Wobbly Walk
  DEFB $07,$00,$03,$05,$03,$00,$10,$01
  DEFB $00,$0F,$04,$00,$FF

; Next rooms : Rubble Road
  DEFB $08,$01,$00,$0B,$00,$01,$06,$03
  DEFB $00,$0A,$04,$01,$FF

; Next rooms : Wall Street
  DEFB $09,$01,$00,$07,$00,$01,$FF

; Next rooms : Pete Street
  DEFB $0A,$04,$03,$08,$00,$01,$FF

; Next rooms : The Work Shed
  DEFB $07,$01,$04,$09,$03,$04,$FF

; Next rooms : School Lane
  DEFB $0D,$00,$04,$0C,$02,$01,$07,$01
  DEFB $00,$FF

; Next rooms : The School
  DEFB $0B,$01,$02,$FF

; Next rooms : Baker Street
  DEFB $01,$00,$01,$0E,$02,$01,$0B,$04
  DEFB $00,$FF

; Next rooms : The Bakers
  DEFB $0D,$01,$02,$FF

; Next rooms : The Pub
  DEFB $06,$00,$04,$FF

; Next rooms : Motor Way
  DEFB $13,$01,$03,$06,$00,$01,$11,$03
  DEFB $03,$12,$04,$00,$FF

; Next rooms : The Laboratory
  DEFB $10,$03,$03,$FF

; Next rooms : The Garage
  DEFB $10,$00,$04,$FF

; Next rooms : Reference Road
  DEFB $15,$01,$00,$14,$02,$00,$10,$03
  DEFB $01,$FF

; Next rooms : The Library
  DEFB $13,$00,$02,$FF

; Next rooms : Penny Lane
  DEFB $13,$00,$01,$18,$01,$04,$16,$03
  DEFB $00,$17,$04,$01,$FF

; Next rooms : The Bank
  DEFB $15,$00,$03,$FF

; Next rooms : Wally's House
  DEFB $15,$01,$04,$FF

; Next rooms : Meat Street
  DEFB $1A,$00,$01,$19,$03,$01,$00,$01
  DEFB $00,$15,$04,$01,$FF

; Next rooms : The Butchers
  DEFB $18,$01,$03,$FF

; Next rooms : Trunk Road
  DEFB $1C,$04,$01,$1B,$03,$01,$18,$01
  DEFB $00,$FF

; Next rooms : The Zoo
  DEFB $1A,$01,$03,$FF

; Next rooms : Rail Road
  DEFB $1E,$00,$01,$1D,$02,$01,$1A,$01
  DEFB $04,$FF

; Next rooms : The Station
  DEFB $1C,$01,$02,$FF

; Next rooms : The Docks
  DEFB $1F,$02,$06,$1C,$01,$00,$FF

; Next rooms : The Sewer
  DEFB $05,$05,$03,$1E,$06,$02,$20,$00
  DEFB $01,$FF

; Next rooms : The Cave
  DEFB $1F,$01,$00,$FF

; Table for next room to visit by a computer player
;
; Used by the routine in Update_Character.
Character_Room_Table:
  DEFB $0C,$10            ; 00 : The Town Square
  DEFB $0E,$10            ; 01 : Stamp Street
  DEFB $0E,$11            ; 02 : Post Office
  DEFB $10,$10            ; 03 : Market Street
  DEFB $11,$10            ; 04 : The Super Market
  DEFB $12,$0F            ; 05 : The Park
  DEFB $13,$0D            ; 06 : Wobbly Walk
  DEFB $14,$0B            ; 07 : Rubble Road
  DEFB $15,$09            ; 08 : Wall Street
  DEFB $17,$09            ; 09 : Pete Street
  DEFB $16,$0B            ; 0A : The Work Shed
  DEFB $14,$0E            ; 0B : School Lane
  DEFB $15,$0F            ; 0C : The School
  DEFB $10,$11            ; 0D : Baker Street
  DEFB $10,$12            ; 0E : The Bakers
  DEFB $14,$0D            ; 0F : The Pub
  DEFB $11,$0C            ; 10 : Motor Way
  DEFB $12,$0C            ; 11 : The Laboratory
  DEFB $11,$0B            ; 12 : The Garage
  DEFB $0F,$0C            ; 13 : Reference Road
  DEFB $0F,$0B            ; 14 : The Library
  DEFB $0D,$0D            ; 15 : Penny Lane
  DEFB $0C,$0D            ; 16 : The Bank
  DEFB $0D,$0C            ; 17 : Wally's House
  DEFB $0C,$0F            ; 18 : Meat Street
  DEFB $0B,$0F            ; 19 : The Butcher's
  DEFB $0A,$10            ; 1A : Trunk Road
  DEFB $0A,$11            ; 1B : The Zoo
  DEFB $08,$11            ; 1C : Rail Road
  DEFB $08,$12            ; 1D : The Station
  DEFB $06,$12            ; 1E : The Docks
  DEFB $04,$13            ; 1F : The Sewer
  DEFB $05,$14            ; 20 : The Cave

; Move a computer-controlled character between rooms.
;
; Used by the routines at Update_Characters and Update_Character_Room.
Update_Character:
  LD A,(IY+$0F)           ; Get the current room.
  CP (IY+$5A)             ; Does it equal the target room?
                          ; (Character_Next_Room_ID)
  JR NZ,Update_Character_1 ; Jump forward if not.
  LD (IY-$14),$01         ; Otherwise signal character is in the target room
  RET                     ; and return.
; Move the character towards the target room.
Update_Character_1:
  LD D,$FF                ; Set D as "no match".
  CALL Get_Next_Room_Ptr  ; Get the "next rooms" table for this room in HL.
  LD A,(IY+$0F)           ; Put the character's current room in A.
  CALL Is_Room_Via_In     ; Can the room only be accessed via the 'in' key?
  OR A                    ;
  JR Z,Update_Character_6 ; Jump forward if not.
; Process a "next rooms" entry.
Update_Character_2:
  LD A,(HL)               ; Get the next room to move to.
  CP $FF                  ; Is it a terminating character (FF) instead?
  JR Z,Update_Character_9 ; Jump forward if so, the B, C and D registers
                          ; contain the best target room and co-ordinates.
; Look at the "next rooms" entry to work out how to get there.
  CALL Is_Room_Via_In     ; Can the room only be accessed via the 'in' key?
  CP $01                  ;
  JR Z,Update_Character_3 ; Jump forward if so.
  LD A,(HL)               ; Get the room ID.
  CP (IY+$5A)             ; Is it the target room?
  JR NZ,Update_Character_7 ; Jump forward if not to look at the next entry.
  XOR A                   ; Signal 0 (character will walk the whole room) and
  JR Update_Character_6   ; jump forward to set it.
Update_Character_3:
  LD A,(HL)               ; Get the target room ID.
  CP (IY+$6E)             ; Is it the previously visited room?
                          ; (Character_Last_Room)
  JR Z,Update_Character_7 ; Jump forward if it is, we've just been here.
; Work out where to move the character.
  EXX                     ; Swap main registers.
  ADD A,A                 ; Double the ID to get a two byte offset.
  LD D,$00                ; Put this in DE.
  LD E,A                  ;
  LD HL,Character_Room_Table ; Add the base offset for the movement table.
  ADD HL,DE                  ; (Character_Room_Table)
  LD C,(HL)               ; Put the first value in C.
  INC HL                  ; Put the second value in B.
  LD B,(HL)               ;
  LD A,(IY+$5A)           ; Get the movement ID of the target room.
  ADD A,A                 ; Double the ID to get a two byte offset.
  LD E,A                  ; Put this in DE.
  LD HL,Character_Room_Table ; Add the base offset for the movement table.
  ADD HL,DE                  ; (Character_Room_Table)
  LD A,C                   ; Make C the difference between the two values.
  SUB (HL)                 ;
  JR NC,Update_Character_4 ;
  NEG                      ;
Update_Character_4:
  LD C,A                   ;
  LD A,B                   ; Add the difference in the two values in B to A to
  INC HL                   ; give us a "score" for this room.
  SUB (HL)                 ;
  JR NC,Update_Character_5 ;
  NEG                      ;
Update_Character_5:
  ADD A,C                  ;
  EXX                     ; Swap main registers.
  CP D                    ; Compare with the current match.
  JR NC,Update_Character_7 ; If this difference is greater, don't use the entry
                           ; and skip forward.
; A room to move to has been found that's better than any others yet looked at,
; so use it.
Update_Character_6:
  LD D,A                  ; Set D to the current best "score" for the next
                          ; room.
  LD B,(HL)               ; Put the desination room in B.
  INC HL                  ; Put the target co-ordinate to move to that room in
  LD C,(HL)               ; C.
  INC HL                  ; Put the new co-ordinate in the destination room in
  LD E,(HL)               ; E.
  JR Update_Character_8   ; Skip the next bit of code.
; Didn't find the target to move to, so skip to the next one.
Update_Character_7:
  INC HL                  ; Move to the next entry.
  INC HL                  ;
Update_Character_8:
  INC HL                  ; Ensure HL is pointing to the next place in the
                          ; buffer.
  JP Update_Character_2   ; Jump back to handle movement.
; Found the target room and co-ordinates to use for the next room, so set them.
Update_Character_9:
  LD (IY+$64),C           ; Set the next room, target co-ordinates and new
  LD (IY+$69),B           ; co-ordinates for this character.
  LD (IY+$73),E           ; (Character_Next_Room_2 / Character_Next_Room_1) /
                          ; Character_Next_Room_3)
  RET                     ; Return.

; Get a flag to specify if a room can only be reached via the "in" key
;
; Used by the routine at Update_Character.
;
; A Holds the room number, returns with the appropriate flag
Is_Room_Via_In:
  EXX                     ; Swap general registers.
  LD HL,Room_Flag_Table   ; Point HL at the start of the flags.
                          ; (Room_Flag_Table)
  ADD A,L                 ; Add the room number.
  JR NC,Is_Room_Via_In_1  ; Move forward if there is no overflow (shouldn't
                          ; be).
  INC H                   ; Otherwise increment H to allow for carry.
Is_Room_Via_In_1:
  LD L,A                  ; Set the low byte to give the correct address.
  LD A,(HL)               ; Put the flag for this room in A.
  EXX                     ; Swap back general registers and return.
  RET                     ;

; Table of room flags.
;
; Used by the routine at Is_Room_Via_In.
;
; If the value is 1, the room can be accessed by moving of the edge of another
; room.
;
; If the value is 0, the room can only be accessed using the 'in' key, or will
; not be visited by computer players.
Room_Flag_Table:
  DEFB $01                ; The Town Square
  DEFB $01                ; Stamp Street
  DEFB $00                ; The Post Office
  DEFB $01                ; Market Street
  DEFB $00                ; The Super Market
  DEFB $01                ; The Park
  DEFB $01                ; Wobbly Walk
  DEFB $01                ; Rubble Road
  DEFB $01                ; Wall Street
  DEFB $01                ; Pete Street
  DEFB $01                ; The Work Shed
  DEFB $01                ; School Lane
  DEFB $00                ; The School
  DEFB $01                ; Baker Street
  DEFB $00                ; The Bakers
  DEFB $00                ; The Pub
  DEFB $01                ; Motor Way
  DEFB $00                ; The Laboratory
  DEFB $00                ; The Garage
  DEFB $01                ; Reference Road
  DEFB $00                ; The Library
  DEFB $01                ; Penny Lane
  DEFB $00                ; The Bank
  DEFB $00                ; Wally's House
  DEFB $01                ; Meat Street
  DEFB $00                ; The Butchers
  DEFB $01                ; Trunk Road
  DEFB $00                ; The Zoo
  DEFB $01                ; Rail Road
  DEFB $00                ; The Station
  DEFB $01                ; The Docks
  DEFB $01                ; The Sewer
  DEFB $00                ; The Cave

; Get the new room and co-ordinates for a computer controlled player.
;
; Used by the routines at Movement_Table_00, Movement_Table_01,
; Movement_Table_02, Movement_Table_03, Movement_Table_04, Movement_Table_05
; and Movement_Table_06.
Update_Character_Room:
  LD A,(IY+$0F)           ; Set the current room to the most recently visited
  LD (IY+$6E),A           ; room.
  LD A,(IY+$69)           ; Set the target room as the current room.
  LD (IY+$0F),A           ;
  LD A,(IY+$73)           ; Get the index of next co-ordinates to use.
                          ; (Character_Next_Room_3)
  CALL Room_Get_Coords    ; Point HL at the co-ordinate table to use.
  LD A,(HL)               ; Set the new x co-ordinate.
  LD (IY+$05),A           ;
  INC HL                  ; Set the new y co-ordinate.
  LD A,(HL)               ;
  LD (IY+$0A),A           ;
  XOR A                   ; Set the current frame to 0.
  LD (IY+$00),A           ;
  CALL Update_Character   ; Update the character.
  XOR A                   ; Set A to 0 to set some flags.
  LD (IY+$37),A           ; Set the character as on the ground (ie: not
                          ; falling)
  LD (IY+$3C),A           ; Set the character to not jumping.
  LD (IY+$46),A           ; Set the character to not jumping in any direction.
  RET                     ; Return.

; Find the address of an item with the specified index
;
; Used by the routine at Update_Characters.
;
; E The item index
; HL On exit, holds of the address of the item data currently at that location
Get_Nth_Object_Ptr:
  LD D,$00                ; Start at room 0.
  LD BC,$21FF             ; Set B to 21 (number of rooms) and C to FF (default
                          ; index)
  LD HL,Room_Objects_00   ; Point HL at the start of the object data.
                          ; (Room_Objects_00)
Get_Nth_Object_Ptr_1:
  LD A,(HL)               ; Get the next ID.
  CP $FF                  ; Is this an end marker?
  JR Z,Get_Nth_Object_Ptr_2 ; Jump forward if it is.
  INC HL                  ; Move to the next entry.
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  INC C                   ; Increment the index count.
  CP E                    ; Does this match the index?
  JR NZ,Get_Nth_Object_Ptr_1 ; Jump back to look at more data if so.
  RET                     ; Otherwise return, HL is now pointing at the data
                          ; for this item.
; There is no object data here.
Get_Nth_Object_Ptr_2:
  LD C,$FF                ; Set C to "no item found".
  INC HL                  ; Move to the next entry in the object buffer.
  INC D                   ; Increment the room count.
  DJNZ Get_Nth_Object_Ptr_1 ; Loop while there are more rooms to look at.
  RET                     ; Otherwise return.

; nth item swap list : Wally
  DEFB $1A,$1D,$00,$0F,$1C,$18,$23,$14
  DEFB $FF

; nth item swap list : Wilma
  DEFB $01,$21,$04,$20,$11,$16,$19,$24
  DEFB $FF

; nth item swap list : Tom
  DEFB $0B,$15,$02,$13,$07,$28,$17,$25
  DEFB $FF

; nth item swap list : Dick
  DEFB $0D,$27,$12,$1F,$09,$22,$1E,$0A
  DEFB $FF

; nth item swap list : Harry
  DEFB $10,$03,$0E,$05,$1B,$06,$08,$26
  DEFB $14,$FF

; The next room a computer character should swap
Next_Room_Swaps_Ptr:
  DEFW Next_Room_Swaps

; Get the next room that a computer controlled character should swap items
;
; Used by the routine at Update_Characters.
;
; A On return, holds the room number
Get_Next_Room_Swap:
  PUSH HL                 ; Remember HL.
  LD HL,(Next_Room_Swaps_Ptr) ; Get the current pointer to the swap list.
                              ; (Next_Room_Swaps_Ptr)
  LD A,(HL)               ; Get the next room.
  CP $FF                  ; Is it an end marker?
  JR NZ,Get_Next_Room_Swap_0 ; Jump forward if it isn't.
  LD HL,Next_Room_Swaps   ; Otherwise move back to the start of the list. and
  LD A,(HL)               ; get that item.
Get_Next_Room_Swap_0:
  INC HL                      ; Move to the next position in the table and
  LD (Next_Room_Swaps_Ptr),HL ; store it.
  POP HL                  ; Restore HL and return.
  RET                     ;

; List of rooms a computer player can swap items in. Terminated by FF.
Next_Room_Swaps:
  DEFB $02,$04,$05,$08,$09,$0A,$0B,$0C
  DEFB $0E,$0F,$11,$12,$14,$16,$17,$19
  DEFB $1B,$1D,$1E,$1F,$20,$FF

; The next room for the jumping jack or Herbert to appear in
Herbert_Next_Room:
  DEFB $0F

; Set the next room for the jumping jack or Herbert to appear in
;
; Used by the routines at Update_Jumping_Jack and Move_Herbert.
Herbert_Get_Next_Room:
  LD A,(Herbert_Next_Room) ; Get the current room. (Herbert_Next_Room)
  INC A                   ; Move to the next one along.
  CP $20                  ; Have we reached room 20? (Herbert doesn't appear in
                          ; the sewer or the cave.)
  JR NZ,Herbert_Get_Next_Room_1 ; Jump forward if not.
  XOR A                   ; Otherwise reset to room 0 (Town Square).
Herbert_Get_Next_Room_1:
  LD (Herbert_Next_Room),A ; Set the new value.
  XOR $15                 ; Flip bits 0, 3 and 5 and return.
  RET                     ;

; Co-ordinate table
;
; Used by the routine at Room_Get_Coords.
;
; This table contains the x and y co-ordinates for the entries in the 'next'
; room table. If the co-ordinates match and / or 'in' is pressed, the room
; should be switched.
Next_Room_IDs:
  DEFB $00,$98            ; 0 : Far left of a room.
  DEFB $F0,$98            ; 1 : Far right of a room.
  DEFB $78,$98            ; 2
  DEFB $30,$98            ; 3
  DEFB $C0,$98            ; 4
  DEFB $00,$58            ; 5 : The sewer (left)
  DEFB $F0,$58            ; 6 : The sewer (right)
  DEFB $F0,$98            ; 7
  DEFB $00,$98            ; 8

; Platform table 0 (most rooms)
  DEFB $FF

; Platform table 1 (The Sewer)
Platforms_1:
  DEFB $78,$00,$05,$80,$05,$06,$88,$06
  DEFB $07,$90,$07,$08,$98,$08,$09,$A0
  DEFB $09,$0A,$A8,$0A,$0B,$B0,$0B,$0C
  DEFB $78,$1B,$20,$80,$1A,$1B,$88,$19
  DEFB $1A,$90,$18,$19,$98,$17,$18,$A0
  DEFB $16,$17,$A8,$15,$16,$B0,$14,$15
  DEFB $FF

; Platform table 2 (The School)
Platforms_2:
  DEFB $A0,$06,$09,$A0,$0B,$0E,$A0,$10
  DEFB $13,$A0,$15,$18,$A0,$1A,$1D,$FF

; Platform table 3 (The Station)
Platforms_3:
  DEFB $A0,$13,$1B,$FF

; Platform table 4 (School Lane)
Platforms_4:
  DEFB $A8,$02,$0A,$90,$03,$09,$78,$04
  DEFB $08,$FF

; Platform table 5 (The Town Square)
Platforms_5:
  DEFB $A8,$03,$11,$98,$05,$0F,$80,$09
  DEFB $0B,$FF

; Platform table 6 (unused)
Platforms_6:
  DEFB $FF

; Platform table 7 (The Super Market)
Platforms_7:
  DEFB $98,$01,$09,$FF,$00,$20,$FF

; Platform table 8 (The Pub)
Platforms_8:
  DEFB $A0,$04,$1D,$FF

; Platform table 9 (Wall Street)
Platforms_9:
  DEFB $B8,$08,$0A,$78,$0C,$1C,$FF

; The address table for appropriate above-floor platforms in a room
;
; Each table contains three byte entries in the format y co-ordinate, leftmost
; co-ordinate, rightmost co-ordinate and is terminated by FF
Platform_Ptr_Table:
  DEFW $AF22
  DEFW Platforms_1
  DEFW Platforms_2
  DEFW Platforms_3
  DEFW Platforms_4
  DEFW Platforms_5
  DEFW Platforms_6
  DEFW Platforms_7
  DEFW Platforms_8
  DEFW Platforms_9

; Table containing the platform layout ID (see jump table in AF8F) for each
; room
Platform_Table:
  DEFB $05,$00,$00,$00,$07,$00,$00,$00
  DEFB $09,$00,$00,$04,$02,$00,$00,$08
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$03,$00,$01
  DEFB $00

; See if a player is in mid-air, and drop them on a platform or ground
;
; Used by the routines at Update_Characters and Detect_Input.
Drop_Character:
  LD (IY+$37),$01         ; Set that the character is mid-air.
  LD A,(IY+$0F)           ; Get the current room.
  LD E,A                  ; Put it in DE.
  LD D,$00                ;
  LD HL,Platform_Table    ; Add the basic address for the room platform IDs.
  ADD HL,DE               ; (Platform_Table)
  LD A,(HL)               ; Get the platform ID.
  ADD A,A                 ; Double it to get a word offset.
  LD E,A                  ; Put this in E. (D already is 0)
  LD HL,Platform_Ptr_Table ; Add the basic address for the platform table.
  ADD HL,DE                ;
  LD E,(HL)               ; Put the actual address in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Exhange DE and HL.
  LD A,(IY+$0A)           ; Get the current Y co-ordinate.
  CP $98                  ; Is it the floor?
  JR Z,Drop_Character_5   ; Jump forward if so, nowhere to fall.
; The player is in mid-air. Can they land on a platform?
  ADD A,$20               ; Drop down a row.
  LD B,A                  ; Put this in B.
Drop_Character_1:
  LD A,(HL)               ; Get the Y co-ordinate.
  CP $FF                  ; Is it an end-marker instead.
  RET Z                   ; Return if it is, nothing to do here.
; There are platforms in the room, is the player near any?
  CP B                    ; Does the Y co-ordinate match?
  JR Z,Drop_Character_4   ; Jump forward if it does.
  INC HL                  ; Move to the next entry and try it.
Drop_Character_2:
  INC HL                  ;
Drop_Character_3:
  INC HL                  ;
  JR Drop_Character_1     ;
; The player is on the right Y axis for a platform, what about the X axis?
Drop_Character_4:
  INC HL                  ; Move to the leftmost co-ordinate.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  ADD A,$08               ; Reduce it to an offset between 00 and 1F.
  SRL A                   ;
  SRL A                   ;
  SRL A                   ;
  CP (HL)                 ; Is the current X co-ordinate greater or equal than
                          ; the one in this table?
  JR C,Drop_Character_2   ; No, so loop back and try the next one.
  INC HL                  ; Point HL to the rightmost co-ordinate.
  CP (HL)                 ; Is the current X co-ordinate less or equal than the
                          ; one in this table?
  JR NC,Drop_Character_3  ; No, so loop back and try the next one.
; At this point, the player has either landed on the ground or a platform.
Drop_Character_5:
  LD (IY+$37),$00         ; Reset the "mid-air" flag and return.
  RET                     ;

; Check that 'right' has been pressed, and set A to 1 if it has
;
; Used by the routines at Detect_Input, Chase_Detect_Movement and
; Space_Check_Movement.
Detect_Right:
  LD A,(Input_Method)     ; Get the input mechanism. (Input_Method)
  OR A                    ; Is it 0?
  JR Z,Detect_Right_3     ; Jump forward if it is.
  CP $01                  ; Is it 1?
  JR NZ,Detect_Right_1    ; Jump forward if it is.
; Use Kempston input
  IN A,($1F)              ; Read the Kempston interface.
  BIT 0,A                 ; Was 'right' pressed?
  JR NZ,Detect_Right_2    ; If so, jump forward to signal success.
  JR Detect_Right_4       ; Otherwise, jump forward to indicate nothing read.
; Use Sinclair input
Detect_Right_1:
  LD A,$EF
  IN A,($FE)
  BIT 3,A
  JR NZ,Detect_Right_4
; 'Left' was pressed, so indicate this.
Detect_Right_2:
  LD A,$01                ; Return A with 1 to mark success.
  RET                     ;
; Use keyboard input.
Detect_Right_3:
  LD A,$FB
  IN A,($FE)
  OR $F5
  LD B,A
  LD A,$DF
  IN A,($FE)
  OR $EA
  AND B
  CP $FF
  JR NZ,Detect_Right_2
; 'Left' wasn't pressed, so indicate this.
Detect_Right_4:
  XOR A                   ; Return A with 0.
  RET                     ;

; Check that 'left' has been pressed, and set A to 1 if it has
;
; Used by the routines at Detect_Input, Chase_Detect_Movement and
; Space_Check_Movement.
Detect_Left:
  LD A,(Input_Method)     ; Get the input mechanism. (Input_Method)
  OR A                    ; Is it 0?
  JR Z,Detect_Left_3      ; Jump forward if it is.
  CP $01                  ; Is it 1?
  JR NZ,Detect_Left_1     ; Jump forward if it is.
; Use Kempston input
  IN A,($1F)              ; Read the Kempston interface.
  BIT 1,A                 ; Was 'left' pressed?
  JR NZ,Detect_Left_2     ; If so, jump forward to signal success.
  JR Detect_Left_4        ; Otherwise, jump forward to indicate nothing read.
; Use Sinclair input
Detect_Left_1:
  LD A,$EF
  IN A,($FE)
  BIT 4,A
  JR NZ,Detect_Left_4
; 'Right' was pressed, so indicate this.
Detect_Left_2:
  LD A,$01                ; Return A with 1 to mark success.
  RET                     ;
; Use keyboard input.
Detect_Left_3:
  LD A,$FB
  IN A,($FE)
  OR $EA
  LD B,A
  LD A,$DF
  IN A,($FE)
  OR $F5
  AND B
  CP $FF
  JR NZ,Detect_Left_2
; 'Right' wasn't pressed, so indicate this.
Detect_Left_4:
  XOR A                   ; Return A with 0.
  RET                     ;

; Check that 'jump' has been pressed, and set A to 1 if it has
;
; Used by the routines at Detect_Input and Space_Check_Fire.
Detect_Jump:
  LD A,(Input_Method)     ; Get the input mechanism. (Input_Method)
  OR A                    ; Is it 0?
  JR Z,Detect_Jump_3      ; Jump forward if it is.
  CP $01                  ; Is it 1?
  JR NZ,Detect_Jump_2     ; Jump forward if it is.
; Use Kempston input.
  IN A,($1F)              ; Read the Kempston interface.
  BIT 4,A                 ; Was 'fire' pressed?
  JR Z,Detect_Jump_4      ; If not, jump forward to indicate nothing read.
; 'Jump' / 'Fire' was pressed, so indicate this.
Detect_Jump_1:
  LD A,$01                ; Return A with 1 to mark success.
  RET                     ;
; Use Sinclair input.
Detect_Jump_2:
  LD A,$EF
  IN A,($FE)
  BIT 0,A
  JR Z,Detect_Jump_1
  JR Detect_Jump_4
; Use keyboard input.
Detect_Jump_3:
  LD A,$FE
  IN A,($FE)
  LD B,A
  LD A,$7F
  IN A,($FE)
  AND B
  OR $E0
  CP $FF
  JP NZ,Detect_Jump_1
; 'Jump' / 'Fire' wasn't pressed, so indicate this.
Detect_Jump_4:
  XOR A                   ; Return A with 0.
  RET                     ;

; Buffer for the current player
;
; During the game, the value of IY is set to this value and used to access
; other character specific flags, such as endurance and items held.
;
; Character_Base - Wally BC68 - Wilma BC69 - Tom BC6A - Dick BC6B - Harry
Current_Player:
  DEFW $0000

; Check for user input and act on it
;
; Used by the routines at Main and OutOfTown.
Detect_Input:
  LD IY,(Current_Player)  ; Point IY at the current player buffer.
  LD A,(IY+$0F)           ; Mark the current player's room as the current one.
  LD (Current_Room),A     ; (Current_Room).
  CALL Drop_Character     ; Drop the player to ground if they are in mid-air.
  LD A,(IY+$46)           ; Set flag (?) to 0. (Character_Jump_Direction)
  OR A
  JP NZ,Jump_1            ; If not zero, make the character jump.
  LD A,(IY+$37)           ; Is the character on the ground? (???)
  OR A                    ;
  JP NZ,Drop_Character_Row ; If not, make them fall one level.
  CALL Detect_Jump        ; Was 'jump' pressed?
  OR A                    ;
  JP NZ,Jump              ; If it was, make the character jump.
  LD (IY+$3C),$00
  CALL Detect_Right       ; Was 'right' pressed?
  OR A                    ;
  JR Z,Detect_Input_0     ; Jump forward if it wasn't.
  LD (IY+$3C),$01         ; Set the direction to "right".
  LD (IY+$41),$01         ;
  JP Move_Character       ; Move the character.
Detect_Input_0:
  CALL Detect_Left        ; Was 'left' pressed?
  OR A                    ;
  RET Z                   ; Return if it wasn't, no input made.
  LD (IY+$3C),$FF         ; Set the direction to "left".
  LD (IY+$41),$FF         ;
  JP Move_Character       ; Move the character.

; Put a character into the sprite buffer
;
; Used by the routines at Draw_Characters, Chase and OutOfTown.
;
; IY The base address of the character buffer (BC67 - BC6B)
;
; This routine was copied from a similar one in Pyjamarama.
Update_Sprite:
  EXX                     ; Exchange main registers.
  LD E,(IY+$23)           ; Put the graphic address in DE. (Character_Ptr_Lo /
  LD D,(IY+$28)           ; Character_Ptr_Hi)
  LD (Draw_SP),SP         ; Store a copy of the stack pointer. (Draw_SP)
  LD H,(IY+$00)           ; Put the frame number in HL.
  LD L,$00                ;
  SRL H                   ; Halve it to get the correct offset.
  RR L                    ;
  ADD HL,DE               ; Add the base address.
  LD SP,HL                ; Point the stack at the graphic to draw.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  LD B,A                  ; Store this in B.
  AND $07                 ; Put the bottom 3 bits (as the frame number) in B189
  LD ($B189),A            ; which modifies later code.
  INC A                   ; Add 1 and store in B129 and B145 which modifies
  LD ($B129),A            ; later code.
  LD ($B145),A            ;
  LD A,B                  ; Put the top 5 bits (as the byte) as a value in B17B
  AND $F8                 ; which modifies later code.
  RRCA                    ;
  RRCA                    ;
  RRCA                    ;
  LD ($B17B),A            ;
  ADD A,$02               ; Add 2 and put this in E.
  LD E,A                  ;
  LD C,$20                ; 14 rows to draw.
  LD L,(IY+$0A)           ; Put the Y co-ordinate in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 16 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD D,$63                ; Set the high byte of DE to the sprite buffer.
  ADD HL,DE               ; Add the offset.
Update_Sprite_0:
  POP DE                  ; Put the next byte (mask) in DE.
  LD B,$00                ; Set B to the number of times to loop. (was modified
                          ; earlier in the code)
  DEC B                   ; If this is frame 0, nothing else is needed here,
  JR Z,Update_Sprite_2    ; and only two bytes need updating instead of three.
; If this isn't frame 0, everything needs shifting to the right to be in sync.
  SCF                     ; Set the carry flag, so the following RR
                          ; instructions put it in bit 7.
  LD A,$FF                ; Set the initial mask as FF (all bits).
Update_Sprite_1:
  RR E                    ; Rotate the mask in E, then through D, taking the
  RR D                    ; carry flag through each time.
  RRA                     ; Shift the mask by one pixel.
  DJNZ Update_Sprite_1    ; Loop while there is more to do.
; At this point, HL points to the address in the sprite buffer to update.
  AND (HL)                ; Do a logical AND of the byte against the mask in A.
  LD (HL),A               ;
Update_Sprite_2:
  DEC HL                  ; Move back an entry in the sprite buffer.
  LD A,(HL)               ; Do a logical AND of the byte against the mask in D.
  AND D                   ;
  LD (HL),A               ;
  DEC HL                  ; Move back an entry in the sprite buffer.
  LD A,(HL)               ; Do a logical AND of the byte against the mask in E.
  AND E                   ;
  LD (HL),A               ;
  INC HL                  ; Move forward to the next position in the buffer.
  INC HL                  ;
  POP DE                  ; Put the next byte (data) in DE.
  LD B,$00                ; Set B to the number of times to loop. (Was modified
                          ; in earlier code)
  DEC B                   ; If this is frame 0, nothing else is needed here,
  JR Z,Update_Sprite_4    ; and two bytes need updating instead of three. } If
                          ; this isn't frame 0, everything needs shifting to
                          ; the right to be in sync.
  XOR A                   ; Set the initial data as 0 (no bits).
Update_Sprite_3:
  SRL E                   ; Rotate the byte in E, putting 0 in bit 7.
  RR D                    ; Rotate the byte in D, using the carry.
  RRA                     ; Shift the data by one pixel.
  DJNZ Update_Sprite_3    ; Loop while there is more to do.
  OR (HL)                 ; Do a logical OR of the byte against the data in A.
  LD (HL),A               ;
Update_Sprite_4:
  DEC HL                  ; Move back an entry in the sprite buffer.
  LD A,(HL)               ; Do a logical OR of the byte against the data in D.
  OR D                    ;
  LD (HL),A               ;
  DEC HL                  ; Move back an entry in the sprite buffer.
  LD A,(HL)               ; Do a logical OR of the byte against the data in E.
  OR E                    ;
  LD (HL),A               ;
  LD DE,$0022             ; Move to the next row.
  ADD HL,DE               ;
  DEC C                   ; Decrement the number of rows left.
  JP NZ,Update_Sprite_0   ; Jump back if there are more rows to draw.
; Now handle the attributes.
  LD A,(IY+$0A)           ; Get the bottom 3 bits of the Y co-ordinate, as the
  AND $07                 ; sub-component.
  JR Z,Update_Sprite_5    ; If this equals 0, set 4 rows to draw, otherwise 45.
  LD B,$05                ;
  JR Update_Sprite_6      ;
Update_Sprite_5:
  LD B,$04                ;
Update_Sprite_6:
  LD A,(IY+$0A)           ; Get the top 5 bits of the Y co-ordinate, as the
  AND $F8                 ; byte.
  LD H,$00                ; Put this in HL.
  LD L,A                  ;
  ADD HL,HL               ; Multiply by 4.
  ADD HL,HL               ;
  LD DE,$FB00             ; Add the base address to get a location in the
  ADD HL,DE               ; attribute buffer. (FC00)
  LD DE,$001E             ; Set DE as the offset to move between rows.
  LD C,(IY+$1E)           ; Put the attribute to use in C.
                          ; (Character_Attribute)
Update_Sprite_7:
  LD (HL),C               ; Set the attribute for the next two bytes.
  INC HL                  ;
  LD (HL),C               ;
  INC HL                  ;
  LD A,$FF                ; Put the X offset in A. (This is modified by earlier
                          ; code)
  OR A                    ; Is the offset zero?
  JR Z,Update_Sprite_8    ; If it is, jump forward, no more calculations
                          ; needed.
  LD (HL),C               ; Otherwise set the attribute for the third byte.
                          ; which is needed on frames other than 0 that span a
                          ; byte boundary.
Update_Sprite_8:
  ADD HL,DE               ; Move forward a row and back two columns.
  DJNZ Update_Sprite_7    ; Loop while there is more to draw.
  EXX                     ; Exchange main registers.
  LD SP,(Draw_SP)         ; Restore the stack and return.
  RET                     ;

; Drop the current character's height down one notch up to floor level
;
; Used by the routines at Update_Characters and Detect_Input.
Drop_Character_Row:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  ADD A,$04               ; Add 4 to it to drop down one level.
  CP $98                    ; Set the maximum Y co-ordinate to 98 so they can't
  JR C,Drop_Character_Row_1 ; drop below floor level.
  LD A,$98                  ;
Drop_Character_Row_1:
  LD (IY+$0A),A           ; Store the new Y co-ordinate and return.
  RET                     ;

; Make the current character jump
;
; Used by the routines at Movement_Table_05, Movement_Table_06 and
; Detect_Input.
Jump:
  LD A,(IY+$3C)           ; Is the character moving? (Character_Jump)
  OR A                    ;
  JR NZ,Jump_0            ; Move forward if they are.
  LD A,(IY+$41)           ; Copy the current direction (Character_Direction) to
  LD (IY+$3C),A           ; the movement flag.
Jump_0:
  LD (IY+$46),A           ; Copy this to the jump flag.
                          ; Character_Jump_Direction
  LD (IY+$4B),$00         ; Set the jump table index to 0.
                          ; Character_Jump_Frame_ID
; This entry point is used by the routines at Update_Characters and
; Detect_Input.
Jump_1:
  LD A,(IY+$3C)           ; Get the direction.
  CP $01                  ; Is the character facing right?
  JR Z,Jump_5             ; Move to handle that if so.
; Character is jumping left.
  LD A,(IY+$4B)           ; Get the jump table index.
  LD E,A                  ; Multiply by 3 and store in DE.
  ADD A,A                 ;
  ADD A,E                 ;
  LD E,A                  ;
  LD D,$00                ;
  LD HL,Jump_Table        ; Add the base address of the jump table (Jump_Table)
  ADD HL,DE               ; to get an offset.
  LD E,(HL)               ; Put the X offset in E.
  INC HL                  ; Put the Y offset in D.
  LD D,(HL)               ;
  INC HL                  ; Put the graphic frame number in B.
  LD B,(HL)               ;
  LD A,D
  DEC A
  BIT 7,A
  JR NZ,Jump_2
  LD A,(IY+$37)
  OR A
  JR NZ,Jump_2
  LD A,(IY+$0A)
  AND $07
  JR NZ,Jump_2
  LD (IY+$4B),$0B
  LD B,$00
  JR Jump_4
Jump_2:
  LD A,(IY-$3C)
  OR A
  CALL NZ,Change_Direction ; If not, need to change direction.
  LD A,(IY+$0A)
  ADD A,D
  LD (IY+$0A),A
  LD A,(IY+$05)           ; Get the X co-ordinate.
  SUB E
  JR NC,Jump_3
  XOR A
; Common exit point for jumping left and right.
Jump_3:
  LD (IY+$05),A           ; Set the current X co-ordinate (Character_X) to A.
Jump_4:
  LD (IY+$00),B           ; Set the current frame number (Character_Base) to B.
  INC (IY+$4B)            ; Increment the jump table index.
  LD A,(IY+$4B)           ; Have we reached the end of the table?
  CP $0C                  ;
  RET NZ                  ; Return if not.
  LD (IY+$3C),$00         ; Set flags as "not jumping"
  LD (IY+$46),$00         ;
  JP Play_Footstep_2      ; Play a landing footstep sound and return.
; Character is jumping right.
Jump_5:
  LD A,(IY+$4B)           ; Get the jump frame number.
  LD E,A                  ; Multiply by 3 and store in DE.
  ADD A,A                 ;
  ADD A,E                 ;
  LD E,A                  ;
  LD D,$00                ;
  LD HL,Jump_Table        ; Add the base address of the jump table (Jump_Table)
  ADD HL,DE               ; to get an offset.
  LD E,(HL)               ; Put the X offset in E.
  INC HL                  ; Put the Y offset in D.
  LD D,(HL)               ;
  INC HL                  ; Put the graphic frame number in B.
  LD B,(HL)               ;
  LD A,D
  DEC A
  BIT 7,A
  JR NZ,Jump_6
  LD A,(IY+$37)
  OR A
  JR NZ,Jump_6
  LD A,(IY+$0A)
  AND $07
  JR NZ,Jump_6
  LD (IY+$4B),$0B
  LD B,$00                ; Set the frame number to 0.
  JR Jump_4               ; Jump back to update the sequence.
Jump_6:
  LD A,(IY-$3C)
  OR A
  CALL Z,Change_Direction ; If so, need to change direction.
  LD A,(IY+$0A)
  ADD A,D
  LD (IY+$0A),A
  LD A,(IY+$05)           ; Get the X co-ordinate.
  ADD A,E
  CP $F0
  JR C,Jump_3
  LD A,$F0
  JP Jump_3               ; Jump back and continue.

; Jump movement table
;
; Each entry in the table is executed during a jump, and holds three bytes. The
; format for each entry is :
; +---+----------------------------------------------+
; | 0 | X position to increment by                   |
; | 1 | Y position to increment by (can be negative) |
; | 2 | Frame number to use during the jump (6 or 7) |
; +---+----------------------------------------------+
Jump_Table:
  DEFB $02,$FC,$06
  DEFB $02,$FC,$06
  DEFB $02,$FC,$06
  DEFB $02,$FC,$06
  DEFB $02,$FC,$07
  DEFB $02,$FC,$07
  DEFB $02,$04,$07
  DEFB $02,$04,$07
  DEFB $02,$04,$06
  DEFB $02,$04,$06
  DEFB $02,$04,$06
  DEFB $02,$04,$00

; Move a character left or right
;
; Used by the routines at Update_Characters, Movement_Table_00,
; Movement_Table_01, Movement_Table_02, Movement_Table_03, Movement_Table_04,
; Movement_Table_05, Movement_Table_06, Detect_Input, Cracked_Safe and
; Chase_Detect_Movement.
;
; IY Current character buffer (Character_Base - BC6B)
Move_Character:
  CALL Is_Character_Current ; Is this character the active one?
  JR Z,Move_Character_0   ; Jump forward if it is.
  LD A,(Current_Room)     ; Get the current room number.
  CP (IY+$0F)             ; Is the player in this room?
  JR Z,Move_Character_0   ; Jump forward if they are.
  LD A,(IY+$5F)           ; Flip the movement flag. (Character_Needs_Update)
  XOR $01                 ;
  LD (IY+$5F),A           ;
  RET Z                   ; Return if this is zero.
; Update the frame number.
Move_Character_0:
  LD A,(IY+$00)           ; Get the frame number and increment it.
  INC A                   ;
  CP $06                  ; If the frame is greater than 5, reset it to 0.
  JR C,Move_Character_1   ;
  XOR A                   ;
Move_Character_1:
  LD (IY+$00),A           ; Store the new frame number.
; Check for any movement.
  LD A,(IY+$3C)           ; Get the movement flag. (Character_Jump)
  CP $01                  ; Is the character facing right?
  JR NZ,Move_Character_2  ; Move forward if not.
; Move right.
  LD A,(IY-$3C)           ; Get the current direction of the sprite.
  OR A                    ; Is it 0 (left)?
  CALL Z,Change_Direction ; If so, need to change direction.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  ADD A,$02               ; Add 2.
  CP $F0                  ; If it's greater than F0 set it to that.
  JR C,Move_Character_3   ;
  LD A,$F0                ;
  JP Move_Character_3     ;
; Move left.
Move_Character_2:
  LD A,(IY-$3C)           ; Get the direction flag. (Character_Jump)
  OR A                    ; Is it 0?
  CALL NZ,Change_Direction ; If it isn't, it must be facing left, so change
                           ; direction.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  SUB $02                 ; Subtract 2.
  JR NC,Move_Character_3  ; If it's less than 0, set it to that.
  XOR A                   ;
Move_Character_3:
  LD (IY+$05),A           ; Set the new X co-ordinate
  JP Play_Footstep        ; Play a footstep and return.

; The current control mechanism (0 - Keyboard, 1 - Kempston, 2 - Sinclair)
Input_Method:
  DEFB $00

; Select Sinclair control
;
; Used by the routine at Display_Title.
Select_Sinclair:
  LD A,$02                ; Set 2 to the control mechanism byte.
  LD (Input_Method),A     ;
  RET                     ;

; Select Kempston control
;
; Used by the routine at Display_Title.
Select_Kempston:
  LD A,$01                ; Set 1 to the control mechanism byte.
  LD (Input_Method),A     ;
  RET                     ;

; Select Keyboard control
;
; Used by the routine at Display_Title.
Select_Keyboard:
  XOR A                   ; Set 0 to the control mechanism byte.
  LD (Input_Method),A     ;
  RET                     ;

; Temporary space to calculate individual earnings
Earnings_Buffer:
  DEFB $00,$00

; Final total of money earned
Total_Money:
  DEFB $00,$00

; Print a breakdown of who earned what
;
; Used by the routines at Cracked_Safe and Final_Score.
;
; IY Pointer to character data (Character_Base - BC6E)
Print_Earnings:
  CALL Clear_Screen       ; Clear the screen.
  LD DE,$010A             ; Set the position.
  LD HL,Final_Score_Text  ; Point HL at the earning text. (Final_Score_Text)
  CALL Print_String       ; Print it.
  PUSH IY                 ; Remember the current pointer.
  LD DE,$0513
  LD BC,$0545
  LD HL,Earnings_Buffer   ; Point HL at the scratch buffer for earnings.
                          ; (Earnings_Buffer)
  LD IY,Character_Base    ; Point IY to the first character buffer.
  LD IX,Earnings_Buffer   ; Point HL at the scratch buffer for earnings.
  LD (IX+$02),$00
  LD (IX+$03),$00
Print_Earnings_1:
  LD A,(IY-$0A)
  LD (IX+$01),A
  ADD A,(IX+$03)
  DAA
  LD (IX+$03),A
  LD A,(IY-$1E)
  LD (IX+$00),A
  ADC A,(IX+$02)
  DAA
  LD (IX+$02),A
  CALL Print_Money        ; Print the money.
  INC D                   ; Move down three rows.
  INC D                   ;
  INC D                   ;
  INC IY                  ; Move to the next player.
  DJNZ Print_Earnings_1
  POP IY                  ; Restore the original pointer in IY.
  LD D,$15                ; Print at row 15.
  LD HL,Total_Money       ; Point HL at the final sum earned.
  LD E,$11                ; Print at column 11.
  CALL Print_Money        ; Print the money.
  JP Wait_For_Keypress    ; Wait for a keypress and return.

; The current money digit being drawn.
;
; Used by the routine in Print_Money
;
; 0 - hundreds, 1 - tens
Current_Money_Digit:
  DEFB $00

; Print a monetary value on screen
;
; Used by the routines at Print_Earnings and Final_Score.
;
; HL Pointer to the money
; DE The screen position
Print_Money:
  PUSH HL                 ; Store main registers.
  PUSH BC                 ;
  PUSH DE                 ;
  LD A,$3D                ; Print an equals sign.
  CALL Print_Char         ;
  INC E                   ; Move to the next column.
  LD C,$42                ; Set bright red on black.
  LD A,$26                ; Print a pound symbol.
  CALL Print_Char         ;
  INC E                   ; Move to the next column.
  XOR A                      ; Set to drawing the hundreds.
  LD (Current_Money_Digit),A ;
  LD C,$45                ; Get bright cyan on black.
  LD B,$02                ; 2 digits to draw.
Print_Money_1:
  LD A,(HL)               ; Get the value.
  SRL A                   ; Use the top four bits only.
  SRL A                   ;
  SRL A                   ;
  SRL A                   ;
  ADD A,$30               ; Add to ASCII '0' to get the appropriate number
                          ; graphic.
  CP $30                  ; Is it zero?
  JR NZ,Print_Money_2     ; Jump forward if it isn't.
  LD A,(Current_Money_Digit) ; Are the hundreds being drawn?
  OR A                       ;
  JR Z,Print_Money_3      ; Jump forward if so.
  LD A,$30                ; Print '0'.
Print_Money_2:
  CALL Print_Char         ;
  LD A,$01                   ; Signal that the tens should be drawn next.
  LD (Current_Money_Digit),A ;
Print_Money_3:
  INC E                   ; Move to the next character.
  LD A,(HL)               ; Get the value.
  AND $0F                 ; Get the bottom four bits only.
  ADD A,$30               ; Add to ASCII '0' to get the appropriate number
                          ; graphic.
  CP $30                  ; Is it zero?
  JR NZ,Print_Money_5     ; Jump forward if it isn't.
  LD A,B                  ; Is this the "tens" digit?
  CP $01                  ;
  JR Z,Print_Money_4      ; Jump forward if it is.
  LD A,(Current_Money_Digit) ; Are the hunderds being drawn?
  OR A                       ;
  JR Z,Print_Money_6      ; Jump forward if not.
Print_Money_4:
  LD A,$30                ; Add to ASCII '0' to get the appropriate number
                          ; graphic.
Print_Money_5:
  CALL Print_Char         ; Print the digit.
  LD A,$01                   ; Move from tens to hundreds.
  LD (Current_Money_Digit),A ;
Print_Money_6:
  INC E                   ; Move to the next character.
  INC HL                  ; Move to the next position in the buffer.
  DJNZ Print_Money_1      ; Loop until all digits are accounted for.
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP HL                  ;
  RET                     ;

; Wait for a keypress and return it in A
;
; Used by the routines at Print_Earnings, Cracked_Safe and Final_Score.
Wait_For_Keypress:
  XOR A                   ; Read all rows of the keyboard, if any are pressed,
  IN A,($FE)              ; then the relevant bit 0 - 5 will be reset. Although
                          ; this makes it impossible to determine what key is
                          ; pressed, that doesn't matter here.
  OR $E0                  ; Switch on bits 5-7, which are not used.
  CP $FF                  ; Were any keys pressed?
  JR NZ,Wait_For_Keypress ; Loop back while there aren't.
; A key is pressed. Make sure it's released before continuing.
Wait_For_Release:
  XOR A                   ; Read all keys again.
  IN A,($FE)              ;
  OR $E0                  ; Switch on bits 5-7.
  CP $FF                  ; Were any keys pressed?
  JR Z,Wait_For_Release   ; Loop back while there still are.
  RET                     ; Otherwise return.

; The offsets on screen to put everyone for the final safe cracking sequence
Safe_Character_Offsets:
  DEFB $B0,$88,$60,$38,$10

; The safe has been cracked! Get everyone together and print earnings.
;
; Used by the routine at Action_Safe.
Cracked_Safe:
  LD DE,$131C
  LD HL,Room_Block_39
  CALL Overwrite_Screen
Cracked_Safe_1:
  LD IY,Character_Base    ; Point IY towards the first character buffer.
  LD HL,Safe_Character_Offsets
  LD B,$05
Cracked_Safe_2:
  PUSH BC
  LD (IY+$0A),$98
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP (HL)
  JR Z,Cracked_Safe_8
Cracked_Safe_3:
  PUSH AF
  LD A,(IY+$0F)
  CP $16
  JR Z,Cracked_Safe_4
  LD (IY+$0F),$16
  LD (IY+$05),$00
  POP AF
  SCF
  PUSH AF
Cracked_Safe_4:
  POP AF
  PUSH HL
  JR NC,Cracked_Safe_5
  LD (IY+$3C),$01
  LD (IY+$41),$01
  CALL Move_Character
  JR Cracked_Safe_6
Cracked_Safe_5:
  LD (IY+$3C),$FF
  LD (IY+$41),$FF
  CALL Move_Character
Cracked_Safe_6:
  POP HL
  POP BC
Cracked_Safe_7:
  LD IY,Character_Base    ; Point IY towards the first character buffer.
  CALL Update_Room
  CALL Draw_Characters
  JR Cracked_Safe_1
Cracked_Safe_8:
  LD A,(IY+$0F)
  CP $16
  JR NZ,Cracked_Safe_3
  POP BC
  INC HL
  INC IY
  DJNZ Cracked_Safe_2
  LD A,(Bank_Letters_Pending)
  OR A
  JR Z,Cracked_Safe_7
  LD DE,$0400
  LD HL,Status_Bar_Text_1
  CALL Draw_Graphic
  CALL Wait_For_Keypress  ; Wait for a keypress.
  CALL Clear_Screen       ; Clear the screen.
  LD DE,$0002             ; Set the position to draw the text.
  LD HL,Game_Won_Text     ; Point HL at the completed game text.
                          ; (Game_Won_Text)
  CALL Print_String       ; Print it.
  CALL Wait_For_Keypress  ; Wait for a keypress.
  CALL Print_Earnings     ; Print who earned what.
  JP Main                 ; Restart the game.

; The game has ended. Print the final score.
;
; Used by the routine at Drop_Endurance.
Final_Score:
  CALL Clear_Screen       ; Clear the screen.
  LD HL,Total_Earnings    ; Point HL at the total money earned.
  LD DE,$080A             ; Set the position to draw this.
  LD C,$00
  CALL Print_Money        ; Draw it.
  LD HL,Game_Over_Text    ; Point HL at the game over text. (Game_Over_Text)
  LD DE,$0504             ; Set the position to draw the text.
  CALL Print_String       ; Print it.
  CALL Wait_For_Keypress  ; Wait for a keypress.
  CALL Print_Earnings     ; Print who earned what.
  JP Main                 ; Restart the game.

; Initialize the theme tune data
;
; Used by the routine at Display_Title.
Init_Theme_Tune:
  DI                      ; Disable interrupts
  LD HL,Theme_Tune        ; Point HL at the start of the theme tune.
                          ; (Theme_Tune)
  LD (Theme_Tune_Note_Ptr),HL ; Set this as the next address to look at.
                              ; (Theme_Tune_Note_Ptr)
  LD A,$FF                ; Set to no key pressed.
  LD (Last_Key),A         ;
  INC A                        ; Set tune to index 0 and return.
  LD (Is_Character_Computer),A ;
  RET

; Play the next note of the theme tune and get a keypress
;
; Used by the routine at Display_Title.
Play_Theme_Tune_Note:
  LD HL,(Theme_Tune_Note_Ptr) ; Point HL towards the next note in the tune.
  LD A,(HL)               ; Is the next byte zero?
  OR A                    ;
  JR NZ,Play_Theme_Tune_Note_1 ; Jump forward if it isn't.
  LD A,$01                     ; Set tune back to index 1.
  LD (Is_Character_Computer),A ;
  LD A,$FF                ; Set no keys pressed and return.
  LD (Last_Key),A         ;
  RET                     ;
; There is more of the tune to play, so do it. First, work out if the type of
; sound wave needs changing.
Play_Theme_Tune_Note_1:
  INC HL                  ; Point HL at the next note.
  CP $FE                  ; Is it a control character FE?
  JR NZ,Play_Theme_Tune_Note_3 ; Jump forward if it isn't.
  XOR A                   ; Switch to sawtooth wave.
Play_Theme_Tune_Note_2:
  LD (Next_Note_Type),A   ;
  LD (Theme_Tune_Note_Ptr),HL ; Set the next address of the tune to play.
                              ; (Theme_Tune_Note_Ptr)
  JR Play_Theme_Tune_Note ; Jump forward to play the note.
Play_Theme_Tune_Note_3:
  CP $FF                  ; Is it a control character FF?
  JR NZ,Play_Theme_Tune_Note_4 ; Jump forward if not.
  LD A,$01                  ; Switch to square wave and jump back to set this.
  JR Play_Theme_Tune_Note_2 ;
; Now play the note.
Play_Theme_Tune_Note_4:
  PUSH AF                 ; Store AF.
  LD A,(HL)               ; Get the current note.
  INC HL                      ; Point HL at the next note to play.
  LD (Theme_Tune_Note_Ptr),HL ;
  OR A                    ; Is it zero?
  JR Z,Play_Theme_Tune_Note_7 ; If so, jump forward.
  LD L,A                  ; Put the note in HL.
  LD H,$00                ;
  ADD HL,HL               ; Double it to get a word offset.
  LD DE,Frequency_Table   ; Add the base address for the note frequencies.
  ADD HL,DE               ; (Frequency_Table)
  LD C,(HL)               ; Get the frequency and put it in BC.
  LD B,$00                ;
  INC HL                  ; Get the length and put it in DE.
  LD E,(HL)               ;
  LD D,B                  ;
  POP AF                  ; Restore AF.
  LD HL,$0000                  ; Multiply DE with the note value to get the
Play_Theme_Tune_Note_5:
  ADD HL,DE                    ; length.
  DEC A                        ;
  JR NZ,Play_Theme_Tune_Note_5 ;
  EX DE,HL                ; Swap DE and HL.
  CALL Play_Note          ; Play the note.
  LD A,(Last_Key)         ; Was a key pressed?
  CP $FF                  ;
  RET NZ                  ; Return if it was.
Play_Theme_Tune_Note_6:
  LD BC,$0320             ; Pause and get a keypress.
  CALL Pause_And_Get_Key  ;
  JR Play_Theme_Tune_Note ; Jump back and play more of the tune.
Play_Theme_Tune_Note_7:
  LD BC,$19C8
  POP AF                  ; Restore AF.
Play_Theme_Tune_Note_8:
  CALL Pause_And_Get_Key  ; Pause and get a keypress.
  DEC A                        ; Was a key pressed? Loop while there was.
  JR NZ,Play_Theme_Tune_Note_8 ;
  JR Play_Theme_Tune_Note_6 ; Otherwise jump back to play more of the tune.

; The address of the next note in the theme tune to play
Theme_Tune_Note_Ptr:
  DEFW $0000

; The last key (0 - 4) pressed
;
; If any bits are reset, that key was pressed. If all bits are set (ie: FF), no
; keys were pressed.
Last_Key:
  DEFB $FF

; The wave to play the next note, 0 = sawtooth, 1 = square
Next_Note_Type:
  DEFB $01

; Pause and collect a keypress from 1 - 4
;
; Used by the routines at Play_Theme_Tune_Note and Play_Note.
;
; BC The time to pause
Pause_And_Get_Key:
  PUSH AF                 ; Store the main registers.
  PUSH BC                 ;
  PUSH DE                 ;
Pause_And_Get_Key_1:
  DEC BC                  ; Decrement the tick count used to pause.
  LD A,B                  ; Is it zero?
  OR C                    ;
  JR NZ,Pause_And_Get_Key_1 ; Jump forward if it isn't.
  LD A,$F7                ; Collect a keypress from 0-4.
  IN A,($FE)              ;
  OR $F0                  ; Set the top 4 bits and put the result in E.
  LD E,A                  ;
  LD A,(Last_Key)         ; Get the last keypress.
  AND E                   ; Merge the two bitfields together and store as the
  LD (Last_Key),A         ; new result.
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP AF                  ;
  RET                     ;

; Play a note in the theme tune
;
; Used by the routine at Play_Theme_Tune_Note.
;
; BC The pitch
; DE The length
Play_Note:
  LD A,(Next_Note_Type)   ; Get the sound type.
  OR A                    ; Is it 0 (sawtooth)?
  JR Z,Play_Note_1        ; Jump forward if it is.
; Play a square wave.
  LD H,B                  ; Copy the pitch from BC to HL.
  LD L,C                  ;
  JR Play_Note_2          ; Jump forward to play the note.
; Play a sawtooth wave.
Play_Note_1:
  LD H,B                  ; Copy the pitch from BC to HL.
  LD L,C                  ;
  SRA B                   ; Add three quarters of the pitch (?)
  RR C                    ;
  ADD HL,BC               ;
  SRA B                   ;
  RR C                    ;
  ADD HL,BC               ;
  SRA B                   ;
  RR C                    ;
  ADD HL,BC               ;
; Now play the note.
Play_Note_2:
  LD A,$10                ; Switch the speaker on.
  OUT ($FE),A             ;
  CALL Pause_And_Get_Key  ; Pause and collect a keypress.
  XOR A                   ; Switch the speaker off.
  OUT ($FE),A             ;
  PUSH BC                 ; Store BC.
  LD B,H                  ; Restore the value that was previously copied to HL.
  LD C,L                  ;
  CALL Pause_And_Get_Key  ; Pause and collect a keypress.
  POP BC                  ; Restore BC.
  DEC DE                  ; Decrease the length.
  LD A,D                  ; Loop while there is more to play.
  OR E                    ;
  JR NZ,Play_Note_2       ;
  RET                     ; Otherwise return.

; Theme tune pitch / timing constants
Frequency_Table:
  DEFB $00,$00            ; 00
  DEFB $EC,$1C            ; 01
  DEFB $DF,$1C            ; 02
  DEFB $D3,$1E            ; 03
  DEFB $C7,$20            ; 04
  DEFB $BB,$24            ; 05
  DEFB $B1,$25            ; 06
  DEFB $A7,$27            ; 07
  DEFB $9D,$2A            ; 08
  DEFB $94,$2C            ; 09
  DEFB $8A,$2D            ; 0A
  DEFB $83,$31            ; 0B
  DEFB $7C,$36            ; 0C
  DEFB $73,$3A            ; 0D
  DEFB $6E,$3C            ; 0E
  DEFB $67,$40            ; 0F
  DEFB $62,$42            ; 10
  DEFB $5C,$48            ; 11
  DEFB $56,$4C            ; 12
  DEFB $51,$52            ; 13

; Set to '1' if the current character is computer controlled
;
; During the intro screen, this byte is used as an index to the current theme
; tune note.
Is_Character_Computer:
  DEFB $00

; Theme tune
Theme_Tune:
  DEFB $FF,$03,$07,$03,$07,$02,$07,$01
  DEFB $04,$02,$07,$0D,$0C,$03,$0E,$03
  DEFB $0E,$02,$0E,$01,$0C,$02,$09,$03
  DEFB $06,$03,$0E,$03,$0D,$03,$0C,$02
  DEFB $0B,$03,$13,$01,$09,$03,$11,$02
  DEFB $07,$03,$10,$01,$05,$09,$0E,$03
  DEFB $0C,$03,$0C,$02,$0C,$01,$09,$02
  DEFB $07,$0D,$0C,$FE,$05,$10,$01,$0F
  DEFB $05,$10,$01,$0E,$01,$10,$07,$0C
  DEFB $01,$0C,$01,$0B,$01,$0A,$02,$10
  DEFB $01,$0F,$02,$10,$01,$0E,$02,$10
  DEFB $01,$0E,$02,$10,$01,$0E,$0C,$0E
  DEFB $05,$0E,$01,$0D,$05,$0E,$01,$10
  DEFB $01,$11,$0A,$0E,$03,$0C,$01,$0C
  DEFB $02,$09,$01,$07,$02,$0C,$01,$0C
  DEFB $02,$09,$01,$07,$0C,$0C,$05,$10
  DEFB $01,$0F,$05,$10,$01,$0E,$01,$10
  DEFB $07,$0C,$01,$0C,$01,$0B,$01,$0A
  DEFB $02,$10,$01,$0F,$02,$10,$01,$0E
  DEFB $02,$10,$01,$0E,$02,$10,$01,$0E
  DEFB $0C,$0E,$05,$0E,$01,$0D,$05,$0E
  DEFB $01,$10,$01,$11,$0A,$0E,$03,$0C
  DEFB $01,$0C,$02,$09,$01,$07,$02,$0C
  DEFB $01,$0C,$02,$09,$01,$07,$0C,$0C
  DEFB $FF,$03,$07,$03,$07,$02,$07,$01
  DEFB $04,$02,$07,$0D,$0C,$03,$0E,$03
  DEFB $0E,$02,$0E,$01,$0C,$02,$09,$04
  DEFB $06,$03,$0E,$03,$0D,$03,$0C,$02
  DEFB $0B,$03,$13,$01,$09,$03,$11,$02
  DEFB $07,$03,$10,$01,$05,$09,$0E,$03
  DEFB $0C,$03,$0C,$02,$0C,$01,$09,$02
  DEFB $07,$0D,$0C,$03,$0B,$03,$0B,$02
  DEFB $0B,$01,$06,$02,$03,$0D,$0B,$03
  DEFB $07,$03,$07,$02,$07,$01,$06,$02
  DEFB $07,$0D,$04,$03,$09,$03,$09,$02
  DEFB $09,$01,$04,$02,$01,$0D,$09,$03
  DEFB $0E,$03,$0E,$02,$0E,$01,$09,$03
  DEFB $06,$06,$0B,$06,$0A,$FE,$05,$10
  DEFB $01,$0F,$05,$10,$01,$0E,$01,$10
  DEFB $07,$0C,$01,$0C,$01,$0B,$01,$0A
  DEFB $02,$10,$01,$0F,$02,$10,$01,$0E
  DEFB $02,$10,$01,$0E,$02,$10,$01,$0E
  DEFB $0C,$0E,$05,$0E,$01,$0D,$05,$0E
  DEFB $01,$10,$01,$11,$0A,$0E,$02,$0C
  DEFB $01,$0C,$02,$09,$01,$07,$02,$0C
  DEFB $01,$0C,$02,$09,$01,$07,$0C,$0C
  DEFB $FF,$05,$10,$01,$0F,$05,$10,$01
  DEFB $0E,$01,$10,$07,$0C,$01,$0C,$01
  DEFB $0B,$02,$0A,$02,$10,$01,$0F,$02
  DEFB $10,$01,$0E,$02,$10,$01,$0E,$02
  DEFB $10,$01,$0E,$0C,$0E,$05,$0E,$01
  DEFB $0D,$05,$0E,$01,$10,$01,$11,$0A
  DEFB $0E,$02,$0C,$01,$0C,$02,$09,$01
  DEFB $07,$02,$0C,$01,$0C,$02,$09,$01
  DEFB $07,$0C,$0C,$00,$00

; Put a character on screen
;
; Used by the routines at Print_Money and Print_String.
;
; A The ID of the object
; C The attribute to display
; D The y co-ordinate
; E The x co-ordinate
Print_Char:
  PUSH AF                 ; Store main registers.
  PUSH IX                 ;
  PUSH HL                 ;
  PUSH BC                 ;
  PUSH DE                 ;
  EX DE,HL                ; Swap DE and HL.
; First, set the attribute.
  PUSH HL                 ; Store the co-ordinates in HL.
  LD D,$58                ; Point the high byte of DE to the attribute buffer.
  LD E,L                  ; Point the low byte to the x co-ordinate.
  LD L,H                  ; Put the y co-ordinate in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 16 to get the right offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,DE               ; Add the earlier address in the attribute buffer.
  LD (HL),C               ; Set the attribute to the colour specified.
  PUSH DE                 ; Remember the current address in DE.
  LD DE,$0020             ; Move forward a row.
  ADD HL,DE               ;
  POP DE                  ; Restore DE.
  LD (HL),C               ; Set the attribute.
  POP HL                  ; Restore the co-ordinates.
; Now, set the graphic data.
  LD L,H                  ; Put the y co-ordinate in HL and set D to 0.
  LD D,$00                ;
  LD H,D                  ;
  LD C,E                  ; Put the current column. in C.
  LD B,D                  ; Set B to the current row.
  ADD HL,HL               ; Multiply HL by 8 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD DE,Screen_Offsets    ; Add the base address for the screen offsets table.
  ADD HL,DE               ; (Screen_Offsets)
  PUSH HL                 ; Put this in IX.
  POP IX                  ;
  LD L,A                  ; Put the object ID in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply it by 8 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD DE,Charset           ; Add the base address for the character set.
  ADD HL,DE               ; (Charset)
  EX DE,HL                ; Swap DE and HL.
  LD A,$08                ; 8 rows to update.
Print_Char_0:
  LD L,(IX+$00)           ; Get the screen offset for the start of the row in
  LD H,(IX+$01)           ; HL.
  ADD HL,BC               ; Add the offset for the current column and row.
  INC IX                  ; Point to the next entry in the screen offsets
  INC IX                  ; table.
  EX DE,HL                ; Swap HL and DE, as the copying is done that way
                          ; round.
  LDI                     ; Copy from HL (buffer) to DE (screen).
  EX DE,HL                ; Swap HL and DE back again.
  INC BC                  ; Move forward a column .
  LD L,(IX+$00)           ; Get the screen offset for the start of the row in
  LD H,(IX+$01)           ; HL.
  ADD HL,BC               ; Add the offset for the current column and row.
  INC IX                  ; Point to the next entry in the screen offsets
  INC IX                  ; table.
  DEC DE                  ; Move back a column.
  EX DE,HL                ; Swap HL and DE, as the copying is done that way
                          ; round.
  LDI                     ; Copy from HL (buffer) to DE (screen).
  EX DE,HL                ; Swap HL and DE back again.
  INC BC                  ; Move forward a column .
  DEC A                   ; Loop while there are more rows to draw.
  JR NZ,Print_Char_0      ;
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP HL                  ;
  POP IX                  ;
  POP AF                  ;
  RET                     ;

; Print an inventory graphic
;
; Used by the routine at Print_Inventory.
;
; A The item number to display
; D The y co-ordinate
; E The x co-ordinate
Print_Inventory_Item:
  PUSH AF                 ; Store the main registers.
  PUSH HL                 ;
  PUSH BC                 ;
  PUSH DE                 ;
  LD C,E                  ; Put the X co-ordinate in C.
  LD L,D                  ; Put the Y co-ordinate in L.
  LD D,$00                ; Start at row 0.
  LD H,D                  ; Get the current row.
  LD B,D                  ; Store this in B.
  ADD HL,HL               ; Multiply by 16 to get a suitable screen offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD DE,Screen_Offsets    ; Add the base address of the screen offsets table.
  ADD HL,DE               ; (Screen_Offsets)
  PUSH HL                 ; Put this screen address in IX.
  POP IX                  ;
  LD L,A                  ; Put the item in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multply by 32 to get a suitable graphic offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD DE,Object_00         ; Add the base address of the graphic table.
  ADD HL,DE               ; (Object_00)
  EX DE,HL                ; Swap DE and HL.
  LD A,$10                ; Number of entries to display.
Print_Inventory_Item_0:
  LD L,(IX+$00)           ; Get the screen address to copy to.
  LD H,(IX+$01)           ;
  ADD HL,BC               ; Add the relevant row.
  INC IX                  ; Move down a row.
  INC IX                  ;
  EX DE,HL                ; Swap HL and DE to do a copy.
  LDI                     ; Copy the two columns.
  LDI                     ;
  EX DE,HL                ; Swap HL and DE.
  INC BC                  ; Move forward to the next UDG position.
  INC BC                  ;
  DEC A                        ; Loop while there is more to display.
  JR NZ,Print_Inventory_Item_0 ;
  POP DE                  ; Restore the main registers and return.
  POP BC                  ;
  POP HL                  ;
  POP AF                  ;
  RET                     ;

; Print a graphic on screen
;
; Used by the routines at Draw_Graphic and Update_Endurance.
;
; HL The address of the graphic
; A The frame number
; D The y co-ordinate
; E The x co-ordinate
; C The attribute to use
Print_Graphic:
  PUSH AF                 ; Push the main registers.
  PUSH HL                 ;
  PUSH BC                 ;
  PUSH DE                 ;
  EX DE,HL                ; Swap DE and HL.
  PUSH HL                 ; Remember HL.
  LD D,$58                ; Point D at the attributes buffer.
  LD E,L                  ; Point E to the low byte of the graphics address.
  LD L,H                  ; Put the high byte in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 16.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,DE               ; Add the remaining portion to get an attribute
                          ; address.
  LD (HL),C               ; Set the attribute.
  POP HL                  ; Restore HL.
  LD L,H                  ; Start at row 0.
  LD D,$00                ;
  LD H,D                  ; Put the current row in H.
  PUSH DE                 ; Remember DE.
  ADD HL,HL               ; Multiply HL by 16 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD DE,Screen_Offsets    ; Add the base address of the screen offsets table.
  ADD HL,DE               ; (Screen_Offsets)
  LD E,(HL)               ; Put the actual address in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL.
  POP DE                  ; Restore DE.
  ADD HL,DE               ; Add the row and column offset.
  EX DE,HL                ; Swap DE and HL.
  LD L,A                  ; Put the frame ID in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply it by 8 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD BC,Charset           ; Add a specific offset. This offset is modified by
  ADD HL,BC               ; code elsewhere.
; Draw an 8x8 UDG block.
  LD B,$08                ; 8 rows to draw.
Print_Graphic_0:
  LD A,(HL)               ; Get the graphic data.
  LD (DE),A               ; Put it on screen.
  INC HL                  ; Move to the next graphic data.
  INC D                   ; Move to the next row.
  DJNZ Print_Graphic_0    ; Loop while there are more rows to draw.
; All drawing done.
  POP DE                  ; Restore the main registers and return.
  POP BC                  ;
  POP HL                  ;
  POP AF                  ;
  RET                     ;

; Put a room graphic in screen overlaying existing ones
;
; Used by the routine at OutOfTown_Print_Digit and indrectly by the routine at
; Overwrite_Screen.
;
; HL The address of the graphic
; D The y co-ordinate
; E The x co-ordinate
; C The attribute to use
;
; This routine is done when only part of the screen needs updating eg: wall
; built, safe cracked.
Overlay_Screen:
  PUSH AF                 ; Remember main registers.
  PUSH HL                 ;
  PUSH BC                 ;
  PUSH DE                 ;
  EX DE,HL                ; Swap DE and HL.
  PUSH HL                 ; Remember the co-ordinates.
  LD D,$FD                ; Point D to the attribute buffer.
  LD E,L                  ; Put the X co-ordinate minus 3 in E.
  LD L,H                  ; Put the Y co-ordinate in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiple by 16 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,HL               ;
  ADD HL,DE               ; Add the X co-ordinate.
  LD (HL),C               ; Set the attribute here.
  POP HL                  ; Restore HL with the graphic.
  LD DE,$5300             ; Add on the correct offset for the sprite buffer.
  ADD HL,DE               ;
  EX DE,HL                ; Swap DE and HL.
  LD L,A                  ; Put the Y co-ordinate in HL.
  LD H,$00                ;
  ADD HL,HL               ; Multiply by 8 to get a suitable offset.
  ADD HL,HL               ;
  ADD HL,HL               ;
  LD BC,($B7E9)           ; Put the offset to shift by in BC.
  ADD HL,BC               ; Adjust this.
Overlay_Screen_0:
  LDI                     ; Copy from HL to DE
  DEC E                   ; Move forward a column.
  LD A,E                  ; Move down a row.
  ADD A,$20               ;
  LD E,A                  ;
  JR NC,Overlay_Screen_0  ; Loop until the whole screen is done.
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP HL                  ;
  POP AF                  ;
  RET                     ;

; Overwrite part of the screen buffer with a graphic
;
; Used by the routines at Cracked_Safe, Logic_Action_Wall and Chase.
;
; HL The address of the graphic to draw
; D The y co-ordinate
; E The x co-ordinate
Overwrite_Screen:
  PUSH HL                 ; Remember HL.
  LD HL,Overlay_Screen    ; Replace the "CALL B7BA" instructions in the routine
  LD ($B8BE),HL           ; at Draw_Graphic to call Overlay_Screen instead.
  LD ($B8B5),HL           ;
  LD ($B895),HL           ;
  POP HL                  ; Restore HL.
  CALL Draw_Graphic       ; Draw the graphic with the new routine.
  PUSH HL                 ; Remember HL.
  LD HL,Print_Graphic     ; Set it back to the original routine at
  LD ($B895),HL           ; Print_Graphic.
  LD ($B8BE),HL           ;
  LD ($B8B5),HL           ;
  POP HL                  ; Restore HL and return.
  RET                     ;

; Draw a room graphic
;
; Used by the routines at Cracked_Safe, Overwrite_Screen, Draw_Background,
; Print_Character_Room, Update_Character_In_Room_T, Update_Status,
; Print_Object_Text and Space_Game.
;
; HL The address of the graphic to draw
; D The y co-ordinate
; E The x co-ordinate
Draw_Graphic:
  LD A,(HL)               ; Get the next byte.
  INC HL                  ; Move to the next position in the buffer.
  CP $80                  ; Is the byte less than 80?
  JR C,Draw_Graphic_10    ; Jump forward if so.
  CP $FF                  ; Is the byte the end marker FF?
  RET Z                   ; Return if so.
  CP $FE                  ; Is this a change attribute marker FE?
  JR NZ,Draw_Graphic_1    ; Jump forward if not.
  LD C,(HL)               ; Put the next byte in C.
  INC HL                  ; Move to the next position in the buffer.
  JR Draw_Graphic         ; Jump back to look at the rest of the data.
Draw_Graphic_1:
  CP $A8                  ; Is the byte less than A8?
  JR C,Draw_Graphic_10    ; Jump forward if so.
  CP $E8                  ; Is the byte greater than E8?
  JR NC,Draw_Graphic_2    ; Jump forward if so.
; Move to a new position.
  SUB $C8                 ; Subtract C8 to get the actual x co-ordinate.
  ADD A,E                 ;
  LD E,A                  ;
  LD A,D                  ; Add the next byte to the current y co-ordinate.
  ADD A,(HL)              ;
  LD D,A                  ;
  INC HL                  ; Move to the next position in the buffer.
  JR Draw_Graphic         ; Jump back to draw some more.
; Check to see if this is an address marker.
Draw_Graphic_2:
  CP $FB                  ; Is the byte an address marker? (FB)
  JR NZ,Draw_Graphic_3    ; Jump forward if not.
; Change the base address.
  LD A,(HL)               ; Get the low byte.
  LD ($B7E9),A            ; Set this in the printing routine.
  INC HL                  ; Move to the next position in the buffer.
  LD A,(HL)               ; Get the high byte.
  LD ($B7EA),A            ; Set this in the printing routine.
  INC HL                  ; Move to the next position in the buffer.
  JR Draw_Graphic         ; Jump back to draw some more.
; Check some more control bytes.
Draw_Graphic_3:
  CP $F1                  ; Is the a "move a column" marker? (F1)
  JR Z,Draw_Graphic_11    ; Jump if so.
  CP $F3                  ; Is this a "sub block" marker? (F3)
  JR NZ,Draw_Graphic_4    ; Jump if not.
; Chain to block data at another address.
  LD A,(HL)               ; Put the new block marker in HL.
  INC HL                  ;
  LD H,(HL)               ;
  LD L,A                  ;
  JR Draw_Graphic         ; Jump back to draw some more.
; Check some more control bytes.
Draw_Graphic_4:
  LD B,(HL)               ; Get the number of rows or columns in B.
  INC HL                  ; Move to the next position in the buffer.
  CP $F0                  ; Is this a "row repeat" instruction? (F0)
  JR NZ,Draw_Graphic_6    ; Move forward if not.
; Repeat this graphic for a number of rows.
  LD A,(HL)               ; Get the next byte.
  INC HL                  ; Move to the next position in the buffer.
Draw_Graphic_5:
  CALL Print_Graphic      ; Put the graphic on screen.
  INC D                   ; Move to the next row.
  DJNZ Draw_Graphic_5     ; Repeat while there are more rows.
  JR Draw_Graphic         ; Jump back to draw some more.
; Check some more control bytes.
Draw_Graphic_6:
  CP $F2                  ; Is this a "block column repeat" instruction? (F2)
  JR NZ,Draw_Graphic_8    ; Jump foward if not.
; Repeat this graphic for a number of pairs of columns.
Draw_Graphic_7:
  LD A,(HL)               ; Get the next byte.
  INC HL                  ; Move to the next position in the buffer.
  CALL Print_Graphic      ; Put the graphic on screen.
  LD A,(HL)               ; Get the next byte.
  INC E                   ; Move to the next column.
  CALL Print_Graphic      ; Put the graphic on screen.
  INC E                   ; Move to the next column.
  DEC HL                  ; Move back in the buffer.
  DJNZ Draw_Graphic_7     ; Repeat until all columns are drawn.
  INC HL                  ; Move forward to the correct position in the buffer.
  INC HL                  ;
  JR Draw_Graphic         ; Jump back to draw some more.
; Otherwise, the instruction must be "column repeat" (FD), so repeat this
; graphic for a number of columns.
Draw_Graphic_8:
  LD A,(HL)               ; Get the next byte.
  INC HL                  ; Move to the next position in the buffer.
Draw_Graphic_9:
  CALL Print_Graphic      ; Put the graphic on screen.
  INC E                   ; Move forward a column.
  DJNZ Draw_Graphic_9     ; Loop while there is more to draw.
  JP Draw_Graphic         ; Otherwise jump back to draw some more.
; Simple instruction - display a graphic
Draw_Graphic_10:
  CALL Print_Graphic      ; Put the graphic on screen.
Draw_Graphic_11:
  INC E                   ; Move forward a column.
  JP Draw_Graphic         ; Jump back to draw some more.

; Print an FF terminated string, processing control characters
;
; Used by the routines at Display_Title, Print_Earnings, Cracked_Safe,
; Final_Score and Show_Reward.
;
; C The attribute to display
; HL The address of the start of the string
; D The y co-ordinate of the first character
; E The x co-ordinate of the first character
Print_String:
  LD A,(HL)               ; Get the current byte.
  INC HL                  ; Point HL to the next one.
  CP $80                  ; Is the current byte less than 80?
  JR C,Print_String_2     ; Jump forward if so.
  CP $FF                  ; Is the current byte an end marker? (FF)
  RET Z                   ; Return if it is, it's the end of the string.
; Process a special character.
  CP $FE                  ; Is the current byte an attribute marker? (FE)
  JR NZ,Print_String_1    ; Jump forward if it isn't.
  LD C,(HL)               ; Otherwise put the next byte as an attribute in C.
; Process an attribute character.
  INC HL                  ; Point HL to the next place in the buffer.
  JR Print_String         ; Jump back to draw some more.
; Process more special characters.
Print_String_1:
  CP $A8                  ; If the current byte isn't between A8 and E8 then
  JR C,Print_String_2     ; it's an unrecognised character, so ignore it.
  CP $E8                  ;
  JR NC,Print_String_2    ;
; Process position / movement characters.
  SUB $C8                 ; Subtract C8 to get the actual offset (which may be
                          ; negative).
  ADD A,E                 ; Add this to the x co-ordinate.
  LD E,A                  ;
  LD A,D                  ; Use the next byte as an offset for the y
  ADD A,(HL)              ; co-ordinate.
  LD D,A                  ;
  INC HL                  ; Point HL to the next place in the buffer.
  JR Print_String         ; Jump back to draw some more.
; This is a simple ASCII character.
Print_String_2:
  CALL Print_Char         ; Print the graphic.
  INC E                   ; Move forward one column.
  JR Print_String         ; Jump back to draw some more.

; Blank the screen
;
; Used by the routines at Display_Title, Run_Demo, Print_Earnings, Cracked_Safe
; and Final_Score.
Clear_Screen:
  LD HL,$4000             ; Clear the display file.
  LD (HL),$00             ;
  LD DE,$4001             ;
  LD BC,$1800             ;
  LDIR                    ;
  LD (HL),$46             ; Fill the attribute buffer with bright yellow on
  LD BC,$02FF             ; black.
  LDIR                    ;
  RET                     ; Return.

; Clear the room's graphics
;
; Used by the routines at Draw_Background, Show_Reward, Space_Game, Chase and
; OutOfTown.
Clear_Graphics:
  PUSH HL                 ; Preserve main registers.
  PUSH BC                 ;
  PUSH DE                 ;
  LD IX,Screen_Offsets_1  ; Point IX at the table between the status bar and
                          ; main screen.
  LD C,$98                ; 98 rows to process.
Clear_Graphics_0:
  LD L,(IX+$00)           ; Put the address in HL.
  LD H,(IX+$01)           ;
  LD B,$20                ; Clear the next row.
Clear_Graphics_1:
  LD (HL),$00             ;
  INC HL                  ;
  DJNZ Clear_Graphics_1   ;
  INC IX                  ; Move to the next place in the table.
  INC IX                  ;
  DEC C                   ; Loop while there are more rows to handle.
  JR NZ,Clear_Graphics_0  ;
  LD HL,$58A0             ; Fill the relevant part of the attribute buffer with
  LD BC,$0260             ; bright yellow on black.
Clear_Graphics_2:
  LD (HL),$46             ;
  INC HL                  ;
  DEC BC                  ;
  LD A,B                  ;
  OR C                    ;
  JR NZ,Clear_Graphics_2  ;
; This entry point is used by the routine at Clear_Status.
Clear_Graphics_End:
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP HL                  ;
  RET                     ;

; Clear the top status bar
;
; Used by the routine at Update_Status.
Clear_Status:
  PUSH HL                 ; Preserve main registers.
  PUSH BC                 ;
  PUSH DE                 ;
  LD IX,Screen_Offsets    ; Point IX at the table for status bar screen
                          ; offsets.
  LD C,$20                ; 20 rows to clear.
Clear_Status_0:
  LD L,(IX+$00)           ; Put the address in HL.
  LD H,(IX+$01)           ;
  LD B,$20                ; Clear the next row.
Clear_Status_1:
  LD (HL),$00             ;
  INC HL                  ;
  DJNZ Clear_Status_1     ;
  INC IX                  ; Move to the next place in the table.
  INC IX                  ;
  DEC C                   ; Loop while there are more rows to handle.
  JR NZ,Clear_Status_0    ;
  JP Clear_Graphics_End   ; Jump back to restore main registers and return.

; The current room number
Current_Room:
  DEFB $00

; Draw a room's background graphics
;
; Used by the routines at Init_Game, Run_Demo, Check_New_Room, Show_Reward and
; Space_Game.
Draw_Background:
  LD A,$B8                ; Set the fork lift's position on the ground.
  LD (Platforms_9),A      ;
  CALL Clear_Graphics     ; Clear the playing area.
  LD A,(IY+$0F)           ; Get the current room in A.
  ADD A,A                 ; Double it to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  LD HL,Room_Data_Table   ; Add the base address of the room data.
  ADD HL,DE               ; (Room_Data_Table)
  LD E,(HL)               ; Put the actual address in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL.
; This entry point is used by the routines at Chase and OutOfTown. At this
; point, HL points to the room graphics data.
Draw_Background_1:
  LD D,(HL)               ; Put the first two bytes in DE.
  INC HL                  ;
  LD E,(HL)               ;
  INC HL                  ;
  LD A,D                  ; Get the first byte and reset bit 7.
  AND $7F                 ;
  CP $7F                  ; Should the screen be refreshed now?
  JR Z,Draw_Background_3  ; Jump forward if so.
  CP $7E                  ; Is this data flag dependent?
  JR NZ,Draw_Background_2 ; Jump forward if not.
; These graphics are flag dependent.
  LD A,E                  ; Put the second byte in A.
  CALL Get_Flag           ; Is the flag set?
  JR NZ,Draw_Background_1 ; Jump forward if so.
  INC HL                  ; Otherwise skip over this entry as it shouldn't be
  INC HL                  ; drawn.
  JR Draw_Background_1    ;
; The graphics can be drawn.
Draw_Background_2:
  PUSH HL                 ; Store HL.
  LD B,A                  ; Put the first byte as the block ID in B.
  LD A,E                  ; Get the second value.
  AND $F8                 ; Put only the top 5 bits as a value in C.
  RRA                     ;
  RRA                     ;
  RRA                     ;
  LD C,A                  ;
  RL D                    ; Double D.
  RL E                    ; Double E and add the top bit of the previous value
                          ; of D.
  LD A,E                  ; Get the top four bits of the second value.
  AND $0F                 ;
  ADD A,$05               ; Start drawing from row 5.
  LD D,A                  ; Put the row in D.
  LD E,C                  ; Put the column in E.
  LD L,B                  ; Put the block ID in HL.
  LD H,$00                ;
  ADD HL,HL               ; Double it to get a word offset.
  LD BC,Room_Block_Table  ; Add the basic offset of the room block components
  ADD HL,BC               ; (Room_Block_Table)
  LD A,(HL)               ; Put the address found in HL.
  INC HL                  ;
  LD H,(HL)               ;
  LD L,A                  ;
  CALL Draw_Graphic       ; Draw the graphic string.
  POP HL                  ; Restore HL.
  JR Draw_Background_1    ; Jump back to draw some more.
Draw_Background_3:
  CALL Update_Screen      ; Copy the data to the working buffer.
  RET

; Copy the screen to the working buffer
;
; Used by the routines at Draw_Background, Show_Reward and Space_Game.
Update_Screen:
  LD DE,$5B00             ; Point DE into the screen buffer.
  LD IX,Screen_Offsets_2  ; Point IX at the offset table for the main screen.
  LD BC,$1000             ; Number of bytes to draw.
Update_Screen_1:
  LD L,(IX+$00)           ; Put the next address in HL.
  LD H,(IX+$01)           ;
  INC IX                  ; Move to the next entry in the table.
  INC IX                  ;
  CALL Copy_Row           ; Copy the data.
  JP PE,Update_Screen_1   ; Jump back if there is more to copy.
  LD BC,$0200             ; Number of bytes to draw.
  LD DE,$FE00             ; Point DE at the attribute buffer.
  LD HL,$5900             ; Point HL at the attributes for the main play area.
Update_Screen_2:
  CALL Copy_Row           ; Copy the data.
  JP PE,Update_Screen_2   ; Jump back if there is more to copy.
  RET                     ; Otherwise return.

; Draw any characters that are in this room
;
; Used by the routines at Init_Game, Main_update and Cracked_Safe.
;
; IY The buffer containing the current character's data (#$RBC67 - BC6B)
Draw_Characters:
  LD A,(IY+$0F)           ; Get the current room in A.
  LD (Current_Room),A     ; Store this temporarily so all characters can use
                          ; it. (Current_Room)
  LD B,$05                ; Update 5 character.
  PUSH IY                 ; Store the pointer to the current character.
  LD IY,$BC6B             ; Point IY at the last character. (Harry)
Draw_Characters_1:
  PUSH BC                 ; Store the character count in BC.
  LD A,(Current_Room)     ; Put the current room in A.
  CP (IY+$0F)             ; Is the character in this room?
  JR NZ,Draw_Characters_2 ; If they are, copy their data to the sprite buffer.
  CALL Update_Sprite      ;
Draw_Characters_2:
  DEC IY                  ; Point IY to the next character.
  POP BC                  ; Restore the character count in BC.
  DJNZ Draw_Characters_1  ; Loop while there are more characters to draw.
  POP IY                  ; Restore the pointer to the current character.
  CALL Update_Sprites     ; Put the sprite buffer on screen and return.
  RET                     ;

; Put the sprites on screen
;
; Used by the routines at Init_Game, Draw_Characters, Show_Reward, Space_Game,
; Chase and OutOfTown.
Update_Sprites:
  LD HL,$6B00             ; Point HL at the sprite buffer. (6B00)
  LD IX,Screen_Offsets_2  ; Point IX at the screen offset table.
                          ; (Screen_Offsets_2)
  LD BC,$1000             ; Length is 1000.
Update_Sprites_0:
  LD E,(IX+$00)           ; Put the next screen offset in DE.
  LD D,(IX+$01)           ;
  INC IX                  ; Move to the next offset in the table.
  INC IX                  ;
  CALL Copy_Row           ; Copy the next row of the sprite buffer to screen.
  JP PE,Update_Sprites_0  ; Loop while there is more to draw.
; Now put the attributes on screen.
  LD BC,$0200             ; Length is 0200.
  LD HL,$FC00             ; Point HL at the attribute buffer. (FC00)
  LD DE,$5900             ; Point DE to the middle third of the screen.
Update_Sprites_1:
  CALL Copy_Row           ; Copy the next row of the attribute buffer to
                          ; screen.
  JP PE,Update_Sprites_1  ; Loop back while there is more to draw.
  RET                     ; Otherwise return.

; Copy a row of screen or attribute data
;
; Used by the routines at Update_Screen, Update_Sprites and Init_Sprites.
;
; HL Source
; DE Destination
; BC On entry, holds the current count. On exit, holds the count decremented by
;    20.
Copy_Row:
  LDI                     ; Copy HL to DE, decrement BC, increment and repeat
  LDI                     ; 20 times.
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  LDI                     ;
  RET                     ;

; '{character} is in {location}'
Character_In_Room_Text:
  DEFM " IS IN "
  DEFB $FF

; Print a "{character} is in {room}" message
;
; Used by the routine at Change_Character.
Print_Character_Room:
  LD A,(Character_In_Room_T) ; Are we in the middle of printing a message?
  OR A                       ;
  RET NZ                  ; Return if so, busy at the moment.
; Not redrawing the room, so the message can be printed.
  LD HL,Charset           ; Point HL at the character set. (Charset)
  LD ($B7E9),HL           ; Set the printing routine in Print_Graphic to use
                          ; this.
  LD A,(IY+$0F)           ; Get the current room in A.
  LD HL,Location_Text     ; Point HL at the start of the room text entries.
  CALL Get_Next_Room_Ptr_Direct ; Search for the right entry, returns with HL
                                ; pointing to the correct address for the
                                ; room's text.
  PUSH HL                 ; Store HL.
  CALL Len                ; Put the string's length in C.
  LD C,B                  ;
  LD H,$7C                ; Point H at the high byte for the character names.
                          ; (Character_Text)
  LD L,(IY-$23)           ; Get the low byte from the character.
                          ; (Character_Text_Ptr)
  PUSH HL                 ; Remember the address for the character in HL.
  CALL Len                ; Put the string's length in B.
  LD A,$07                ; Given the total string length (character + room +
  ADD A,B                 ; extra), work out the position on screen that will
  ADD A,C                 ; put the display justified in the centre.
  LD C,A                  ;
  LD A,$20                ;
  SUB C                   ;
  SRL A                   ;
  LD E,A                  ;
  LD D,$04                ; Start drawing at row 4.
  POP HL                  ; Restore the character name in HL.
  LD C,$4E                ; Set bright yellow on blue attribute.
  CALL Draw_Graphic       ; Draw the graphic.
  LD HL,Character_In_Room_Text ; Point HL at "{character} is in {room}" text.
                               ; (Character_In_Room_Text)
  CALL Draw_Graphic       ; Draw it.
  POP HL                  ; Restore the room text in HL.
  CALL Draw_Graphic       ; Draw it.
  LD A,$1E                   ; Set the tick count to 1E and return.
  LD (Character_In_Room_T),A ;
  RET                        ;

; Tick count for displaying "{character} is in {room}" message
;
; Used by the routines in Print_Character_Room and Update_Character_In_Room_T.
Character_In_Room_T:
  DEFB $00

; Update the tick counter for the "{character} is in {room}" display
;
; Used by the routines at Main_update and Space_Game.
Update_Character_In_Room_T:
  LD HL,Character_In_Room_T ; Are we in the middle of printing a message?
  LD A,(HL)                 ;
  OR A                      ;
  RET Z                   ; Return if not.
  DEC (HL)                ; Otherwise decrement the tick count.
  RET NZ                  ; Return if it is not zero.
; The tick count has reached 0, so get rid of the message.
  LD C,$42
  LD HL,Charset           ; Set the drawing routine at Print_Graphic to use the
  LD ($B7E9),HL           ; character set (Charset) as a base address.
  LD DE,$0400             ; Set the position.
  LD HL,Status_Bar_Text_1 ; Point HL at the status bar text (Status_Bar_Text)
                          ; that was overwritten by the message.
  CALL Draw_Graphic       ; Draw the graphic and return.
  RET                     ;

; Get the length of a string
;
; Used by the routine at Print_Character_Room.
;
; HL The address of the current string
; B On exit, returns the length
Len:
  LD B,$00                ; Set B to 0.
Len_0:
  LD A,(HL)               ; Get the byte pointed to by HL.
  CP $FF                  ; Is it FF?
  RET Z                   ; Return if it is.
  INC B                   ; Otherwise increase the count.
  INC HL                  ; Move forward to the next part of the string and
  JR Len_0                ; repeat.

; Initialize character data
;
; Used by the routines at Run_Demo and Main.
Init_Character:
  LD IY,Character_Base    ; Set the current player buffer (Current_Player) to
                          ; Wally. (Character_Base)
  LD (Current_Player),IY
; Copy the initial object states. Objects 00 - 1E are held in rooms, the
; remainder are held by the characters.
  LD HL,Init_Object_Table ; Point HL at the initial collectable object states.
                          ; (Init_Object_Table)
  LD DE,Room_Objects_00   ; Point DE at the start of the room object data.
                          ; (Room_Objects_00)
  LD B,$1F                ; 1F items to initialise
Init_Character_1:
  PUSH BC                 ; Remember this value.
Init_Character_0:
  LD A,(DE)               ; Get the next byte.
  CP $FF                  ; Is it an end marker?
  JR NZ,Init_Character_2  ; Move forward if it isn't ie: there are objects
                          ; here.
  INC DE                  ; Otherwise move to the next byte and check the next
  JR Init_Character_0     ; room.
; An object was found. Copy the template data.
Init_Character_2:
  LDI                     ; Copy the object ID.
  INC DE                  ; Skip over the co-ordinates which are fixed.
  INC DE                  ;
  LDI                     ; Copy the flags.
  POP BC                  ; Restore the flags.
  DJNZ Init_Character_1   ; Loop while there are more objects to initialise.
; Copy the initial data for the characters.
  LD BC,$00AF             ; Number of bytes to copy.
  LD HL,Object_Flags_Template ; Copy from the initial template.
                              ; (Object_Flags_Template)
  LD DE,Object_Flags      ; Copy to start of main buffer. (Object_Flags)
  LDIR                    ; Do the copy.
; Set initial flags;
  XOR A                   ; Set A to zero, which will be set for some flags.
  LD (Next_Reward),A      ; Set the next reward screen (Next_Reward) to 0
                          ; (morning).
  LD (Total_Earnings),A   ; Set the money earned (Total_Earnings) to £0.
  LD ($ECFF),A            ;
  INC A                   ; Set 0 letters brought to the safe. (Safe_nLetters)
  LD (Safe_nLetters),A    ;
; Set up initial data on School Lane.
  LD A,$14                ; Set 14 asteroids left to hit. (Asteroids_Hit)
  LD (Asteroids_Hit),A    ;
  LD A,$28                     ; Set the lightning bolts in School Lane to
  LD (SchoolLane_Movement),A   ; cover just the pylon area, making it
  LD A,$3C                     ; inaccessible.
  LD (SchoolLane_Movement_2),A ;
  LD A,$20                     ;
  LD (SchoolLane_Movement_3),A ;
; Reset the money table.
  LD HL,Task_01           ; Point HL at the earnings buffer.
  LD B,$20                ; 20 entries to look at.
Init_Character_3:
  LD (HL),$00             ; Set the ID to 0.
  INC HL                  ; Point HL at the next entry.
  INC HL                  ;
  INC HL                  ;
  DJNZ Init_Character_3   ; Loop while there are more entries to update.
  LD HL,Flag_0            ; Point HL at the game flags. (Flag_0)
  LD B,$0E                ; 0E entries to update.
Init_Character_4:
  LD (HL),$00             ; Reset the flag.
  INC HL                  ; Point HL at the next one.
  DJNZ Init_Character_4   ; Loop while there are more flags to reset.
  RET                     ; Return.

; Initial states for collectable objects
;
; Used by the routine at Init_Character.
;
; Objects 00 to 1E are put sequentially into rooms. The remainder of the
; objects are initially held by the characters. Each table contains the object
; ID, plus the flags. Bits 0 - 5 show which player can pick the object up, if
; bit 7 if reset then a computer controlled player can also pick it up.
Init_Object_Table:
  DEFB $00,$1F            ; Object 00 - The plunger
  DEFB $01,$9F            ; Object 01 - The letter A
  DEFB $02,$1F            ; Object 02 - Book 2
  DEFB $03,$9F            ; Object 03 - The sand
  DEFB $04,$9F            ; Object 04 - The battery
  DEFB $05,$9F            ; Object 05 - The letter K
  DEFB $06,$9F            ; Object 06 - The cement
  DEFB $07,$1F            ; Object 07 - Book 3
  DEFB $08,$1F            ; Object 08 - The trowel
  DEFB $09,$1F            ; Object 09 - The matches
  DEFB $0A,$9F            ; Object 0A - The cracked insulator
  DEFB $0B,$9F            ; Object 0B - Book 1
  DEFB $0C,$1F            ; Object 0C - The monkey nuts
  DEFB $0D,$9F            ; Object 0D - The money
  DEFB $0E,$1F            ; Object 0E - Superglue
  DEFB $0F,$1F            ; Object 0F - Chewing gum
  DEFB $10,$1F            ; Object 10 - The bucket
  DEFB $11,$9F            ; Object 11 - The jump leads
  DEFB $12,$9F            ; Object 12 - The bunsen burner
  DEFB $13,$9F            ; Object 13 - The letter B
  DEFB $14,$1F            ; Object 14 - The gask mask
  DEFB $15,$1F            ; Object 15 - The parcel
  DEFB $16,$9F            ; Object 16 - The fuse
  DEFB $17,$9F            ; Object 17 - The meat
  DEFB $18,$9F            ; Object 18 - The monkey wrench
  DEFB $19,$1F            ; Object 19 - Screwdriver
  DEFB $1A,$9F            ; Object 1A - The letter E
  DEFB $1B,$9F            ; Object 1B - The hook
  DEFB $1C,$1F            ; Object 1C - The patch
  DEFB $1D,$9F            ; Object 1D - The pipe
  DEFB $1E,$9F            ; Object 1E - The letter R

; Template for initial game data
Object_Flags_Template:
  DEFB $1F,$1F,$1F,$1F,$1F ; All players can pick any object up. (Object_Flags)
  DEFB $1F,$1F,$1F,$1F,$1F ; All players can pick any object up.
                           ; (Object_Flags_2)
  DEFB $00,$00,$00,$00,$00 ; Not near any object  (Character_Near_ID)
  DEFB $01,$02,$04,$08,$10 ; Character IDs.  (Character_ID)
  DEFB $00,$06,$0C,$10,$15 ; Character names.  (Character_Text_Ptr)
  DEFB $00,$00,$00,$00,$00 ; Earnings / 100 - start at 0.
                           ; (Character_Earnings_Hundreds)
  DEFB $00,$00,$00,$00,$00 ; Turn off footstep flags.  (Character_Has_Footstep)
  DEFB $00,$00,$00,$00,$00 ; (Character_In_Room)
  DEFB $00,$00,$00,$00,$00 ; (Character_Next_Swap_ID)
  DEFB $00,$00,$00,$00,$00 ; Earnings % 100 - start at 0.
                           ; (Character_Earnings_Tens)
  DEFB $00,$00,$00,$00,$00 ; (Character_Swap_Index)
  DEFB $00,$00,$00,$00,$00 ; Default to frame 0 for all characters.
                           ; (Character_Base)
  DEFB $40,$08,$90,$A8,$E8 ; Default x co-ordinates.  (Character_X)
  DEFB $98,$98,$98,$98,$98 ; Default y co-ordinates.  (Character_Y)
  DEFB $00,$00,$00,$00,$00 ; Everyone starts in the town square.
                           ; (Character_Room_ID)
  DEFB $80,$80,$80,$80,$80 ; Everyone starts with full endurance.
                           ; (Character_Endurance)
  DEFB $5B,$5C,$5D,$5E,$5F ; (Character_Favourite_Food)
  DEFB $46,$45,$44,$43,$07 ; (Character_Attribute)
  DEFB $38,$38,$38,$38,$38 ; (Character_Ptr_Lo)
  DEFB $94,$98,$9C,$A0,$A4 ; (Character_Ptr_Hi)
  DEFB $03,$03,$03,$03,$03 ; Everyone starts with 3 lives.  (Character_Lives)
  DEFB $00,$00,$00,$00,$00 ; (Character_Unused)
  DEFB $00,$00,$00,$00,$00 ; (Character_MidAir)
  DEFB $00,$00,$00,$00,$00 ; Default to not jumping. (Character_Jump)
  DEFB $01,$01,$01,$01,$01 ; Default to undefined direction.
                           ; (Character_Direction)
  DEFB $00,$00,$00,$00,$00 ; (Character_Jump_Direction)
  DEFB $00,$00,$00,$00,$00 ; (Character_Jump_Frame_ID)
  DEFB $1F,$21,$23,$25,$27 ; Default first item. (Character_Object_1)
  DEFB $20,$22,$24,$26,$28 ; Default second item. (Character_Object_2)
  DEFB $14,$05,$17,$12,$08 ; (Character_Next_Room_ID)
  DEFB $00,$00,$00,$00,$00 ; (Character_Needs_Update)
  DEFB $00,$00,$00,$01,$01 ; (Character_Next_Room_2)
  DEFB $18,$18,$18,$01,$01 ; (Character_Next_Room_1)
  DEFB $01,$01,$01,$18,$18 ; (Character_Last_Room)
  DEFB $01,$01,$01,$00,$00 ; (Character_Next_Room_3)

; The current direction of each sprite (0 - left, 1 - right)
;
; Used by the routines in Jump, Move_Character and Chase
Sprite_Direction:
  DEFB $00,$00,$00,$00,$00

; Flags for objects (?)
Object_Flags:
  DEFB $1F,$1F,$1F,$1F,$1F

; Flags for objects (?)
Object_Flags_2:
  DEFB $1F,$1F,$1F,$1F,$1F

; ID of the object a player is standing near and could potentially pick up
Character_Near_ID:
  DEFB $00,$00,$00,$00,$00

; Character ID (1 = Wally, 2 = Wilma, 4 = Tom, 8 = Dick, 10 = Harry)
Character_ID:
  DEFB $01,$02,$04,$08,$10

; Offset for each character name (from 7C00)
Character_Text_Ptr:
  DEFB $00,$06,$0C,$10,$15

; Earnings / 100
Character_Earnings_Hundreds:
  DEFB $00,$00,$00,$00,$00

; Set to 1 to trigger a footstep sound for each character
Character_Has_Footstep:
  DEFB $00,$00,$00,$00,$00

; Set to 1 if a computer controlled character is in the room it wanted to get
; to
Character_In_Room:
  DEFB $00,$00,$00,$00,$00

; ID of the next object in a room that a computer player can swap with
Character_Next_Swap_ID:
  DEFB $00,$00,$00,$00,$00

; Earnings % 100
Character_Earnings_Tens:
  DEFB $00,$00,$00,$00,$00

; Next index in the player's swap list to use.
Character_Swap_Index:
  DEFB $00,$00,$00,$00,$00

; The frame ID for each character
;
; Runs from BC67 (Wally) to BC6B (Harry).
;
; This value is also stored in IY in order to access all the other flags.
Character_Base:
  DEFB $00,$00,$00,$00,$00

; x position on screen for each character
;
; Runs from BC6C (Wally) to BC70 (Harry).
Character_X:
  DEFB $40,$08,$90,$A8,$E8

; y position on screen for each character
;
; Runs from BC71 (Wally) to BC75 (Harry).
Character_Y:
  DEFB $98,$98,$98,$98,$98

; Room number a character is in
;
; Runs from BC76 (Wally) to BC7A (Harry).
Character_Room_ID:
  DEFB $00,$00,$00,$00,$00

; Endurance level for each character
;
; Runs from BC7B (Wally) to BC7F (Harry).
Character_Endurance:
  DEFB $80,$80,$80,$80,$80

; ID of the favourite food item that restores endurance to maximum.
Character_Favourite_Food:
  DEFB $5B,$5C,$5D,$5E,$5F

; Attribute to draw the character
Character_Attribute:
  DEFB $46,$45,$44,$43,$07

; Low byte of the character's graphic
Character_Ptr_Lo:
  DEFB $38,$38,$38,$38,$38

; High byte of the character's graphic
Character_Ptr_Hi:
  DEFB $94,$98,$9C,$A0,$A4

; Lives left for each player
Character_Lives:
  DEFB $03,$03,$03,$03,$03

; Unused
Character_Unused:
  DEFB $00,$00,$00,$00,$00

; Set to 1 if a character is in mid-air
Character_MidAir:
  DEFB $00,$00,$00,$00,$00

; Character jump flag
;
; 0 = no, 1 = jumping right, FF = jumping left
Character_Jump:
  DEFB $00,$00,$00,$00,$00

; Character direction (01 = right, FF = left)
Character_Direction:
  DEFB $01,$01,$01,$01,$01

; Character jump direction (01 = right, FF = left)
Character_Jump_Direction:
  DEFB $00,$00,$00,$00,$00

; If jumping, holds the frame number in the animation sequence
Character_Jump_Frame_ID:
  DEFB $00,$00,$00,$00,$00

; First item of each character
Character_Object_1:
  DEFB $1F,$21,$23,$25,$27

; Second item of each character
Character_Object_2:
  DEFB $20,$22,$24,$26,$28

; Target room to send a computer player
Character_Next_Room_ID:
  DEFB $14,$05,$17,$12,$08

; Flag that toggles between 0 and 1 when a character not in the current room
; needs updating.
Character_Needs_Update:
  DEFB $00,$00,$00,$00,$00

; Copy of the second entry in the current "next rooms" table (trigger
; co-ordinates)
Character_Next_Room_2:
  DEFB $00,$00,$00,$01,$01

; Copy of the first entry in the current "next rooms" table (room to move to)
Character_Next_Room_1:
  DEFB $18,$18,$18,$01,$01

; The room the computer player was previously in.
Character_Last_Room:
  DEFB $01,$01,$01,$18,$18

; Copy of the third entry in the current "next rooms" table (new co-ordinates)
Character_Next_Room_3:
  DEFB $01,$01,$01,$00,$00

; Lo byte of the item swap buffer
Character_Swap_Lo:
  DEFB $A7,$B0,$B9,$C2,$CB

; Hi byte of the item swap buffer
Character_Swap_Hi:
  DEFB $AE,$AE,$AE,$AE,$AE

; Items in the Town Square (none)
Room_Objects_00:
  DEFB $FF

; Items in Stamp Street (none)
  DEFB $FF

; Items in the Post Office
  DEFB $00,$C8,$90,$1F
  DEFB $FF

; Items in Market Street (none)
  DEFB $FF

; Items in the Supermarket
  DEFB $01,$18,$88,$9F
  DEFB $02,$78,$A8,$1F
  DEFB $FF

; Item in the Park
  DEFB $03,$88,$A8,$9F
  DEFB $FF

; Items in Wobbly Walk (none)
  DEFB $FF

; Items in Rubble Road (none)
  DEFB $FF

; Items in Wall Street
Wall_Street_Items:
  DEFB $04,$20,$A0,$9F
  DEFB $05,$C8,$68,$9F
  DEFB $FF

; Item in Pete Street
  DEFB $06,$40,$A8,$9F
  DEFB $FF

; Items in Workshed
  DEFB $07,$60,$90,$1F
  DEFB $08,$80,$A8,$1F
  DEFB $09,$C8,$A8,$1F
  DEFB $FF

; Item in School Lane
  DEFB $0A,$28,$50,$9F
  DEFB $FF

; Item in the School
  DEFB $0B,$10,$A8,$9F
  DEFB $FF

; Items in Baker Street (none)
  DEFB $FF

; Item in the Bakers
  DEFB $0C,$10,$A0,$1F
  DEFB $FF

; Item in the Pub
  DEFB $0D,$A0,$90,$9F
  DEFB $FF

; Items in Motor Way (none)
  DEFB $FF

; Items in the Laboratory
  DEFB $0E,$60,$90,$1F
  DEFB $0F,$D8,$90,$1F
  DEFB $FF

; Item in the Garage
  DEFB $10,$78,$A8,$1F
  DEFB $FF

; Items in Reference Road (none)
  DEFB $FF

; Items in the Library
  DEFB $11,$38,$90,$9F
  DEFB $12,$78,$90,$9F
  DEFB $13,$C0,$90,$9F
  DEFB $FF

; Items in Penny Lane
  DEFB $FF

; Item in the Bank
  DEFB $14,$C8,$A8,$1F
  DEFB $FF

; Item in Wally's House
  DEFB $15,$78,$A8,$1F
  DEFB $FF

; Items in Meat Street (none)
  DEFB $FF

; Items in the Butchers
  DEFB $16,$10,$A8,$9F
  DEFB $17,$10,$90,$9F
  DEFB $FF

; Items in Trunk Road (none)
  DEFB $FF

; Item in the Zoo
  DEFB $18,$08,$A8,$9F
  DEFB $FF

; Items in Rail Road (none)
  DEFB $FF

; Item in the Station
  DEFB $19,$B0,$90,$1F
  DEFB $FF

; Items in the Docks
  DEFB $1A,$00,$A8,$9F
  DEFB $1B,$84,$90,$9F
  DEFB $FF

; Item in the Sewer
Sewer_Items:
  DEFB $1C,$78,$A8,$1F
  DEFB $FF

; Items in the Cave
Cave_Items:
  DEFB $1D,$00,$98,$9F
  DEFB $1E,$48,$A8,$9F
  DEFB $FF

; Jump table for room block components
Room_Block_Table:
  DEFW $C352
  DEFW $C37C
  DEFW $C3DB
  DEFW $C56B
  DEFW $C580
  DEFW $C5C0
  DEFW $C651
  DEFW $C6E3
  DEFW $C703
  DEFW $C71F
  DEFW $C732
  DEFW $C745
  DEFW $C77F
  DEFW $C7BF
  DEFW $C844
  DEFW $C9BE
  DEFW $C9DD
  DEFW $C9FC
  DEFW $CA57
  DEFW $C860
  DEFW $C908
  DEFW $C986
  DEFW $C9A2
  DEFW $CA9A
  DEFW $CAAE
  DEFW $C876
  DEFW $C8E4
  DEFW $C9D4
  DEFW $C7B7
  DEFW $C8B3
  DEFW $C8C3
  DEFW $C23C
  DEFW $C35D
  DEFW $C369
  DEFW $C91A
  DEFW $C762
  DEFW $C943
  DEFW $C801
  DEFW $C82B
  DEFW $C889
  DEFW $C89F
  DEFW $C79F
  DEFW $C7E0
  DEFW $CB05
  DEFW $C797
  DEFW $C254
  DEFW $C20A
  DEFW $C220
  DEFW $CB2F
  DEFW $CB55
  DEFW $CB6B
  DEFW $CBA0
  DEFW $CBE0
  DEFW $CBF0
  DEFW $CC03
  DEFW $CC25
  DEFW $CCDA
  DEFW Room_Block_39
  DEFW $C857
  DEFW $C27C
  DEFW $C92E
  DEFW $CC39
  DEFW $CC97
  DEFW $CB1A
  DEFW $CCAA
  DEFW $CC8D
  DEFW $CC5D
  DEFW $C5DA
  DEFW $C5F9
  DEFW $C610
  DEFW $C61A
  DEFW $C625
  DEFW $C635
  DEFW $C291
  DEFW $C29A
  DEFW $CACA
  DEFW $CCB2
  DEFW $C19D
  DEFW $CA1F
  DEFW $BFE2
  DEFW $C0F1
  DEFW $BFA4
  DEFW $BFB2
  DEFW $BFDA
  DEFW $BFFE
  DEFW $BF27
  DEFW $C132
  DEFW $BE8F
  DEFW $BEDA
  DEFW $BF03
  DEFW $BF19
  DEFW $C026
  DEFW $C03C
  DEFW $C045
  DEFW $C050
  DEFW $C05A
  DEFW $C082
  DEFW $C0A0
  DEFW $C0AA
  DEFW $C0B8
  DEFW $C0D4
  DEFW $CAEC
  DEFW $C0DC
  DEFW $CD14
  DEFW $C4CD
  DEFW $C437
  DEFW $C2A8
  DEFW $C312
  DEFW $C577
  DEFW $C960
  DEFW $BF81
  DEFW $C957
  DEFW $BE72
  DEFW $C334
  DEFW $C347
  DEFW $CB85
  DEFW $CD2F
  DEFW $CD43

; Room block data 70
  DEFB $FB,$EC,$DF,$FE,$46,$09,$09,$F1
  DEFB $F1,$0E,$C5,$FF,$FE,$42,$0C,$0D
  DEFB $C6,$01,$0A,$0B,$C8,$01,$FE,$46
  DEFB $FB,$6C,$E0,$04,$FF

; Room block data 57
  DEFB $FB,$04,$D2,$FE,$44,$07,$FD,$17
  DEFB $01,$F0,$01,$02,$03,$AF,$00,$04
  DEFB $FB,$E4,$D9,$02,$0B,$03,$02,$0B
  DEFB $0B,$0B,$03,$02,$0B,$0B,$0B,$03
  DEFB $02,$0B,$0B,$0B,$03,$02,$0B,$0B
  DEFB $0B,$03,$B0,$01,$FB,$BC,$D6,$FE
  DEFB $47,$00,$01,$01,$00,$01,$01,$00
  DEFB $01,$01,$00,$01,$01,$00,$01,$01
  DEFB $00,$01,$01,$00,$01,$01,$00,$01
  DEFB $01,$02,$FF

; Room block data 58
  DEFB $FB,$D4,$DD,$FE,$43,$F0,$01,$00
  DEFB $01,$C8,$FF,$FE,$45,$F0,$01,$00
  DEFB $01,$C8,$FF,$FE,$42,$F0,$01,$00
  DEFB $01,$C8,$FF,$FE,$46,$F0,$01,$00
  DEFB $01,$C4,$01,$FE,$47,$FD,$04,$02
  DEFB $FF

; Room block data 59
  DEFB $FB,$D4,$DD,$FE,$47,$FD,$06,$03
  DEFB $C2,$01,$FB,$BC,$D1,$FE,$43,$00
  DEFB $01,$02,$02,$00,$01,$FF

; Room block data 5A
  DEFB $FB,$D4,$DD,$FE,$46,$06,$07,$C6
  DEFB $01,$FE,$45,$04,$05,$FF

; Room block data 55
  DEFB $FB,$54,$DD,$FE,$45,$F0,$03,$0A
  DEFB $CA,$FD,$F0,$03,$0A,$C9,$FF,$09
  DEFB $FE,$42,$C3,$01,$06,$06,$02,$06
  DEFB $06,$02,$06,$08,$C0,$01,$07,$07
  DEFB $0B,$07,$07,$0B,$07,$CD,$00,$03
  DEFB $04,$05,$B9,$01,$FE,$47,$00,$00
  DEFB $0C,$0D,$00,$00,$0C,$0D,$00,$00
  DEFB $0C,$0D,$00,$01,$BA,$01,$00,$00
  DEFB $0F,$0E,$00,$00,$0F,$0E,$00,$00
  DEFB $0F,$0E,$01,$BD,$01,$FE,$42,$FD
  DEFB $09,$00,$01,$BE,$01,$FD,$08,$00
  DEFB $01,$FF

; Room block data 6E
  DEFB $FB,$0C,$DD,$FE,$42,$F0,$01,$06
  DEFB $06,$01,$C6,$01,$05,$01,$C6,$01
  DEFB $04,$01,$C5,$01,$07,$F1,$03,$C5
  DEFB $01,$06,$FB,$E4,$D9,$0B,$0B,$C6
  DEFB $FF,$0B,$FF

; Room block data 51
  DEFB $FB,$EC,$DC,$C8,$03,$FE,$44,$00
  DEFB $01,$C6,$01,$02,$03,$FF

; Room block data 52
  DEFB $FB,$0C,$DD,$FE,$28,$00,$08,$C6
  DEFB $01,$00,$08,$C6,$01,$01,$08,$C6
  DEFB $01,$01,$07,$C6,$01,$01,$07,$C6
  DEFB $01,$02,$06,$C6,$01,$02,$06,$C6
  DEFB $01,$02,$05,$C6,$01,$03,$04,$FF

; Room block data 53
  DEFB $FB,$0C,$DD,$FE,$50,$F3,$C7,$BF

; Room block data 4F
  DEFB $FB,$24,$DC,$FE,$46,$0F,$11,$12
  DEFB $15,$C4,$01,$10,$13,$14,$16,$C5
  DEFB $01,$17,$18,$C5,$01,$FE,$44,$02
  DEFB $01,$01,$02,$FF

; Room block data 54
  DEFB $FB,$E4,$D9,$FE,$79,$FD,$10,$09
  DEFB $B8,$02,$FD,$10,$0A,$B8,$FF,$FE
  DEFB $72,$FB,$DC,$DF,$FD,$04,$20,$FB
  DEFB $E4,$D9,$10,$11,$11,$12,$13,$11
  DEFB $11,$FB,$DC,$DF,$FD,$05,$20,$FF

; Room block data 5B
  DEFB $FB,$DC,$DF,$FE,$4E,$FD,$18,$20
  DEFB $FB,$14,$DE,$B8,$00,$08,$09,$0A
  DEFB $0B,$0C,$0D,$0E,$0F,$FF

; Room block data 5C
  DEFB $FB,$14,$DE,$FE,$47,$00,$01,$02
  DEFB $FF

; Room block data 5D
  DEFB $FB,$14,$DE,$FE,$46,$03,$04,$05
  DEFB $06,$07,$FF

; Room block data 5E
  DEFB $FB,$14,$DE,$FE,$60,$10,$11,$12
  DEFB $13,$FF

; Room block data 5F
  DEFB $FB,$14,$DE,$FE,$4F,$14,$15,$16
  DEFB $17,$18,$FB,$DC,$DE,$00,$01,$02
  DEFB $03,$04,$05,$FB,$DC,$DF,$20,$20
  DEFB $20,$B8,$00,$20,$20,$C6,$FF,$FD
  DEFB $10,$20,$B8,$02,$FD,$10,$20,$FF

; Room block data 60
  DEFB $FB,$DC,$DF,$FE,$57,$FD,$07,$20
  DEFB $C1,$01,$20,$CD,$00,$20,$C1,$01
  DEFB $FD,$07,$20,$C2,$FF,$FB,$DC,$DE
  DEFB $06,$07,$08,$09,$0A,$FF

; Room block data 61
  DEFB $FB,$2C,$D7,$C8,$03,$FE,$45,$10
  DEFB $11,$FF

; Room block data 62
  DEFB $FB,$2C,$D7,$FE,$46,$06,$08,$C6
  DEFB $01,$FE,$42,$0E,$0F,$FF

; Room block data 63
  DEFB $FB,$5C,$D3,$FE,$44,$F2,$08,$07
  DEFB $08,$B8,$01,$F2,$08,$08,$07,$B8
  DEFB $01,$F2,$08,$07,$08,$B8,$01,$F2
  DEFB $08,$08,$07,$FF

; Room block data 64
  DEFB $FB,$14,$D5,$FE,$46,$F3,$D9,$CA

; Room block data 66
  DEFB $FB,$AC,$DF,$C8,$03,$FE,$42,$01
  DEFB $03,$01,$02,$02,$C4,$FF,$00,$03
  DEFB $01,$C6,$FF,$02,$FF

; Room block data 50
  DEFB $FB,$24,$DC,$FE,$45,$F0,$09,$0A
  DEFB $C8,$FC,$0B,$C7,$02,$0B,$FE,$47
  DEFB $C2,$FC,$05,$C5,$01,$09,$06,$04
  DEFB $C5,$01,$08,$07,$F1,$FE,$44,$00
  DEFB $0D,$0E,$0C,$C1,$01,$03,$03,$03
  DEFB $00,$F1,$F1,$0C,$C1,$01,$03,$03
  DEFB $0D,$0E,$F1,$F1,$0C,$C1,$01,$FE
  DEFB $46,$01,$02,$01,$01,$01,$02,$01
  DEFB $FF

; Room block data 56
  DEFB $FB,$AC,$DB,$FE,$45,$00,$0C,$C6
  DEFB $01,$0D,$0E,$C5,$05,$08,$09,$04
  DEFB $05,$C4,$01,$0A,$0B,$02,$03,$C5
  DEFB $01,$F0,$09,$0D,$C7,$FF,$06,$F1
  DEFB $F1,$07,$C6,$F8,$F0,$09,$0E,$BF
  DEFB $F2,$00,$FD,$06,$01,$C0,$01,$00
  DEFB $FD,$07,$01,$CC,$FF,$01,$01,$01
  DEFB $0C,$C4,$01,$FD,$04,$01,$0C,$BF
  DEFB $FE,$FE,$43,$FB,$14,$D5,$12,$13
  DEFB $C6,$01,$17,$18,$C8,$FF,$FE,$46
  DEFB $1A,$1A,$C6,$01,$1A,$1A,$C4,$01
  DEFB $FD,$04,$1A,$C4,$01,$FD,$04,$1A
  DEFB $BE,$00,$FB,$E4,$D9,$FE,$43,$F0
  DEFB $07,$14,$FF

; Room block data 4D
  DEFB $FB,$AC,$DB,$FE,$07,$00,$0C,$C6
  DEFB $01,$0D,$0E,$C6,$01,$0D,$0E,$C5
  DEFB $03,$06,$0D,$0E,$07,$C4,$01,$04
  DEFB $05,$08,$09,$C4,$01,$02,$03,$0A
  DEFB $0B,$C3,$01,$06,$CC,$00,$07,$C2
  DEFB $01,$04,$05,$F1,$F1,$08,$09,$C2
  DEFB $01,$02,$03,$F1,$F1,$0A,$0B,$C1
  DEFB $01,$06,$CE,$00,$07,$C0,$01,$04
  DEFB $05,$CC,$00,$08,$09,$C0,$01,$02
  DEFB $03,$CC,$00,$0A,$0B,$BF,$01,$06
  DEFB $D0,$00,$07,$BE,$01,$04,$05,$CE
  DEFB $00,$08,$09,$BF,$FF,$FE,$46,$FD
  DEFB $08,$01,$C1,$FD,$FD,$06,$01,$C3
  DEFB $FD,$FD,$04,$01,$FF

; Room block data 2E
  DEFB $FB,$2C,$D7,$FE,$47,$F0,$01,$00
  DEFB $FE,$46,$F0,$01,$01,$FE,$42,$02
  DEFB $C6,$01,$03,$04,$05,$FF

; Room block data 2F
  DEFB $FB,$2C,$D7,$FE,$44,$0D,$FE,$47
  DEFB $C6,$01,$0B,$07,$0C,$C5,$01,$FE
  DEFB $44,$09,$F1,$0A,$C5,$01,$FE,$47
  DEFB $06,$07,$08,$FF

; Room block data 1F
  DEFB $FB,$14,$D5,$FE,$43,$0D,$F0,$01
  DEFB $0E,$FE,$07,$F0,$0A,$10,$C7,$F6
  DEFB $F0,$0A,$0F,$FE,$43,$0B,$0C,$FF

; Room block data 2D
  DEFB $FB,$BC,$D1,$FE,$47,$03,$FE,$43
  DEFB $04,$FE,$42,$05,$FE,$46,$03,$FE
  DEFB $43,$04,$FE,$47,$05,$FE,$44,$05
  DEFB $FE,$46,$03,$C0,$01,$FE,$45,$00
  DEFB $01,$02,$00,$01,$02,$00,$01,$FF

; Room block data 3B
  DEFB $FB,$2C,$D7,$FE,$45,$09,$0A,$C6
  DEFB $01,$FB,$14,$D5,$FE,$72,$00,$00
  DEFB $C6,$01,$00,$00,$FF

; Room block data 49
  DEFB $FB,$EC,$DF,$FE,$44,$FD,$20,$07
  DEFB $FF

; Room block data 4A
  DEFB $FB,$7C,$D2,$FE,$45,$11,$12,$13
  DEFB $C5,$01,$14,$15,$16,$FF

; Room block data 6A
  DEFB $FB,$FC,$D5,$FE,$44,$13,$FD,$16
  DEFB $14,$F0,$01,$15,$F0,$05,$17,$B1
  DEFB $FB,$F0,$05,$16,$C9,$FB,$FE,$46
  DEFB $FB,$14,$D5,$F2,$0B,$12,$13,$B2
  DEFB $01,$F2,$0B,$14,$15,$B2,$01,$F2
  DEFB $0B,$14,$15,$B2,$01,$14,$15,$17
  DEFB $18,$F2,$03,$14,$15,$17,$18,$F2
  DEFB $03,$14,$15,$17,$18,$14,$15,$B2
  DEFB $01,$17,$18,$F1,$F1,$F2,$03,$17
  DEFB $18,$F1,$F1,$F2,$03,$17,$18,$F1
  DEFB $F1,$17,$18,$B1,$01,$FE,$45,$FB
  DEFB $04,$D2,$07,$FD,$1A,$01,$F0,$01
  DEFB $02,$F0,$02,$03,$AD,$FE,$F0,$02
  DEFB $04,$FF

; Room block data 6B
  DEFB $FB,$E4,$D9,$C8,$03,$FE,$45,$02
  DEFB $0B,$03,$02,$0B,$0B,$0B,$03,$02
  DEFB $0B,$0B,$0B,$03,$02,$0B,$0B,$0B
  DEFB $03,$02,$0B,$0B,$0B,$03,$02,$0B
  DEFB $03,$FF

; Room block data 71
  DEFB $FB,$BC,$D6,$FE,$45,$F0,$01,$02
  DEFB $F0,$07,$09,$FE,$44,$FB,$BC,$D1
  DEFB $01,$02,$FF

; Room block data 72
  DEFB $FB,$EC,$DF,$C8,$03,$FE,$45,$FD
  DEFB $17,$0F,$FF

; Room block data 0
  DEFB $FB,$EC,$DF,$C8,$03,$FE,$05,$FD
  DEFB $20,$00,$FF

; Room block data 20
  DEFB $FB,$EC,$DF,$C8,$03,$FE,$43,$F2
  DEFB $10,$05,$06,$FF

; Room block data 21
  DEFB $FB,$04,$D2,$FE,$46,$F0,$01,$00
  DEFB $04,$F1,$05,$02,$C4,$01,$04,$F1
  DEFB $06,$03,$FF

; Room block data 1
  DEFB $FB,$6C,$E0,$FE,$46,$01,$02,$01
  DEFB $02,$01,$05,$C3,$01,$04,$F1,$04
  DEFB $F1,$06,$05,$C1,$01,$FE,$45,$FD
  DEFB $04,$00,$03,$FE,$46,$04,$07,$05
  DEFB $C5,$01,$FE,$45,$03,$F1,$FE,$46
  DEFB $06,$05,$C5,$01,$FE,$45,$03,$FE
  DEFB $46,$04,$07,$05,$C5,$01,$FE,$45
  DEFB $03,$F1,$FE,$46,$06,$05,$C5,$01
  DEFB $FE,$45,$03,$FE,$46,$04,$07,$05
  DEFB $C5,$01,$FE,$45,$03,$F1,$FE,$46
  DEFB $06,$C6,$01,$FE,$45,$03,$FE,$46
  DEFB $F0,$01,$04,$FE,$45,$03,$FF

; Room block data 2
  DEFB $FB,$6C,$E0,$FE,$46,$08,$01,$02
  DEFB $01,$02,$01,$C1,$01,$08,$0A,$F1
  DEFB $04,$F1,$04,$C1,$01,$08,$0B,$04
  DEFB $FE,$45,$09,$FD,$04,$0C,$FE,$46
  DEFB $BF,$01,$08,$0A,$F1,$FE,$45,$09
  DEFB $FE,$46,$C3,$01,$08,$0B,$04,$FE
  DEFB $45,$09,$FE,$46,$C3,$01,$08,$0A
  DEFB $F1,$FE,$45,$09,$FE,$46,$C3,$01
  DEFB $08,$0B,$04,$FE,$45,$09,$FE,$46
  DEFB $C4,$01,$0A,$C9,$00,$FE,$45,$09
  DEFB $C5,$01,$FE,$46,$04,$FE,$45,$09
  DEFB $C6,$01,$09,$FF

; Room block data 69
  DEFB $FB,$44,$DF,$FE,$45,$06,$FE,$47
  DEFB $FD,$08,$0A,$FE,$45,$07,$06,$07
  DEFB $06,$07,$BC,$01,$06,$FD,$06,$05
  DEFB $08,$04,$BF,$01,$09,$FE,$43,$FD
  DEFB $06,$0A,$FE,$45,$07,$04,$BF,$01
  DEFB $06,$FD,$06,$05,$08,$04,$BF,$01
  DEFB $09,$FE,$46,$FD,$06,$0A,$FE,$45
  DEFB $07,$04,$BF,$01,$06,$FD,$06,$05
  DEFB $08,$04,$BF,$01,$09,$FE,$42,$FD
  DEFB $06,$0A,$FE,$45,$07,$04,$BF,$01
  DEFB $06,$FD,$06,$05,$08,$04,$BF,$01
  DEFB $09,$FE,$44,$FD,$06,$0A,$FE,$45
  DEFB $05,$08,$09,$08,$C7,$F9,$F0,$07
  DEFB $04,$C9,$FE,$09,$05,$07,$C3,$FB
  DEFB $FE,$47,$F0,$07,$0C,$CA,$F9,$F0
  DEFB $05,$0C,$BB,$FB,$FE,$45,$F0,$01
  DEFB $04,$FE,$47,$F0,$02,$0B,$FE,$45
  DEFB $04,$C6,$01,$FE,$46,$02,$03,$FE
  DEFB $44,$C6,$01,$00,$01,$FF

; Room block data 68
  DEFB $FB,$BC,$D1,$FE,$43,$00,$01,$02
  DEFB $02,$00,$01,$02,$02,$00,$01,$02
  DEFB $02,$00,$01,$02,$02,$00,$01,$02
  DEFB $02,$00,$01,$B3,$FE,$FE,$45,$F0
  DEFB $01,$06,$07,$C8,$FF,$FE,$46,$F0
  DEFB $01,$06,$07,$F1,$FE,$46,$08,$C8
  DEFB $FE,$08,$FE,$44,$08,$C6,$01,$FE
  DEFB $42,$08,$FE,$47,$08,$FE,$46,$08
  DEFB $C5,$01,$FE,$44,$08,$FE,$46,$08
  DEFB $FE,$45,$08,$FE,$46,$08,$C9,$FF
  DEFB $FE,$47,$F0,$01,$06,$07,$C8,$FF
  DEFB $FE,$44,$F0,$01,$06,$07,$C8,$FF
  DEFB $FE,$46,$F0,$01,$06,$07,$C8,$FF
  DEFB $FE,$45,$F0,$01,$06,$07,$C8,$FF
  DEFB $FE,$44,$F0,$01,$06,$07,$C8,$FF
  DEFB $FE,$42,$F0,$01,$06,$07,$CA,$FE
  DEFB $FE,$46,$08,$FE,$45,$08,$C5,$01
  DEFB $FE,$44,$08,$FE,$46,$08,$FE,$47
  DEFB $08,$C5,$01,$08,$FE,$45,$08,$FE
  DEFB $46,$08,$FE,$44,$08,$FF

; Room block data 3
  DEFB $FB,$EC,$DF,$C8,$03,$FE,$45,$01
  DEFB $02,$03,$04,$FF

; Room block data 6C
  DEFB $FB,$9C,$D4,$FE,$44,$F0,$0C,$04
  DEFB $FF

; Room block data 4
  DEFB $FB,$24,$D4,$FE,$47,$06,$07,$C6
  DEFB $01,$08,$09,$C6,$01,$0A,$0B,$C6
  DEFB $01,$0C,$0D,$C6,$01,$FE,$46,$00
  DEFB $02,$C4,$01,$00,$FD,$04,$01,$02
  DEFB $C3,$01,$FD,$04,$0E,$C1,$01,$00
  DEFB $FD,$08,$01,$02,$BF,$01,$FD,$08
  DEFB $0E,$BD,$01,$00,$FD,$0C,$01,$02
  DEFB $BB,$01,$03,$FD,$0A,$05,$04,$FF

; Room block data 5
  DEFB $FB,$E4,$D3,$FE,$45,$00,$FD,$06
  DEFB $01,$02,$C0,$01,$03,$FD,$06,$04
  DEFB $05,$C0,$01,$FE,$43,$06,$CE,$00
  DEFB $07,$FF

; Room block data 43
  DEFB $FB,$04,$D2,$FE,$43,$0C,$FD,$06
  DEFB $09,$0D,$C0,$01,$FE,$42,$0A,$FD
  DEFB $06,$08,$0B,$C0,$01,$FB,$E4,$D3
  DEFB $FE,$44,$06,$CE,$00,$07,$FF

; Room block data 44
  DEFB $FB,$04,$D2,$FE,$43,$0C,$0D,$C6
  DEFB $01,$FE,$42,$0A,$0B,$C6,$01,$FE
  DEFB $44,$FB,$E4,$D3,$06,$07,$FF

; Room block data 45
  DEFB $FB,$7C,$D2,$FE,$45,$F2,$10,$0F
  DEFB $10,$FF

; Room block data 46
  DEFB $FB,$7C,$D2,$FE,$47,$00,$FD,$08
  DEFB $01,$02,$FF

; Room block data 47
  DEFB $FB,$7C,$D2,$FE,$45,$F0,$04,$06
  DEFB $C7,$00,$FE,$43,$03,$04,$05,$FF

; Room block data 48
  DEFB $FB,$7C,$D2,$FE,$47,$0C,$FD,$06
  DEFB $0D,$0E,$FE,$46,$C0,$01,$F0,$02
  DEFB $0A,$07,$FD,$06,$08,$C8,$FE,$F0
  DEFB $02,$0B,$09,$FF

; Room block data 6
  DEFB $FB,$5C,$D3,$FE,$44,$03,$00,$01
  DEFB $00,$04,$C1,$01,$03,$02,$01,$02
  DEFB $01,$01,$02,$04,$BF,$01,$03,$00
  DEFB $02,$00,$00,$02,$01,$02,$02,$BF
  DEFB $01,$00,$02,$02,$02,$01,$00,$02
  DEFB $01,$02,$00,$BE,$01,$00,$01,$00
  DEFB $02,$01,$02,$00,$01,$02,$05,$BD
  DEFB $01,$03,$00,$00,$02,$01,$00,$00
  DEFB $02,$01,$01,$04,$BD,$01,$06,$01
  DEFB $02,$01,$02,$00,$02,$01,$00,$00
  DEFB $00,$BE,$01,$00,$02,$01,$00,$00
  DEFB $01,$02,$02,$01,$05,$BF,$01,$06
  DEFB $02,$01,$00,$00,$02,$00,$00,$C1
  DEFB $01,$06,$05,$01,$05,$06,$05,$C3
  DEFB $01,$FE,$42,$09,$0A,$0B,$0C,$C5
  DEFB $01,$07,$08,$C6,$01,$07,$08,$C6
  DEFB $01,$08,$07,$C6,$01,$08,$07,$C6
  DEFB $01,$07,$08,$C5,$01,$0D,$0E,$0F
  DEFB $10,$FF

; Room block data 7
  DEFB $FB,$5C,$D3,$FE,$04,$00,$02,$01
  DEFB $01,$00,$C3,$01,$02,$01,$02,$02
  DEFB $02,$C3,$01,$00,$02,$01,$02,$00
  DEFB $C3,$01,$00,$01,$01,$02,$00,$FF

; Room block data 8
  DEFB $FB,$5C,$D3,$FE,$04,$01,$00,$02
  DEFB $01,$C4,$01,$02,$01,$00,$02,$C4
  DEFB $01,$01,$00,$01,$01,$C4,$01,$00
  DEFB $02,$02,$01,$FF

; Room block data 9
  DEFB $FB,$34,$D3,$FE,$43,$FD,$05,$00
  DEFB $C3,$01,$FD,$05,$02,$C3,$01,$FD
  DEFB $05,$01,$FF

; Room block data A
  DEFB $FB,$34,$D3,$FE,$43,$FD,$04,$00
  DEFB $C4,$01,$FD,$04,$02,$C4,$01,$FD
  DEFB $04,$01,$FF

; Room block data B
  DEFB $FB,$34,$D3,$FE,$45,$FD,$05,$04
  DEFB $C3,$01,$FD,$05,$03,$C3,$01,$FD
  DEFB $05,$03,$C3,$01,$FD,$05,$03,$C3
  DEFB $01,$FD,$05,$03,$FF

; Room block data 23
  DEFB $FB,$34,$D3,$FE,$45,$FD,$04,$04
  DEFB $C4,$01,$FD,$04,$03,$C4,$01,$FD
  DEFB $04,$03,$C4,$01,$FD,$04,$03,$C4
  DEFB $01,$FD,$04,$03,$FF

; Room block data C
  DEFB $FB,$14,$D5,$FE,$72,$FD,$10,$00
  DEFB $B8,$01,$FD,$10,$00,$B8,$01,$FD
  DEFB $10,$00,$B8,$01,$FD,$10,$00,$FF

; Room block data 2C
  DEFB $FB,$DC,$D5,$FE,$46,$F3,$84,$C7

; Room block data 29
  DEFB $FB,$14,$D5,$FE,$72,$FD,$08,$00
  DEFB $C0,$01,$FD,$08,$00,$C0,$01,$FD
  DEFB $08,$00,$C0,$01,$FD,$08,$00,$FF

; Room block data 1C
  DEFB $FB,$14,$D5,$FE,$56,$F3,$84,$C7

; Room block data D
  DEFB $FB,$14,$D5,$FE,$02,$FD,$10,$03
  DEFB $B8,$01,$F2,$08,$01,$02,$B8,$01
  DEFB $F2,$08,$01,$02,$B8,$01,$F2,$08
  DEFB $01,$02,$B8,$01,$F2,$08,$01,$02
  DEFB $FF

; Room block data 2A
  DEFB $FB,$14,$D5,$FE,$02,$FD,$08,$03
  DEFB $C0,$01,$F2,$04,$01,$02,$C0,$01
  DEFB $F2,$04,$01,$02,$C0,$01,$F2,$04
  DEFB $01,$02,$C0,$01,$F2,$04,$01,$02
  DEFB $FF

; Room block data 25
  DEFB $FB,$FC,$D5,$FE,$47,$00,$FD,$04
  DEFB $01,$C3,$01,$F0,$04,$07,$10,$FD
  DEFB $04,$11,$C4,$FC,$FB,$DC,$DF,$FD
  DEFB $04,$20,$C4,$01,$FD,$04,$20,$C4
  DEFB $01,$FD,$04,$20,$C4,$01,$FD,$04
  DEFB $20,$FF

; Room block data 26
  DEFB $FB,$FC,$D5,$FE,$47,$FD,$04,$01
  DEFB $F0,$01,$02,$F0,$04,$08,$C4,$00
  DEFB $FD,$04,$11,$12,$C3,$FC,$F3,$15
  DEFB $C8

; Room block data E
  DEFB $FB,$FC,$D5,$FE,$47,$00,$01,$02
  DEFB $C5,$01,$07,$06,$08,$C5,$01,$03
  DEFB $04,$05,$FF

; Room block data 3A
  DEFB $FB,$DC,$DF,$FE,$46,$F0,$12,$20
  DEFB $FF

; Room block data 13
  DEFB $FB,$FC,$D5,$FE,$47,$00,$01,$01
  DEFB $02,$C4,$01,$07,$06,$06,$08,$C4
  DEFB $01,$03,$04,$04,$05,$FF

; Room block data 19
  DEFB $FB,$34,$D3,$FE,$45,$03,$03,$03
  DEFB $C5,$01,$03,$03,$03,$C5,$01,$03
  DEFB $03,$03,$FF

; Room block data 27
  DEFB $FB,$FC,$D5,$FE,$47,$00,$01,$01
  DEFB $02,$C4,$01,$07,$06,$06,$08,$C4
  DEFB $01,$10,$11,$11,$12,$FF

; Room block data 28
  DEFB $FB,$14,$D5,$FE,$47,$12,$13,$C6
  DEFB $01,$16,$15,$C6,$01,$14,$15,$C6
  DEFB $01,$17,$18,$FF

; Room block data 1D
  DEFB $FB,$FC,$D5,$FE,$47,$0B,$0D,$C6
  DEFB $01,$0E,$0F,$C6,$01,$0E,$0F,$FF

; Room block data 1E
  DEFB $FB,$FC,$D5,$FE,$47,$0B,$0C,$0C
  DEFB $0D,$C4,$01,$F0,$04,$0E,$CB,$FC
  DEFB $F0,$04,$0F,$C6,$FC,$FB,$DC,$DF
  DEFB $F0,$04,$20,$C9,$FC,$F0,$04,$20
  DEFB $FF

; Room block data 1A
  DEFB $FB,$34,$D3,$FE,$45,$FD,$04,$03
  DEFB $C4,$01,$FD,$04,$03,$C4,$01,$03
  DEFB $FB,$FC,$D5,$0A,$FB,$34,$D3,$03
  DEFB $03,$C4,$01,$FD,$04,$03,$C4,$01
  DEFB $FD,$04,$03,$FF

; Room block data 14
  DEFB $FB,$FC,$D5,$FE,$47,$09,$F0,$04
  DEFB $09,$C7,$FD,$F0,$01,$0A,$F0,$02
  DEFB $09,$FF

; Room block data 22
  DEFB $FB,$FC,$D5,$FE,$47,$00,$01,$01
  DEFB $02,$C4,$01,$F0,$04,$07,$CB,$FC
  DEFB $F0,$04,$08,$FF

; Room block data 3C
  DEFB $FB,$FC,$D5,$FE,$47,$13,$FD,$12
  DEFB $14,$F0,$01,$15,$F0,$05,$17,$B5
  DEFB $FB,$F0,$05,$16,$FF

; Room block data 24
  DEFB $FB,$FC,$D5,$FE,$47,$13,$14,$14
  DEFB $15,$C4,$01,$F0,$04,$16,$CB,$FC
  DEFB $F0,$04,$17,$FF

; Room block data 6F
  DEFB $FB,$EC,$DF,$FE,$44,$FD,$1E,$09
  DEFB $FF

; Room block data 6D
  DEFB $FB,$14,$D5,$FE,$46,$F2,$02,$09
  DEFB $0A,$C3,$01,$F2,$02,$09,$0A,$C5
  DEFB $01,$09,$0A,$C5,$00,$FE,$44,$FB
  DEFB $EC,$DF,$08,$C8,$01,$08,$08,$C8
  DEFB $FF,$08,$C8,$FF,$08,$FF

; Room block data 15
  DEFB $FB,$14,$D5,$FE,$46,$F2,$04,$09
  DEFB $0A,$C0,$01,$F2,$04,$0A,$09,$C0
  DEFB $01,$F2,$04,$09,$0A,$C0,$01,$F2
  DEFB $04,$0A,$09,$FF

; Room block data 16
  DEFB $FB,$14,$D5,$FE,$46,$F2,$08,$09
  DEFB $0A,$B8,$01,$F2,$08,$0A,$09,$B8
  DEFB $01,$F2,$08,$09,$0A,$B8,$01,$F2
  DEFB $08,$0A,$09,$FF

; Room block data F
  DEFB $FB,$14,$D5,$FE,$43,$04,$05,$05
  DEFB $05,$04,$05,$05,$05,$04,$05,$05
  DEFB $05,$04,$05,$05,$05,$FF

; Room block data 1B
  DEFB $FB,$14,$D5,$FE,$44,$FD,$10,$11
  DEFB $FF

; Room block data 10
  DEFB $FB,$14,$D5,$FE,$43,$F0,$01,$06
  DEFB $F0,$02,$07,$F0,$01,$08,$F0,$02
  DEFB $07,$F0,$01,$08,$F0,$02,$07,$F0
  DEFB $01,$08,$F0,$02,$07,$08,$FF

; Room block data 11
  DEFB $FB,$9C,$D4,$FE,$45,$0B,$FE,$46
  DEFB $C6,$01,$08,$09,$0A,$C5,$01,$05
  DEFB $06,$07,$FE,$45,$C6,$01,$04,$C6
  DEFB $01,$01,$00,$02,$C6,$01,$F0,$08
  DEFB $04,$03,$FF

; Room block data 4E
  DEFB $FB,$BC,$D6,$FE,$46,$0A,$0B,$F1
  DEFB $0A,$0B,$C3,$01,$0C,$0D,$F1,$0C
  DEFB $0D,$C3,$02,$0A,$0B,$F1,$0A,$0B
  DEFB $C3,$01,$0C,$0D,$F1,$0C,$0D,$C2
  DEFB $FE,$FE,$43,$00,$FD,$05,$01,$02
  DEFB $C1,$01,$F0,$02,$08,$00,$FD,$05
  DEFB $01,$02,$C7,$FE,$F0,$02,$09,$FF

; Room block data 12
  DEFB $FB,$BC,$D6,$FE,$43,$00,$FD,$08
  DEFB $01,$F0,$01,$02,$F0,$07,$09,$BF
  DEFB $F9,$F0,$07,$08,$FE,$46,$C9,$F8
  DEFB $F0,$01,$03,$F0,$05,$04,$CA,$FA
  DEFB $F0,$01,$03,$F0,$05,$04,$CB,$FA
  DEFB $F0,$01,$03,$F0,$05,$04,$CA,$FA
  DEFB $F0,$01,$03,$F0,$05,$04,$C1,$00
  DEFB $FE,$47,$05,$06,$07,$F1,$F1,$05
  DEFB $06,$07,$FF

; Room block data 17
  DEFB $FB,$9C,$D4,$FE,$46,$F0,$01,$0B
  DEFB $F0,$07,$04,$03,$C6,$FA,$FE,$44
  DEFB $0C,$0D,$0E,$FF

; Room block data 18
  DEFB $FB,$14,$D5,$FE,$42,$F2,$08,$1B
  DEFB $1C,$B8,$01,$F2,$08,$1B,$1C,$B8
  DEFB $01,$F2,$08,$1B,$1C,$B8,$01,$F2
  DEFB $08,$1B,$1C,$FF

; Room block data 4B
  DEFB $FB,$9C,$DA,$FE,$43,$FD,$10,$10
  DEFB $B8,$01,$FB,$14,$D5,$FE,$45,$FD
  DEFB $10,$1A,$B8,$01,$FD,$10,$1A,$B8
  DEFB $01,$FD,$10,$1A,$B8,$01,$FD,$10
  DEFB $1A,$FF

; Room block data 65
  DEFB $FB,$BC,$D6,$FE,$43,$00,$FE,$46
  DEFB $FD,$0D,$01,$FE,$43,$F0,$01,$02
  DEFB $F0,$0A,$09,$BA,$F6,$F0,$0A,$08
  DEFB $FF

; Room block data 2B
  DEFB $FB,$04,$D2,$FE,$46,$07,$FD,$06
  DEFB $01,$F0,$01,$02,$F0,$02,$03,$C1
  DEFB $FE,$F0,$02,$04,$FF

; Room block data 3F
  DEFB $FB,$04,$D2,$FE,$43,$07,$FD,$06
  DEFB $01,$F0,$01,$02,$F0,$02,$0E,$C1
  DEFB $FE,$F0,$02,$0E,$FF

; Room block data 30
  DEFB $FB,$BC,$D7,$FE,$42,$08,$09,$0A
  DEFB $C5,$01,$00,$04,$01,$C5,$01,$07
  DEFB $FE,$45,$0B,$FE,$42,$05,$C5,$01
  DEFB $02,$06,$03,$C5,$01,$00,$04,$01
  DEFB $C5,$01,$02,$06,$03,$FF

; Room block data 31
  DEFB $FB,$BC,$D7,$FE,$42,$12,$13,$C6
  DEFB $01,$10,$11,$C6,$01,$0E,$0F,$C6
  DEFB $01,$FE,$45,$0C,$0D,$FF

; Room block data 32
  DEFB $FB,$74,$D8,$FE,$42,$06,$FE,$56
  DEFB $00,$01,$02,$FE,$42,$08,$C3,$01
  DEFB $07,$FE,$56,$03,$04,$05,$FE,$42
  DEFB $09,$FF

; Room block data 73
  DEFB $FB,$E4,$D9,$FE,$42,$0B,$0B,$0B
  DEFB $C5,$01,$0B,$F1,$0B,$C5,$01,$0B
  DEFB $0B,$0B,$C6,$FF,$FE,$56,$FB,$74
  DEFB $D8,$0A,$FF

; Room block data 33
  DEFB $FB,$9C,$D4,$FE,$47,$F0,$01,$0B
  DEFB $F0,$0C,$04,$F0,$01,$03,$C6,$F3
  DEFB $FB,$FC,$D5,$FE,$46,$00,$01,$01
  DEFB $01,$02,$C3,$04,$03,$04,$04,$04
  DEFB $05,$C3,$FD,$F0,$03,$07,$CC,$FD
  DEFB $F0,$03,$08,$FB,$74,$D8,$FE,$7A
  DEFB $C5,$FD,$0C,$0D,$0E,$C5,$01,$0F
  DEFB $10,$11,$C5,$01,$12,$13,$14,$FF

; Room block data 34
  DEFB $FB,$BC,$D7,$FE,$43,$14,$15,$C6
  DEFB $01,$10,$11,$C6,$01,$0E,$0F,$FF

; Room block data 35
  DEFB $FB,$1C,$D9,$FE,$45,$00,$01,$02
  DEFB $C5,$01,$03,$04,$05,$C5,$01,$06
  DEFB $07,$08,$FF

; Room block data 36
  DEFB $FB,$DC,$DF,$FE,$4F,$FD,$0F,$20
  DEFB $B9,$02,$FD,$0F,$20,$B9,$FF,$FD
  DEFB $0F,$20,$BC,$00,$FB,$1C,$D9,$0F
  DEFB $10,$11,$12,$17,$18,$13,$14,$15
  DEFB $16,$FF

; Room block data 37
  DEFB $FB,$DC,$DF,$FE,$57,$FD,$10,$20
  DEFB $BE,$00,$FB,$1C,$D9,$09,$0A,$0B
  DEFB $0C,$0D,$0E,$FF

; Room block data 3D
  DEFB $FB,$9C,$DA,$FE,$45,$F0,$05,$15
  DEFB $C9,$FB,$F0,$05,$16,$C9,$FB,$F0
  DEFB $05,$17,$C9,$FB,$F0,$05,$15,$C9
  DEFB $FB,$F0,$05,$16,$C9,$FB,$F0,$05
  DEFB $17,$C9,$FB,$FF

; Room block data 42
  DEFB $FB,$E4,$D9,$FE,$45,$0D,$0E,$0F
  DEFB $C5,$01,$FE,$44,$F0,$01,$07,$FE
  DEFB $47,$04,$0A,$05,$C5,$01,$02,$F1
  DEFB $03,$C5,$01,$00,$09,$01,$C8,$FE
  DEFB $FE,$45,$F0,$01,$06,$F0,$01,$07
  DEFB $08,$C5,$FF,$FB,$DC,$DF,$50,$FF

; Room block data 41
  DEFB $FB,$9C,$DA,$FE,$44,$F0,$01,$18
  DEFB $14,$FF

; Room block data 3E
  DEFB $FB,$64,$DB,$FE,$46,$00,$01,$02
  DEFB $C5,$01,$03,$04,$05,$C5,$01,$06
  DEFB $07,$08,$FF

; Room block data 40
  DEFB $FB,$DC,$DF,$FE,$46,$20,$20,$FF

; Room block data 4C
  DEFB $FB,$9C,$DA,$FE,$47,$0A,$0B,$0B
  DEFB $0C,$C4,$01,$0D,$F1,$F1,$0E,$C4
  DEFB $01,$0D,$F1,$F1,$0E,$C4,$01,$0A
  DEFB $0B,$0B,$0C,$C4,$01,$0D,$F1,$F1
  DEFB $0E,$C4,$01,$0F,$F1,$F1,$11,$FF

; Room block data 38
  DEFB $FB,$9C,$DA,$FE,$44,$00,$01,$02
  DEFB $C5,$01,$03,$04,$05,$C5,$01,$03
  DEFB $06,$05,$C5,$01,$07,$08,$09,$FF

; Room block data 39
Room_Block_39:
  DEFB $FB,$9C,$DA,$FE,$44,$12,$0A,$0B
  DEFB $0C,$C4,$01,$13,$0D,$F1,$0E,$C5
  DEFB $01,$0D,$F1,$0E,$C5,$01,$0F,$10
  DEFB $11,$FB,$DC,$DF,$C6,$FE,$F0,$02
  DEFB $20,$FF

; Room block data 67
  DEFB $FB,$DC,$DF,$FE,$72,$FD,$05,$20
  DEFB $C3,$01,$FD,$05,$20,$C3,$01,$FD
  DEFB $05,$20,$C4,$FF,$FB,$DC,$DE,$0B
  DEFB $0C,$0C,$FF

; Room block data 74
  DEFB $FB,$CC,$DF,$FE,$46,$FD,$06,$01
  DEFB $C1,$01,$03,$C8,$01,$FD,$06,$00
  DEFB $C8,$FF,$02,$FF

; Room block data 75
  DEFB $FB,$E4,$D9,$FE,$43,$04,$FD,$1E
  DEFB $0A,$05,$A8,$01,$02,$FD,$1E,$0B
  DEFB $03,$A8,$01,$00,$FD,$1E,$09,$01
  DEFB $A8,$01,$FE,$06,$F2,$10,$16,$15
  DEFB $A8,$01,$F2,$10,$15,$16,$A8,$01
  DEFB $F2,$10,$16,$15,$A8,$01,$F2,$10
  DEFB $15,$16,$A8,$01,$FE,$42,$FB,$6C
  DEFB $E0,$FD,$20,$0C,$C3,$00,$FE,$46
  DEFB $F0,$01,$02,$F0,$04,$04,$BC,$FB
  DEFB $F0,$01,$02,$F0,$04,$04,$BC,$FB
  DEFB $F0,$01,$02,$F0,$04,$04,$FE,$5F
  DEFB $CA,$F5,$FB,$DC,$DF,$4D,$49,$4B
  DEFB $52,$4F,$2D,$47,$45,$4E,$CC,$00
  DEFB $4D,$49,$4B,$52,$4F,$2D,$47,$45
  DEFB $4E,$FF

; Table for room data
Room_Data_Table:
  DEFW Room_Data_00
  DEFW Room_Data_01
  DEFW Room_Data_02
  DEFW Room_Data_03
  DEFW Room_Data_04
  DEFW Room_Data_05
  DEFW Room_Data_06
  DEFW Room_Data_07
  DEFW Room_Data_08
  DEFW Room_Data_09
  DEFW Room_Data_0A
  DEFW Room_Data_0B
  DEFW Room_Data_0C
  DEFW Room_Data_0D
  DEFW Room_Data_0E
  DEFW Room_Data_0F
  DEFW Room_Data_10
  DEFW Room_Data_11
  DEFW Room_Data_12
  DEFW Room_Data_13
  DEFW Room_Data_14
  DEFW Room_Data_15
  DEFW Room_Data_16
  DEFW Room_Data_17
  DEFW Room_Data_18
  DEFW Room_Data_19
  DEFW Room_Data_1A
  DEFW Room_Data_1B
  DEFW Room_Data_1C
  DEFW Room_Data_1D
  DEFW Room_Data_1E
  DEFW Room_Data_1F
  DEFW Room_Data_20

; Room data : The Town Square
Room_Data_00:
  DEFB $80,$07,$86,$B0,$84,$4B,$85,$AF
  DEFB $7F,$00

; Room data : Stamp Street
Room_Data_01:
  DEFB $80,$07,$08,$E7,$30,$DE,$8A,$87
  DEFB $8A,$9F,$0C,$03,$0D,$01,$8F,$03
  DEFB $0C,$05,$0C,$07,$14,$37,$A4,$2E
  DEFB $B2,$84,$27,$5E,$34,$0F,$BB,$28
  DEFB $BB,$48,$7F,$00

; Room data : The Post Office
Room_Data_02:
  DEFB $A0,$07,$49,$00,$EA,$04,$EB,$0E
  DEFB $6B,$0F,$C7,$20,$C7,$D8,$C6,$60
  DEFB $7F,$00

; Room data : Market Street
Room_Data_03:
  DEFB $80,$07,$0D,$20,$8F,$22,$0C,$23
  DEFB $0C,$25,$0C,$27,$2A,$A0,$29,$A3
  DEFB $29,$A5,$29,$A7,$28,$7F,$A4,$76
  DEFB $25,$2D,$26,$45,$25,$9D,$26,$B5
  DEFB $08,$E7,$08,$07,$8F,$62,$5B,$24
  DEFB $DC,$35,$5C,$AF,$DD,$3E,$DD,$A5
  DEFB $7F,$00

; Room data : The Super Market
Room_Data_04:
  DEFB $A0,$07,$48,$0F,$E8,$57,$E8,$55
  DEFB $49,$00,$C7,$28,$C7,$80,$C7,$D0
  DEFB $7F,$00

; Room data : The Park
Room_Data_05:
  DEFB $80,$07,$83,$2F,$86,$20,$12,$6D
  DEFB $86,$C8,$85,$1F,$7F,$00

; Room data : Wobbly Walk
Room_Data_06:
  DEFB $80,$07,$0D,$80,$8F,$82,$0C,$83
  DEFB $0C,$85,$0C,$87,$11,$1A,$89,$07
  DEFB $08,$4F,$08,$67,$33,$5A,$A4,$BE
  DEFB $14,$C7,$A7,$96,$A7,$93,$A7,$DB
  DEFB $B7,$85,$7F,$00

; Room data : Rubble Road
Room_Data_07:
  DEFB $80,$07,$18,$85,$18,$87,$4B,$82
  DEFB $8F,$84,$89,$07,$08,$4F,$08,$67
  DEFB $97,$64,$31,$17,$A2,$BE,$14,$C7
  DEFB $0E,$96,$7F,$00

; Room data : Wall Street
Room_Data_08:
  DEFB $80,$07,$D0,$3C,$15,$C5,$15,$C7
  DEFB $66,$67,$66,$A7,$66,$87,$7E,$09
  DEFB $0C,$67,$7E,$09,$0C,$65,$7F,$00

; Room data : Pete Street
Room_Data_09:
  DEFB $80,$07,$4F,$5F,$18,$85,$18,$87
  DEFB $4B,$82,$8F,$84,$A2,$BE,$14,$C7
  DEFB $0E,$96,$0E,$E6,$86,$20,$7F,$00

; Room data : The Work Shed
Room_Data_0A:
  DEFB $80,$07,$A4,$2E,$BF,$5F,$BF,$B7
  DEFB $70,$7F,$E8,$1A,$68,$45,$7F,$00

; Room data : School Lane
Room_Data_0B:
  DEFB $80,$07,$64,$62,$1B,$64,$18,$64
  DEFB $18,$65,$18,$67,$8A,$E7,$A4,$76
  DEFB $14,$7F,$0E,$9E,$0E,$BE,$08,$07
  DEFB $08,$27,$08,$47,$4D,$29,$7F,$00

; Room data : The School
Room_Data_0C:
  DEFB $A0,$07,$A1,$37,$A1,$5F,$A1,$87
  DEFB $A1,$AF,$A1,$D7,$49,$00,$C6,$60
  DEFB $C7,$28,$C7,$D8,$0E,$3C,$0E,$7C
  DEFB $0E,$BC,$F2,$37,$71,$03,$7F,$00

; Room data : Baker Street
Room_Data_0D:
  DEFB $80,$07,$08,$07,$89,$DF,$0D,$20
  DEFB $08,$9F,$2C,$23,$2C,$25,$2C,$27
  DEFB $A4,$76,$28,$7F,$11,$0A,$A5,$2D
  DEFB $A6,$45,$2F,$4E,$97,$EC,$8F,$22
  DEFB $93,$33,$93,$73,$DE,$75,$7F,$00

; Room data : The Bakers
Room_Data_0E:
  DEFB $A0,$07,$48,$07,$48,$47,$48,$87
  DEFB $48,$C7,$C6,$18,$C7,$A0,$C7,$D0
  DEFB $4A,$06,$49,$00,$2F,$35,$2F,$5D
  DEFB $2F,$85,$62,$AE,$62,$D6,$E1,$DE
  DEFB $E1,$AE,$E1,$5E,$7F,$00

; Room data : The Pub
Room_Data_0F:
  DEFB $A0,$07,$D7,$27,$DA,$3E,$DA,$7E
  DEFB $DA,$BE,$D8,$23,$D8,$4B,$D9,$7B
  DEFB $D9,$BB,$D9,$7C,$D9,$BC,$49,$00
  DEFB $C6,$18,$C6,$A0,$7F,$00

; Room data : Motor Way
Room_Data_10:
  DEFB $80,$07,$6C,$9B,$6C,$EB,$2C,$03
  DEFB $2C,$05,$2C,$07,$8D,$00,$0F,$03
  DEFB $27,$0D,$27,$55,$89,$97,$89,$DF
  DEFB $A4,$2E,$14,$37,$3B,$10,$D4,$81
  DEFB $E0,$23,$7F,$00

; Room data : The Laboratory
Room_Data_11:
  DEFB $A0,$07,$AB,$5F,$AB,$B7,$A4,$2E
  DEFB $69,$6B,$49,$00,$C6,$18,$C6,$A0
  DEFB $AD,$13,$2D,$15,$7F,$00

; Room data : The Garage
Room_Data_12:
  DEFB $80,$07,$C2,$16,$C2,$5E,$6C,$03
  DEFB $6C,$E3,$6C,$53,$6C,$9B,$C2,$A6
  DEFB $4E,$D6,$D1,$3E,$D4,$01,$D4,$81
  DEFB $7F,$00

; Room data : Reference Road
Room_Data_13:
  DEFB $80,$07,$8D,$48,$AA,$B8,$1C,$4B
  DEFB $1C,$4D,$1C,$4F,$1C,$7B,$1C,$7D
  DEFB $1C,$7F,$A4,$76,$14,$7F,$08,$0F
  DEFB $11,$22,$30,$06,$1D,$5C,$1D,$7C
  DEFB $1D,$9C,$1D,$BC,$1D,$DC,$9D,$5E
  DEFB $9D,$9E,$9D,$BE,$9D,$DE,$7F,$00

; Room data : The Library
Room_Data_14:
  DEFB $A0,$07,$AB,$27,$AB,$6F,$AB,$B7
  DEFB $2D,$11,$2D,$13,$2D,$15,$2D,$61
  DEFB $2D,$63,$2D,$65,$2D,$B1,$2D,$B3
  DEFB $2D,$B5,$49,$00,$7F,$00

; Room data : Penny Lane
Room_Data_15:
  DEFB $80,$07,$16,$03,$16,$05,$16,$07
  DEFB $B6,$04,$90,$7A,$0D,$80,$0C,$83
  DEFB $0C,$85,$0C,$87,$8F,$03,$8F,$82
  DEFB $A4,$2E,$14,$37,$14,$C7,$A2,$BE
  DEFB $35,$0F,$93,$96,$8E,$E6,$A7,$56
  DEFB $0D,$01,$93,$93,$93,$DB,$3A,$80
  DEFB $BB,$20,$7F,$00

; Room data : The Bank
Room_Data_16:
  DEFB $80,$07,$BC,$44,$3D,$4D,$3D,$7D
  DEFB $3D,$AD,$40,$5F,$40,$8F,$40,$BF
  DEFB $C1,$26,$C1,$36,$BE,$12,$BF,$17
  DEFB $BF,$4F,$BF,$87,$BF,$BF,$38,$EF
  DEFB $49,$00,$7F,$00

; Room data : Wally's House
Room_Data_17:
  DEFB $A0,$07,$C4,$07,$AB,$1F,$C4,$67
  DEFB $C3,$97,$C7,$38,$C7,$78,$C7,$B8
  DEFB $49,$00,$7F,$00

; Room data : Meat Street
Room_Data_18:
  DEFB $80,$07,$0D,$20,$8F,$22,$1C,$25
  DEFB $8A,$9F,$1C,$27,$07,$DF,$08,$07
  DEFB $1C,$23,$28,$37,$A2,$2E,$A5,$55
  DEFB $A6,$75,$2E,$66,$2E,$86,$97,$EC
  DEFB $5F,$34,$7F,$00

; Room data : The Butcher's
Room_Data_19:
  DEFB $A0,$07,$48,$2F,$48,$6F,$48,$AF
  DEFB $C5,$02,$C6,$18,$C6,$A0,$2E,$23
  DEFB $2E,$43,$2E,$63,$2E,$83,$2E,$A3
  DEFB $2E,$C3,$2E,$E3,$49,$00,$4C,$0E
  DEFB $7F,$00

; Room data : Trunk Road
Room_Data_1A:
  DEFB $80,$07,$63,$05,$07,$DF,$8B,$06
  DEFB $A3,$46,$A3,$66,$64,$03,$9E,$2E
  DEFB $A3,$86,$A3,$9E,$11,$AA,$31,$E7
  DEFB $67,$85,$7F,$00

; Room data : The Zoo
Room_Data_1B:
  DEFB $80,$07,$64,$83,$63,$85,$63,$87
  DEFB $0E,$96,$0E,$DE,$E5,$03,$7F,$00

; Room data : Rail Road
Room_Data_1C:
  DEFB $80,$07,$A3,$06,$A3,$26,$0C,$47
  DEFB $0C,$45,$0C,$43,$9B,$42,$0D,$40
  DEFB $08,$C7,$08,$E7,$9E,$76,$1D,$56
  DEFB $1D,$A6,$73,$2C,$7F,$00

; Room data : The Station
Room_Data_1D:
  DEFB $80,$07,$0D,$00,$0D,$80,$9B,$02
  DEFB $9B,$82,$1F,$13,$1F,$7B,$1F,$E3
  DEFB $85,$9F,$85,$37,$73,$44,$73,$AC
  DEFB $7F,$00

; Room data : The Docks
Room_Data_1E:
  DEFB $A0,$07,$83,$77,$D5,$0C,$07,$9F
  DEFB $08,$C7,$08,$E7,$D6,$C0,$7F,$00

; Room data : The Sewer
Room_Data_1F:
  DEFB $80,$07,$01,$04,$02,$D4,$ED,$31
  DEFB $ED,$82,$ED,$75,$6D,$B1,$ED,$16
  DEFB $6D,$DE,$7F,$00

; Room data : The Cave
Room_Data_20:
  DEFB $80,$07,$52,$00,$52,$18,$52,$58
  DEFB $52,$88,$52,$98,$52,$C8,$53,$30
  DEFB $53,$48,$53,$70,$53,$B0,$53,$D8
  DEFB $53,$F0,$6D,$2C,$ED,$8C,$6D,$BD
  DEFB $EF,$17,$6E,$26,$6E,$76,$6E,$D6
  DEFB $7F,$00,$00

; Room block graphics
  DEFB $00,$FF,$FE,$01,$03,$01,$00,$00
  DEFB $00,$FF,$7F,$80,$C0,$80,$00,$00
  DEFB $00,$FF,$FF,$00,$00,$00,$00,$00
  DEFB $D8,$D8,$DC,$CC,$CC,$CE,$C6,$C6
  DEFB $18,$1B,$1B,$DB,$DB,$DB,$DB,$DB
  DEFB $30,$30,$36,$36,$66,$66,$66,$66
  DEFB $38,$00,$38,$FE,$BE,$BE,$5C,$5C
  DEFB $5C,$BE,$BE,$BE,$BE,$BE,$BE,$5C
  DEFB $00,$BE,$40,$BE,$BE,$BE,$40,$BE

; Room block graphics
  DEFB $CE,$FE,$00,$2F,$2F,$37,$30,$30
  DEFB $FF,$FF,$00,$FF,$FF,$FF,$00,$00
  DEFB $FF,$FF,$00,$F4,$F4,$EC,$0C,$0C
  DEFB $0C,$0C,$0C,$0C,$0C,$0C,$0C,$0C
  DEFB $30,$30,$30,$30,$30,$30,$30,$30
  DEFB $ED,$ED,$0C,$6C,$6C,$6C,$6C,$6C
  DEFB $6C,$6C,$6C,$6C,$6C,$6C,$6C,$6C
  DEFB $FF,$FF,$00,$2F,$2F,$37,$30,$30
  DEFB $81,$00,$FF,$FF,$00,$FF,$FF,$00
  DEFB $7E,$FF,$7F,$77,$EB,$77,$7F,$FF
  DEFB $31,$00,$1F,$7F,$00,$FF,$FF,$00
  DEFB $8C,$00,$F8,$FE,$00,$FF,$FF,$00
  DEFB $1E,$3F,$7F,$7B,$75,$7B,$7F,$7F
  DEFB $78,$FC,$7E,$6E,$D6,$6E,$7E,$FE
  DEFB $3C,$3C,$3C,$3C,$3C,$3C,$3C,$3C
  DEFB $00,$FF,$BF,$C0,$DB,$DA,$DB,$00
  DEFB $00,$FF,$FF,$00,$FF,$00,$FF,$00
  DEFB $00,$FF,$FD,$03,$DB,$5B,$DB,$00
  DEFB $01,$07,$1D,$33,$6F,$7F,$00,$00
  DEFB $C3,$7F,$FF,$FF,$FF,$FF,$00,$3C
  DEFB $80,$E0,$F8,$FC,$FE,$FE,$00,$00
  DEFB $18,$18,$18,$18,$18,$18,$2C,$2C
  DEFB $C0,$BF,$BF,$C0,$DF,$DF,$D0,$D0
  DEFB $00,$FF,$FF,$00,$FF,$FF,$00,$00
  DEFB $03,$FD,$FD,$03,$FB,$FB,$0B,$0B
  DEFB $C2,$C4,$C8,$D0,$C0,$C0,$C4,$C8
  DEFB $03,$0B,$13,$23,$43,$03,$0B,$13
  DEFB $7F,$CC,$BF,$3F,$C0,$C0,$C0,$C0
  DEFB $FF,$99,$FF,$FF,$00,$00,$00,$00
  DEFB $FE,$9B,$FF,$FC,$03,$03,$03,$03
  DEFB $00,$00,$00,$00,$18,$E7,$FF,$18
  DEFB $00,$00,$00,$00,$00,$FF,$FF,$00
  DEFB $BF,$BF,$BF,$BF,$BF,$BF,$80,$FF
  DEFB $FF,$E7,$99,$99,$C3,$FF,$00,$FF
  DEFB $FD,$FD,$FD,$FD,$FD,$FD,$01,$FF
  DEFB $FF,$FF,$CC,$D5,$CC,$D5,$C5,$FF
  DEFB $FF,$FF,$C6,$5D,$C4,$5D,$45,$FF
  DEFB $FF,$FF,$CF,$57,$57,$57,$4F,$FF

; Room block graphics
  DEFB $08,$08,$18,$1C,$3C,$BB,$BB,$3C
  DEFB $34,$2C,$2C,$BB,$BB,$3C,$34,$2C
  DEFB $3C,$34,$34,$2C,$2C,$34,$34,$3C
  DEFB $7D,$81,$81,$81,$81,$81,$81,$7D
  DEFB $81,$80,$C2,$C2,$80,$81,$81,$7D

; Room block graphics
  DEFB $20,$64,$44,$16,$B2,$D0,$46,$0C
  DEFB $00,$20,$64,$46,$02,$10,$30,$00
  DEFB $81,$C3,$4A,$18,$10,$C6,$63,$00
  DEFB $00,$00,$03,$06,$00,$09,$1B,$12
  DEFB $00,$00,$60,$30,$00,$88,$CC,$44
  DEFB $60,$64,$CC,$08,$20,$60,$40,$00
  DEFB $02,$33,$19,$00,$00,$0C,$06,$00
  DEFB $DD,$CD,$6E,$6E,$77,$77,$6F,$EF
  DEFB $EE,$EE,$FE,$B7,$B7,$77,$7B,$7B
  DEFB $F0,$3C,$0E,$07,$03,$03,$01,$01
  DEFB $18,$38,$74,$F6,$F7,$EF,$ED,$DE
  DEFB $10,$10,$30,$78,$BD,$BD,$DB,$DB
  DEFB $03,$06,$0E,$3C,$F8,$E0,$C0,$80
  DEFB $01,$01,$03,$03,$07,$0E,$3C,$F0
  DEFB $DE,$ED,$EF,$F7,$F6,$74,$38,$18
  DEFB $DB,$DB,$BD,$BD,$78,$30,$10,$10
  DEFB $80,$C0,$E0,$F8,$3C,$0E,$06,$03

; Room block graphics
  DEFB $6F,$EF,$E0,$E0,$E0,$E0,$E0,$80
  DEFB $FF,$E7,$18,$18,$18,$18,$18,$18
  DEFB $F6,$F7,$07,$07,$07,$07,$07,$01
  DEFB $70,$F8,$98,$60,$60,$6F,$9F,$FF
  DEFB $18,$18,$18,$18,$00,$FF,$FF,$FF
  DEFB $0E,$1F,$19,$06,$06,$F6,$F9,$FF
  DEFB $38,$38,$38,$70,$70,$70,$E0,$E0
  DEFB $1C,$1C,$1C,$0E,$0E,$0E,$07,$07

; Room block graphics
  DEFB $00,$7F,$80,$FF,$7F,$00,$0E,$03
  DEFB $00,$FF,$00,$FF,$FF,$00,$AA,$55
  DEFB $00,$FE,$01,$FF,$FE,$00,$F0,$C0
  DEFB $EA,$35,$1A,$0D,$0E,$07,$06,$07
  DEFB $AF,$5C,$B8,$50,$B0,$60,$A0,$60
  DEFB $AA,$55,$AA,$55,$AA,$55,$AA,$55
  DEFB $00,$03,$0F,$09,$06,$03,$0F,$07
  DEFB $00,$80,$C0,$E0,$E0,$60,$C0,$A0
  DEFB $80,$C1,$A3,$93,$8A,$85,$43,$4C
  DEFB $78,$7C,$AC,$9C,$78,$E0,$98,$78
  DEFB $32,$C2,$22,$25,$25,$15,$14,$0A
  DEFB $F8,$F0,$F0,$E0,$C0,$E3,$FA,$F9
  DEFB $03,$01,$01,$01,$00,$00,$03,$07
  DEFB $73,$83,$C1,$C0,$E0,$00,$60,$A0
  DEFB $BF,$5E,$2C,$2C,$2C,$2C,$5E,$5E

; Room block graphics
  DEFB $2C,$2C,$2C,$AB,$AB,$2C,$2C,$2C
  DEFB $00,$60,$90,$B7,$B7,$90,$60,$00
  DEFB $00,$06,$09,$EB,$EB,$09,$06,$00
  DEFB $2C,$2C,$2C,$5E,$5E,$BF,$FF,$00
  DEFB $2C,$2C,$2C,$2C,$2C,$2C,$2C,$2C
  DEFB $0B,$05,$05,$05,$05,$04,$03,$03
  DEFB $E7,$FF,$D3,$D3,$FF,$00,$FF,$C3
  DEFB $D0,$A0,$A0,$A0,$A0,$20,$C0,$C0
  DEFB $00,$03,$0E,$19,$37,$2B,$0B,$0B
  DEFB $FF,$81,$7E,$FF,$FF,$E7,$C3,$D3
  DEFB $00,$C0,$70,$98,$EC,$D4,$D0,$D0
  DEFB $3C,$5E,$5E,$2C,$18,$2C,$5E,$00
  DEFB $1F,$71,$F7,$FB,$FB,$FD,$71,$1F
  DEFB $FF,$11,$B5,$B5,$B5,$B5,$B1,$FF
  DEFB $F8,$1E,$5F,$5F,$1F,$7F,$7E,$F8

; Room block graphics
  DEFB $00,$DF,$DF,$DF,$00,$FB,$FB,$FB
  DEFB $FF,$FF,$FE,$00,$7F,$7F,$3F,$80
  DEFB $7F,$7F,$3F,$80,$FF,$FF,$FE,$00
  DEFB $00,$00,$70,$97,$D7,$D7,$F7,$00
  DEFB $3C,$18,$00,$FF,$C3,$DB,$18,$00
  DEFB $00,$00,$00,$FF,$FF,$FF,$00,$00
  DEFB $00,$00,$FF,$7F,$7F,$7F,$D2,$2C
  DEFB $16,$16,$16,$16,$16,$16,$16,$16
  DEFB $16,$96,$C9,$BF,$BF,$C9,$96,$16
  DEFB $00,$55,$2A,$55,$2A,$55,$2A,$7F
  DEFB $00,$55,$AB,$55,$AB,$55,$AB,$FF
  DEFB $00,$33,$67,$33,$00,$67,$CF,$CF
  DEFB $00,$FC,$FE,$FC,$00,$FE,$FF,$FF
  DEFB $67,$CF,$CF,$67,$00,$67,$67,$00
  DEFB $FE,$FF,$FF,$FE,$00,$FE,$FE,$00
  DEFB $33,$33,$33,$33,$33,$33,$33,$33
  DEFB $7C,$7C,$7C,$7C,$7C,$7C,$7C,$7C
  DEFB $EF,$9C,$38,$70,$66,$6E,$3C,$00
  DEFB $FF,$80,$90,$A2,$84,$88,$92,$A4
  DEFB $FF,$01,$21,$41,$05,$09,$11,$21
  DEFB $80,$88,$90,$A1,$82,$84,$88,$80
  DEFB $09,$11,$21,$41,$09,$11,$21,$01
  DEFB $80,$80,$80,$B8,$B8,$B8,$B8,$B8
  DEFB $80,$88,$90,$A2,$84,$88,$80,$FF
  DEFB $01,$11,$21,$41,$05,$09,$01,$FF

; Room block graphics
  DEFB $3E,$7F,$7F,$38,$C7,$EF,$EF,$C0
  DEFB $3C,$FF,$3F,$BF,$3F,$BF,$7F,$C3
  DEFB $F7,$F7,$D7,$F7,$EF,$EF,$EF,$EF
  DEFB $EF,$EF,$EF,$EF,$EF,$F7,$B7,$EF

; Room block graphics
  DEFB $00,$7F,$60,$5F,$50,$50,$50,$50
  DEFB $00,$FF,$00,$FF,$00,$00,$00,$00
  DEFB $00,$FE,$06,$FA,$0A,$0A,$0A,$0A
  DEFB $50,$50,$50,$50,$5F,$60,$7F,$00
  DEFB $00,$00,$00,$00,$FF,$00,$FF,$00
  DEFB $0A,$0A,$0A,$0A,$FA,$06,$FE,$00
  DEFB $02,$24,$48,$10,$22,$44,$88,$10
  DEFB $50,$50,$50,$50,$50,$50,$50,$50
  DEFB $0A,$0A,$0A,$0A,$0A,$0A,$0A,$0A
  DEFB $FF,$81,$BD,$AD,$A5,$BD,$81,$FF
  DEFB $FF,$81,$FD,$CD,$A5,$A5,$CD,$FF
  DEFB $00,$79,$67,$4F,$1C,$38,$38,$70
  DEFB $3C,$FF,$FF,$00,$00,$00,$00,$00
  DEFB $00,$8F,$E7,$F3,$38,$1C,$1C,$0E
  DEFB $70,$00,$70,$70,$70,$70,$70,$70
  DEFB $0E,$00,$0E,$0E,$0E,$0E,$0E,$0E
  DEFB $50,$50,$50,$00,$7F,$FF,$FF,$00
  DEFB $00,$00,$00,$00,$FF,$FF,$FF,$00
  DEFB $0A,$0A,$0A,$00,$FE,$FF,$FF,$00
  DEFB $FF,$7F,$80,$BF,$CF,$D0,$D8,$D8
  DEFB $FF,$FF,$00,$FF,$FF,$00,$00,$00
  DEFB $FF,$FE,$01,$FD,$F3,$0B,$1B,$1B
  DEFB $D8,$D8,$D8,$D8,$D8,$D8,$D8,$D8
  DEFB $1B,$1B,$1B,$1B,$1B,$1B,$1B,$1B

; Room block graphics
  DEFB $E0,$DF,$DF,$E0,$E0,$E0,$E0,$E0
  DEFB $00,$FF,$FF,$00,$00,$00,$00,$00
  DEFB $07,$FB,$FB,$07,$07,$07,$07,$07
  DEFB $3C,$BD,$A5,$18,$3C,$18,$24,$24
  DEFB $18,$18,$18,$18,$24,$24,$24,$24
  DEFB $18,$18,$18,$18,$67,$7F,$67,$18
  DEFB $00,$00,$00,$00,$00,$FF,$FF,$FF
  DEFB $18,$18,$18,$18,$E6,$FE,$E6,$18
  DEFB $E0,$E0,$E0,$E0,$E0,$E0,$E0,$E0
  DEFB $07,$07,$07,$07,$07,$07,$07,$07
  DEFB $38,$01,$7F,$81,$BE,$BF,$BF,$BF
  DEFB $C0,$F0,$9C,$87,$61,$99,$E7,$FB
  DEFB $A2,$AB,$AB,$A2,$BF,$BF,$80,$7F
  DEFB $2D,$6D,$6D,$25,$FD,$FD,$01,$FE

; Room block graphics
  DEFB $18,$18,$18,$0C,$0C,$06,$06,$46
  DEFB $54,$3A,$67,$6F,$76,$3C,$18,$18
  DEFB $10,$28,$34,$3C,$3E,$7E,$7E,$FF
  DEFB $00,$01,$01,$03,$03,$07,$07,$03
  DEFB $E3,$97,$4F,$BF,$FF,$FC,$E3,$DF
  DEFB $80,$C0,$C0,$A0,$60,$E0,$C0,$00
  DEFB $AA,$DB,$00,$7F,$7F,$7F,$80,$FF
  DEFB $AA,$6D,$00,$FF,$FF,$FF,$00,$FF
  DEFB $55,$B7,$00,$FE,$FE,$FE,$01,$FF
  DEFB $00,$0F,$00,$06,$06,$00,$0F,$00
  DEFB $00,$F0,$00,$60,$60,$00,$F0,$00
  DEFB $1A,$0B,$00,$0F,$0F,$0F,$10,$1F
  DEFB $A8,$50,$00,$F0,$F0,$F0,$08,$F8
  DEFB $00,$C1,$77,$7A,$38,$3C,$18,$00
  DEFB $00,$7F,$03,$01,$01,$01,$07,$3F
  DEFB $00,$FE,$C0,$80,$80,$80,$E0,$FC
  DEFB $00,$00,$7B,$CD,$B5,$BB,$C0,$7E
  DEFB $00,$00,$F8,$FC,$FC,$F8,$00,$FF

; Room block graphics
  DEFB $EF,$EF,$F7,$F8,$F0,$F0,$F0,$F0
  DEFB $F7,$F7,$EF,$1F,$0F,$0F,$0F,$0F
  DEFB $F0,$F0,$F0,$F0,$F8,$F7,$EF,$EF
  DEFB $0F,$0F,$0F,$0F,$1F,$EF,$F7,$F7
  DEFB $FF,$FF,$FF,$00,$00,$00,$00,$00
  DEFB $0F,$0F,$0F,$0F,$0F,$0F,$0F,$0F
  DEFB $00,$00,$00,$00,$00,$FF,$FF,$FF
  DEFB $F0,$F0,$F0,$F0,$F0,$F0,$F0,$F0
  DEFB $00,$FF,$FF,$81,$D5,$D0,$FF,$00
  DEFB $00,$FF,$FF,$04,$40,$14,$FF,$00
  DEFB $00,$FF,$FF,$11,$83,$11,$FF,$00
  DEFB $62,$F0,$67,$67,$67,$67,$F0,$62
  DEFB $3F,$6C,$48,$48,$48,$48,$48,$7F
  DEFB $FC,$06,$02,$02,$02,$02,$02,$FE
  DEFB $28,$2B,$29,$2B,$28,$2F,$20,$3F
  DEFB $34,$54,$34,$54,$54,$F4,$04,$FC
  DEFB $3F,$20,$2F,$2F,$2F,$2F,$2F,$2F
  DEFB $FC,$04,$F4,$F4,$F4,$D4,$D4,$F4
  DEFB $07,$3F,$FF,$7F,$00,$3F,$30,$30
  DEFB $E0,$FC,$FF,$FE,$00,$FC,$0C,$0C
  DEFB $3F,$3F,$3F,$30,$30,$30,$3F,$3F
  DEFB $FC,$FC,$FC,$0C,$0C,$0C,$FC,$FC
  DEFB $00,$00,$00,$00,$00,$00,$00,$00

; Room block graphics
  DEFB $00,$0E,$09,$09,$0E,$08,$08,$00
  DEFB $00,$00,$31,$4A,$49,$48,$33,$00
  DEFB $00,$20,$B0,$20,$20,$A0,$18,$00
  DEFB $00,$18,$25,$25,$25,$25,$19,$00
  DEFB $00,$DA,$20,$B2,$22,$22,$22,$00
  DEFB $00,$00,$66,$89,$8E,$88,$66,$00
  DEFB $03,$EF,$DF,$BF,$BF,$7F,$7F,$7F
  DEFB $7F,$7F,$7F,$BF,$BF,$DF,$EF,$03
  DEFB $C0,$F0,$F8,$FC,$FC,$FE,$FE,$FE
  DEFB $FE,$FE,$FE,$FC,$FC,$F8,$F0,$C0
  DEFB $30,$18,$FF,$18,$30,$FF,$30,$18
  DEFB $00,$4A,$52,$42,$7E,$42,$4A,$52
  DEFB $00,$00,$00,$0C,$1F,$1F,$3B,$3F
  DEFB $00,$00,$00,$00,$80,$C0,$F0,$F8
  DEFB $00,$00,$30,$70,$78,$2C,$06,$06
  DEFB $7F,$7F,$3F,$1F,$07,$07,$03,$03
  DEFB $F8,$FC,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $06,$1E,$FC,$FC,$FC,$F8,$F8,$F8
  DEFB $01,$03,$03,$06,$06,$1C,$00,$00
  DEFB $C7,$80,$80,$00,$00,$00,$00,$00
  DEFB $F8,$7C,$3C,$18,$30,$60,$C0,$00

; Room block graphics
  DEFB $00,$7F,$62,$6E,$6E,$6E,$62,$7F
  DEFB $00,$FF,$10,$D7,$10,$DE,$D0,$FF
  DEFB $00,$FE,$B6,$B6,$86,$B6,$B6,$FE
  DEFB $60,$60,$6F,$68,$6A,$68,$69,$6A
  DEFB $00,$01,$F9,$08,$49,$89,$08,$29
  DEFB $06,$56,$56,$06,$56,$56,$06,$56
  DEFB $68,$6F,$60,$60,$7F,$7F,$7F,$00
  DEFB $09,$F8,$01,$00,$FF,$FF,$FF,$00
  DEFB $56,$06,$F6,$06,$FE,$FE,$FE,$00
  DEFB $00,$F3,$49,$49,$71,$59,$CF,$00
  DEFB $00,$EF,$04,$C4,$04,$24,$EF,$00
  DEFB $00,$0C,$84,$84,$84,$84,$0F,$00
  DEFB $00,$39,$12,$12,$12,$92,$B9,$00

; Room block graphics
  DEFB $00,$C8,$2C,$2A,$29,$28,$C8,$00
  DEFB $00,$80,$80,$80,$80,$80,$80,$00
  DEFB $00,$79,$6D,$6D,$79,$61,$61,$00
  DEFB $00,$9C,$B6,$B0,$B6,$B6,$9E,$00
  DEFB $00,$73,$DB,$C1,$D8,$D8,$78,$00
  DEFB $00,$30,$30,$E0,$C0,$C0,$C0,$00
  DEFB $00,$83,$83,$03,$03,$03,$03,$00
  DEFB $00,$C7,$2D,$CF,$2D,$2D,$CD,$00
  DEFB $00,$33,$BB,$BF,$B7,$B3,$B3,$00
  DEFB $00,$66,$6C,$78,$78,$6C,$66,$00
  DEFB $1B,$0F,$1B,$7F,$6F,$1F,$06,$0C
  DEFB $E1,$F8,$FC,$FF,$FC,$F8,$18,$0C

; Room block graphics
  DEFB $BF,$BF,$BF,$BF,$8F,$EF,$E0,$7F
  DEFB $FD,$FD,$FD,$FD,$F1,$F7,$07,$FE
  DEFB $BF,$BF,$BF,$BF,$BF,$BF,$BF,$BF
  DEFB $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
  DEFB $7F,$E0,$EF,$8F,$BF,$BF,$BF,$BF
  DEFB $FE,$07,$F7,$F1,$FD,$FD,$FD,$FD
  DEFB $40,$60,$30,$18,$1C,$3C,$2C,$1C
  DEFB $0C,$00,$0C,$0C,$0C,$0C,$0C,$0C
  DEFB $8C,$8C,$CC,$CC,$6C,$74,$3C,$18
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$00,$FF
  DEFB $FF,$00,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $C0,$C0,$C0,$C0,$C0,$C0,$C0,$00
  DEFB $7F,$BF,$C0,$D9,$D1,$C0,$BF,$7F
  DEFB $FF,$FF,$00,$19,$D9,$00,$FF,$FF
  DEFB $FE,$FD,$03,$D3,$1B,$03,$FD,$FE
  DEFB $7C,$7E,$66,$7C,$7C,$66,$7E,$7C
  DEFB $7E,$7E,$60,$7E,$7E,$60,$7E,$7E
  DEFB $00,$60,$78,$7E,$7E,$78,$60,$00
  DEFB $7C,$7E,$66,$7E,$7C,$60,$60,$60
  DEFB $18,$18,$10,$08,$18,$18,$10,$08
  DEFB $7E,$BD,$DB,$DB,$E7,$E7,$E7,$E7
  DEFB $00,$FF,$FF,$FF,$FF,$FF,$FF,$FF

; Room block graphics
  DEFB $FF,$C0,$9F,$BF,$1F,$DF,$DF,$1F
  DEFB $FF,$00,$FF,$FF,$66,$81,$99,$24
  DEFB $FF,$03,$F9,$FD,$FD,$FD,$FD,$FD
  DEFB $BF,$BF,$BF,$BF,$BF,$BF,$BF,$BF
  DEFB $24,$99,$81,$66,$FF,$FF,$FF,$FF
  DEFB $FD,$FD,$FD,$FD,$FD,$FD,$FD,$FD
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$FF,$FF
  DEFB $1F,$DF,$DF,$1F,$BF,$9F,$C0,$FF
  DEFB $FF,$FF,$FF,$FF,$FF,$FF,$00,$FF
  DEFB $FD,$FD,$FD,$FD,$FD,$F9,$03,$FF
  DEFB $FF,$3F,$80,$D0,$D0,$D0,$D0,$D0
  DEFB $FF,$FF,$00,$00,$00,$00,$00,$00
  DEFB $FF,$FF,$07,$03,$03,$03,$03,$03
  DEFB $D0,$D0,$D0,$D0,$D0,$D0,$D0,$D0
  DEFB $03,$03,$03,$03,$03,$03,$03,$03
  DEFB $D0,$D0,$D0,$D0,$D0,$80,$3F,$FF
  DEFB $00,$00,$00,$00,$00,$00,$FF,$FF
  DEFB $03,$03,$03,$03,$03,$07,$FF,$FF
  DEFB $00,$00,$00,$00,$02,$12,$16,$16
  DEFB $16,$16,$12,$02,$00,$00,$00,$00
  DEFB $0C,$18,$10,$00,$2C,$5E,$FF,$00
  DEFB $30,$30,$30,$30,$30,$30,$CF,$30
  DEFB $C3,$C3,$C3,$C3,$C3,$C3,$3C,$C3
  DEFB $0C,$0C,$0C,$0C,$0C,$0C,$F3,$0C
  DEFB $00,$00,$00,$03,$03,$06,$06,$0C

; Room block graphics
  DEFB $00,$F3,$EF,$DE,$B8,$B3,$74,$64
  DEFB $7E,$FF,$C3,$3C,$E7,$E7,$7F,$7F
  DEFB $00,$CF,$F7,$7B,$9D,$ED,$EE,$96
  DEFB $6C,$EF,$DF,$D3,$D3,$DF,$EF,$69
  DEFB $3F,$1F,$9F,$E7,$E7,$EF,$E7,$E7
  DEFB $96,$F7,$FB,$CB,$CB,$FB,$F7,$96
  DEFB $69,$77,$B7,$B9,$DE,$EF,$F3,$00
  DEFB $E7,$C3,$E7,$FF,$3C,$C3,$FF,$7E
  DEFB $96,$EE,$ED,$9D,$7B,$F7,$CF,$00

; Room block graphics
  DEFB $00,$01,$03,$06,$0C,$18,$37,$6F
  DEFB $FF,$E7,$18,$36,$63,$C0,$3F,$FF
  DEFB $30,$30,$61,$61,$51,$DB,$CD,$C5
  DEFB $C0,$C0,$80,$80,$80,$00,$00,$00
  DEFB $06,$0C,$0A,$0B,$19,$18,$18,$30
  DEFB $18,$30,$30,$30,$A0,$A0,$60,$C0
  DEFB $01,$01,$01,$03,$03,$03,$06,$06
  DEFB $80,$80,$80,$C0,$C0,$C0,$60,$60
  DEFB $18,$0C,$0C,$0C,$05,$05,$06,$03
  DEFB $60,$30,$50,$D0,$98,$18,$18,$0C
  DEFB $03,$03,$01,$01,$01,$00,$00,$00
  DEFB $0C,$0C,$86,$86,$8A,$DB,$B3,$A3
  DEFB $00,$80,$C0,$60,$30,$18,$EC,$F6
  DEFB $B0,$BC,$CF,$C3,$CC,$BC,$B0,$C0
  DEFB $0D,$3D,$33,$C3,$F3,$3D,$0D,$03

; Room block graphics
  DEFB $AA,$55,$AA,$55,$AA,$55,$AA,$55
  DEFB $FF,$FF,$FF,$FF,$00,$00,$00,$00
  DEFB $FF,$C3,$99,$3C,$66,$66,$3C,$18
  DEFB $FF,$81,$FF,$81,$FF,$81,$FF,$FF
  DEFB $60,$E0,$D0,$28,$14,$0A,$05,$02
  DEFB $00,$00,$00,$00,$00,$18,$30,$60
  DEFB $00,$01,$03,$06,$04,$00,$00,$00
  DEFB $00,$F8,$FC,$00,$C0,$C0,$C0,$00
  DEFB $38,$1F,$0F,$00,$01,$01,$01,$00
  DEFB $00,$00,$40,$E0,$E0,$70,$70,$38
  DEFB $0F,$09,$0F,$09,$0F,$09,$0F,$09
  DEFB $0F,$69,$6F,$09,$0F,$69,$6F,$09
  DEFB $FF,$FF,$F3,$FF,$F3,$FF,$F3,$FF
  DEFB $FF,$C0,$BF,$BF,$BF,$BF,$C0,$FF
  DEFB $FF,$03,$FD,$FD,$FD,$FD,$03,$FF
  DEFB $00,$0F,$79,$E1,$9F,$FE,$FE,$FE
  DEFB $FE,$FE,$FE,$FF,$FF,$7F,$0F,$00
  DEFB $F3,$CE,$9D,$31,$61,$61,$C1,$BE
  DEFB $CF,$73,$B9,$8C,$86,$86,$83,$7D

; Room block graphics
  DEFB $BE,$C1,$61,$61,$31,$9D,$CE,$F3
  DEFB $7D,$83,$86,$86,$8C,$B9,$73,$CF
  DEFB $00,$E0,$F8,$9C,$CE,$66,$73,$7F
  DEFB $7F,$7F,$7E,$FE,$FC,$F8,$E0,$00
  DEFB $00,$07,$07,$07,$07,$07,$07,$00
  DEFB $00,$E0,$E0,$E0,$E0,$E0,$E0,$00

; Room block graphics
  DEFB $38,$00,$FF,$00,$FF,$DF,$8F,$DF
  DEFB $1C,$00,$FF,$00,$FF,$FF,$F1,$FF
  DEFB $E4,$C2,$81,$8F,$9A,$BF,$EA,$FF
  DEFB $07,$03,$01,$F1,$99,$FD,$97,$FF

; Room block graphics
  DEFB $80,$80,$80,$80,$80,$80,$80,$80
  DEFB $C0,$C0,$C0,$C0,$E0,$E0,$E0,$E0
  DEFB $F0,$F0,$F0,$F0,$F0,$F0,$F8,$F8
  DEFB $F8,$F8,$F8,$FC,$FC,$FC,$FC,$FE
  DEFB $1F,$3F,$3F,$3F,$3F,$7F,$7F,$7F
  DEFB $07,$07,$0F,$0F,$0F,$1F,$1F,$1F
  DEFB $03,$03,$03,$03,$03,$03,$07,$07
  DEFB $01,$01,$01,$01,$01,$03,$03,$03
  DEFB $00,$00,$00,$01,$01,$01,$01,$01

; Room block graphics
  DEFB $FF,$00,$FF,$00,$FF,$00,$FF,$00
  DEFB $F7,$0E,$DC,$38,$70,$E0,$C0,$80
  DEFB $FF,$00,$FF,$00,$FF,$C3,$81,$81
  DEFB $00,$00,$00,$03,$7E,$FF,$00,$00
  DEFB $00,$01,$3F,$EA,$55,$FF,$00,$00
  DEFB $18,$FC,$56,$AB,$55,$AA,$D4,$78
  DEFB $FF,$00,$FF,$00,$FF,$E7,$DB,$DB
  DEFB $E7,$FF,$FF,$00,$FF,$FF,$FF,$00
  DEFB $C0,$80,$00,$80,$00,$00,$00,$00
  DEFB $E0,$70,$38,$1C,$0E,$07,$03,$01
  DEFB $FF,$00,$4E,$4E,$4E,$4E,$4E,$4E
  DEFB $81,$81,$81,$81,$81,$81,$81,$00
  DEFB $F8,$07,$DE,$2F,$BC,$78,$71,$50
  DEFB $1F,$E0,$7B,$F4,$3D,$1E,$EE,$0A
  DEFB $EA,$0E,$DE,$2C,$FD,$78,$E7,$00
  DEFB $53,$70,$B9,$34,$DF,$2E,$F3,$00

; Room block graphics
  DEFB $3C,$5E,$52,$5A,$52,$5A,$52,$5A
  DEFB $52,$5A,$52,$5E,$5E,$5E,$2C,$2C
  DEFB $2C,$18,$18,$7E,$2C,$18,$18,$00
  DEFB $7C,$5C,$5C,$5C,$28,$10,$38,$5C
  DEFB $5A,$31,$31,$00,$3F,$55,$FF,$00
  DEFB $D6,$8C,$8C,$00,$FC,$56,$FF,$00
  DEFB $31,$5A,$5A,$5A,$5A,$5A,$31,$31
  DEFB $8C,$D6,$D6,$D6,$D6,$D6,$8C,$8C

; Room block graphics
  DEFB $FB,$FB,$C3,$FB,$FB,$1B,$FB,$FB
  DEFB $F6,$F6,$36,$36,$F6,$F6,$37,$37
  DEFB $1F,$1F,$18,$1F,$1F,$18,$DF,$DF
  DEFB $71,$DB,$DB,$DB,$79,$18,$DB,$71
  DEFB $CB,$6B,$63,$66,$E6,$6C,$6D,$CD
  DEFB $3F,$3F,$33,$33,$33,$33,$3F,$3F
  DEFB $7D,$7D,$61,$7D,$7D,$61,$61,$61
  DEFB $F0,$F0,$80,$F0,$F0,$80,$80,$80
  DEFB $00,$63,$77,$7F,$6B,$63,$63,$00
  DEFB $00,$7C,$61,$61,$79,$61,$7C,$00
  DEFB $00,$F1,$9B,$83,$BB,$9B,$F3,$00
  DEFB $00,$E3,$36,$36,$F3,$30,$37,$00
  DEFB $00,$DE,$0C,$0C,$8C,$CC,$8C,$00
  DEFB $00,$79,$CD,$CD,$CD,$CD,$79,$00
  DEFB $00,$F3,$9B,$9B,$F3,$B3,$9B,$00
  DEFB $00,$E0,$00,$00,$C0,$00,$E0,$00
  DEFB $00,$F1,$4A,$73,$4A,$4A,$F2,$00
  DEFB $00,$92,$54,$D8,$54,$52,$52,$00
  DEFB $00,$F7,$84,$E7,$86,$85,$F4,$00
  DEFB $00,$18,$A0,$18,$04,$24,$98,$00
  DEFB $FC,$30,$30,$30,$30,$30,$36,$36
  DEFB $7C,$66,$66,$7C,$66,$66,$66,$7C
  DEFB $79,$CD,$CD,$CD,$CD,$CD,$CD,$79
  DEFB $9B,$DB,$FB,$BB,$9B,$9B,$9B,$9B
  DEFB $E0,$00,$00,$C0,$00,$00,$00,$E0

; Room block graphics
  DEFB $7C,$66,$66,$7C,$66,$66,$66,$7C
  DEFB $CD,$CC,$CC,$CC,$CC,$CC,$CC,$78
  DEFB $F9,$63,$63,$63,$63,$63,$63,$61
  DEFB $E6,$36,$06,$07,$06,$06,$36,$E6
  DEFB $6F,$6C,$6C,$EF,$6C,$6C,$6C,$6F
  DEFB $BE,$33,$33,$3E,$38,$3C,$36,$B3
  DEFB $33,$33,$36,$7C,$78,$6C,$C6,$C6
  DEFB $3E,$3C,$30,$7D,$79,$61,$FB,$F3
  DEFB $61,$F7,$FF,$DB,$86,$86,$0C,$0C
  DEFB $9E,$BF,$33,$60,$60,$66,$7E,$3C
  DEFB $3C,$7E,$66,$E6,$CC,$CC,$FC,$78
  DEFB $00,$7E,$7E,$1C,$38,$7E,$7E,$00
  DEFB $00,$3C,$7E,$66,$66,$7E,$3C,$00

; Room block graphics
  DEFB $8F,$8F,$8F,$47,$47,$23,$18,$07
  DEFB $FF,$FF,$FF,$FE,$FE,$FC,$F8,$E0
  DEFB $00,$00,$00,$07,$18,$23,$47,$47
  DEFB $2C,$2C,$58,$B8,$70,$EC,$DE,$DE
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $00,$00,$00,$FF,$FF,$00,$00,$00
  DEFB $00,$00,$00,$0F,$1F,$18,$18,$18
  DEFB $00,$00,$00,$F0,$F8,$18,$18,$18
  DEFB $18,$18,$18,$F8,$F0,$00,$00,$00
  DEFB $18,$18,$18,$1F,$0F,$00,$00,$00
  DEFB $30,$58,$D8,$D8,$8D,$8D,$0D,$06
  DEFB $3C,$0E,$01,$0F,$7E,$F0,$80,$70
  DEFB $36,$68,$36,$68,$36,$68,$36,$68

; Room block graphics
  DEFB $0E,$07,$13,$38,$6D,$D9,$B3,$E3
  DEFB $2D,$35,$BD,$01,$FD,$AD,$55,$FD
  DEFB $00,$90,$38,$6C,$36,$9B,$CE,$C4
  DEFB $07,$33,$39,$2D,$34,$2C,$B4,$BD

; Room block graphics
  DEFB $FF,$7E,$00,$00,$00,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$00,$7E

; Room block graphics
;
; When printing a string, this is set to the base address so that ASCII
; characters from 20 upwards point to the correct place in Charset_1.
;
Charset:
  DEFB $00,$80,$80,$80,$80,$80,$80,$00
  DEFB $01,$03,$03,$03,$03,$03,$03,$01

; Room block graphics
  DEFB $00,$FE,$FE,$00,$AA,$FF,$55,$00
  DEFB $00,$00,$77,$EE,$EE,$77,$00,$00
  DEFB $00,$00,$7F,$FB,$FB,$7F,$00,$00
  DEFB $00,$00,$FE,$DF,$DF,$FE,$00,$00
  DEFB $00,$00,$EE,$77,$77,$EE,$00,$00
  DEFB $00,$FE,$FE,$00,$0F,$0F,$00,$00
  DEFB $00,$00,$FE,$3E,$C0,$C0,$00,$00
  DEFB $00,$00,$00,$FF,$55,$AA,$FF,$00
  DEFB $FF,$ED,$6D,$76,$76,$66,$72,$20
  DEFB $00,$FF,$00,$FF,$FF,$FF,$00,$00
  DEFB $7E,$7F,$7F,$7F,$7F,$4F,$B7,$FF
  DEFB $FE,$7E,$9D,$E1,$FC,$F2,$ED,$FF
  DEFB $00,$03,$0B,$1B,$3B,$7B,$FC,$FE
  DEFB $00,$60,$68,$6C,$6E,$6E,$1F,$3F
  DEFB $18,$A4,$BE,$AE,$B6,$BC,$00,$18
  DEFB $00,$44,$44,$66,$66,$99,$FF,$00

; Room block graphics
  DEFB $FF,$AA,$55,$FF,$00,$00,$00,$00
  DEFB $FF,$FF,$FF,$00,$00,$00,$00,$00
  DEFB $FF,$FF,$FF,$00,$3C,$18,$18,$18
  DEFB $FF,$AA,$54,$F8,$00,$00,$00,$00
  DEFB $18,$18,$18,$18,$18,$18,$18,$18
  DEFB $00,$80,$C0,$E0,$70,$38,$1C,$0E
  DEFB $17,$1B,$1D,$18,$18,$18,$18,$18
  DEFB $07,$03,$01,$00,$00,$00,$00,$00
  DEFB $00,$01,$03,$07,$0E,$1C,$38,$70
  DEFB $FF,$55,$2A,$1F,$00,$00,$00,$00
  DEFB $E8,$D8,$B8,$18,$18,$18,$18,$18
  DEFB $E0,$C0,$80,$00,$00,$00,$00,$00
  DEFB $FF,$55,$AA,$FF,$00,$00,$00,$00
  DEFB $6C,$BE,$BE,$BE,$5C,$5C,$38,$10

; Room block graphics (character set)
Charset_1:
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$30,$30,$30,$30,$00,$30,$30
  DEFB $00,$66,$66,$66,$00,$00,$00,$00
  DEFB $00,$68,$68,$FE,$68,$FE,$68,$68
  DEFB $00,$18,$FE,$D8,$FE,$16,$FE,$18
  DEFB $00,$E6,$E6,$0E,$7C,$E0,$CE,$CE
  DEFB $00,$38,$6C,$60,$F0,$60,$60,$7C
  DEFB $00,$18,$18,$18,$30,$00,$00,$00
  DEFB $00,$0C,$18,$30,$30,$30,$18,$0C
  DEFB $00,$30,$18,$0C,$0C,$0C,$18,$30
  DEFB $00,$10,$54,$38,$FE,$38,$54,$10
  DEFB $00,$38,$38,$38,$FE,$38,$38,$38
  DEFB $00,$00,$00,$00,$18,$18,$18,$30
  DEFB $00,$00,$00,$7E,$7E,$00,$00,$00
  DEFB $00,$00,$00,$00,$00,$00,$38,$38
  DEFB $00,$06,$0E,$1C,$38,$70,$E0,$C0
  DEFB $00,$3C,$66,$66,$66,$66,$66,$3C
  DEFB $00,$1C,$3C,$2C,$0C,$0C,$0C,$3E
  DEFB $00,$3C,$66,$06,$0C,$18,$32,$7E
  DEFB $00,$3C,$66,$06,$1C,$06,$66,$3C
  DEFB $00,$0C,$1C,$2C,$4C,$7E,$0C,$0C
  DEFB $00,$7E,$60,$7C,$06,$06,$66,$3C
  DEFB $00,$0C,$18,$30,$7C,$66,$66,$3C
  DEFB $00,$7E,$06,$0C,$18,$30,$30,$30
  DEFB $00,$3C,$66,$66,$3C,$66,$66,$3C
  DEFB $00,$3C,$66,$66,$3E,$0C,$18,$30
  DEFB $00,$00,$30,$30,$00,$38,$38,$00
  DEFB $00,$00,$00,$18,$18,$00,$18,$38
  DEFB $00,$1E,$3E,$60,$C0,$60,$3E,$1E
  DEFB $00,$00,$7C,$7C,$00,$7C,$7C,$00
  DEFB $00,$F0,$F8,$0C,$06,$0C,$F8,$F0
  DEFB $00,$FE,$C2,$C2,$1E,$18,$00,$18
  DEFB $00,$00,$00,$00,$00,$00,$00,$00
  DEFB $00,$3C,$66,$66,$7E,$66,$66,$66
  DEFB $00,$7C,$66,$66,$7C,$66,$66,$7C
  DEFB $00,$3C,$66,$60,$60,$60,$66,$3C
  DEFB $00,$78,$6C,$66,$66,$66,$6C,$78
  DEFB $00,$7E,$60,$60,$78,$60,$60,$7E
  DEFB $00,$7C,$60,$60,$78,$60,$60,$60
  DEFB $00,$3C,$66,$60,$60,$6E,$66,$3C
  DEFB $00,$66,$66,$66,$7E,$66,$66,$66
  DEFB $00,$3C,$18,$18,$18,$18,$18,$3C
  DEFB $00,$3E,$0C,$0C,$0C,$6C,$6C,$38
  DEFB $00,$66,$6C,$78,$70,$78,$6C,$66
  DEFB $00,$60,$60,$60,$60,$60,$60,$7E
  DEFB $00,$66,$7E,$7E,$66,$66,$66,$66
  DEFB $00,$66,$66,$76,$7E,$6E,$66,$66
  DEFB $00,$3C,$66,$66,$66,$66,$66,$3C
  DEFB $00,$7C,$66,$66,$7C,$60,$60,$60
  DEFB $00,$3C,$66,$66,$66,$66,$6C,$36
  DEFB $00,$7C,$66,$66,$7C,$68,$6C,$66
  DEFB $00,$3C,$62,$60,$3C,$06,$46,$3C
  DEFB $00,$7E,$18,$18,$18,$18,$18,$18
  DEFB $00,$66,$66,$66,$66,$66,$66,$3C
  DEFB $00,$66,$66,$66,$66,$66,$3C,$18
  DEFB $00,$66,$66,$66,$66,$7E,$7E,$66
  DEFB $00,$66,$66,$3C,$18,$3C,$66,$66
  DEFB $00,$66,$66,$3C,$18,$18,$18,$18
  DEFB $00,$7E,$06,$0C,$18,$30,$60,$7E
  DEFB $00,$00,$FF,$FF,$FF,$FF,$00,$00
  DEFB $00,$E0,$18,$E6,$F9,$FE,$F8,$E0
  DEFB $00,$07,$1F,$7F,$9F,$67,$18,$07
  DEFB $00,$C0,$00,$C0,$C0,$C0,$C0,$C0
  DEFB $00,$E0,$10,$E0,$F0,$F0,$F0,$E0
  DEFB $00,$E0,$18,$E4,$F8,$FC,$F8,$E0
  DEFB $00,$00,$00,$40,$80,$40,$00,$00
  DEFB $00,$00,$10,$70,$90,$60,$10,$00
  DEFB $00,$04,$1C,$7C,$9C,$64,$18,$04

; Play a footstep sound effect
;
; Used by the routine at Move_Character.
;
; IY Pointer to character data (Character_Base - BC6B)
Play_Footstep:
  LD A,(IY+$00)           ; Get the character's frame count.
  OR A                    ; Is it zero?
  JR Z,Play_Footstep_1    ; Jump forward if so.
  CP $03                  ; Is it 3?
  JR Z,Play_Footstep_1    ; Jump forward if so.
  XOR A                   ; Reset the "footstep triggered" flag and return.
  LD (IY-$19),A           ;
  RET                     ;
Play_Footstep_1:
  LD A,(IY-$19)           ; Get the "footstep triggered" flag.
  OR A                    ; Is it zero?
  RET NZ                  ; Return if it isn't.
  LD A,$01                ; Otherwise set the "foostep triggered" flag.
  LD (IY-$19),A
; This entry point is used by the routine at Jump.
Play_Footstep_2:
  LD A,(Current_Room)     ; Get the current room. (Current_Room)
  CP (IY+$0F)             ; Is the character in this room? (Character_Room_ID)
  RET NZ                  ; Return if not.
; The character is in the room, so make the footstep noise.
  LD BC,$0701             ; Set the pitch and "descending" length.
  LD DE,$0F01             ; Set the "static" and "ascending" lengths.
  LD HL,$0404             ; Set the "descending" and "ascending" values.
  CALL Play_Sound         ; Play the sound and return.
  RET                     ;

; Check for collision detection
;
; Used by the routines at Generic_Init_Sprites, Chase_Update_Shark,
; Update_Jumping_Jack, Logic_PostOffice, Move_Herbert, Logic_Pub, Logic_Zoo,
; Logic_Docks, Logic_Sewer, Logic_Bakers, Logic_WorkShed, Logic_Motor_Way,
; Logic_Supermarket, Logic_School_Lane, Logic_Park, Logic_Bank and
; Logic_Wallys_House.
;
; IY Pointer to character buffer
Detect_Collision:
  LD A,(Draw_XPos)        ; Get the x co-ordinate in the scratch buffer.
                          ; (Draw_XPos)
  SUB (IY+$05)            ; Is it close enough to this player?
  SUB $0D                 ;
  CP $E6                  ;
  RET C                   ; Return if it isn't.
  LD A,(Draw_YPos)        ; Get the y co-ordinate in the scratch buffer.
  SUB (IY+$0A)            ; Is it close enough to this player?
  SUB $1C                 ;
  CP $D6                  ;
  RET C                   ; Return if it isn't.
; The character has collided with something. Decrease endurance. The amount to
; decrease by is set in Endurance_Penalty, set up by the various room specific
; routines. (Herbert is 2. The shark in the sewer is 64!) This entry point is
; used by the routines at Logic_Cave, Logic_School and Space_Collision_Detect,
; which reduce endurance by other means.
Drop_Endurance:
  LD A,(Is_Character_Computer) ; Is the current player computer controlled?
  OR A                         ;
  RET NZ                  ; Return if so.
; The current character is human controlled, so decrease endurance.
  EXX                     ; Swap main registers.
  LD BC,$640A             ; Play the 'decrease endurance' sound effect.
  LD DE,$0101             ;
  LD HL,$6401             ;
  CALL Play_Sound         ;
  LD A,(Endurance_Penalty) ; Get the amount of endurance to decrease by.
  LD B,A                  ; Put this in B.
  LD A,(IY+$14)           ; Decrease the character's endurance by this amount.
  SUB B                   ;
  LD (IY+$14),A           ;
  JR Z,Drop_Endurance_1   ; If the endurance is zero or less, a life is lost.
  JR C,Drop_Endurance_1   ;
  JR Drop_Endurance_2     ; Otherwise jump forward.
; The character has run out of endurance, so lose a life.
Drop_Endurance_1:
  LD (IY+$14),$80         ; Put the endurance back up to maximum. (80)
  DEC (IY+$2D)            ; Decrease the number of lives.
  JP Z,Final_Score        ; If no lives are left, signal the game is over.
Drop_Endurance_2:
  EXX                     ; Swap main registers. Control continues to
                          ; Update_Endurance.

; Update endurance and lives display
;
; Used by the routines at Drop_Endurance, Update_Status and Handle_Food.
Update_Endurance:
  EXX                     ; Swap main registers.
; First, draw the lives.
  LD C,$46                ; Set the attribute to be bright yellow on black.
  LD HL,Charset           ; Point HL at the UDGs for the endurance display.
  LD ($B7E9),HL           ; Change the routine at Print_Graphic to use these
                          ; UDGs.
  LD DE,$021C             ; Set the co-ordinates to 1C , 02.
  LD L,(IY+$2D)           ; Put the number of lives in L.
  DEC L                   ; Make this 0 based.
  LD B,$02                ; Maximum of two lives to draw.
Update_Endurance_1:
  LD A,L                  ; Set the zero flag if this is the last life, ie:
  OR A                    ; nothing to draw.
  LD A,$1F                ; Set the initial position to 1F.
  JR NZ,Update_Endurance_2 ; Jump forward if there are no lives left to draw.
  INC A                   ; Increment the current position.
Update_Endurance_2:
  CALL Print_Graphic      ; Draw the graphic.
  INC E                   ; Move forward two columns.
  INC E                   ;
  CP $20                  ; Have we reached the last column?
  JR Z,Update_Endurance_3 ; Jump forward if we have.
  DEC L                   ; Otherwise decrement the number of lives left to
Update_Endurance_3:
  DJNZ Update_Endurance_1 ; draw and loop back to draw another one.
; The lives are all drawn, now draw the endurance.
  LD C,$43                ; Set the attribute to be bright magenta on black.
  LD DE,$0310             ; Set the co-ordinates to 10 , 03.
  LD L,$5C
  LD B,(IY+$14)           ; Put the endurance value in B.
Update_Endurance_4:
  LD A,B                  ; Get the amount of endurance left to draw.
  SUB $08
  JR C,Update_Endurance_0
  LD B,A
  LD A,L
  CALL Print_Graphic      ; Draw the graphic.
  XOR $01
  LD L,A
  INC E
  LD A,B
  OR A
  JR NZ,Update_Endurance_4
Update_Endurance_5:
  BIT 5,E
  JR Z,Update_Endurance_6
  EXX
  RET
Update_Endurance_6:
  LD A,$20
  CALL Print_Graphic      ; Draw the graphic.
  INC E
  JR Update_Endurance_5
Update_Endurance_0:
  ADD A,$08
  SRL A
  LD B,A
  LD A,L
  CP $5C
  JR NZ,Update_Endurance_7
  LD A,$5D
  JR Update_Endurance_8
Update_Endurance_7:
  LD A,$60
Update_Endurance_8:
  ADD A,B
  CALL Print_Graphic      ; Draw the graphic.
  INC E
  JR Update_Endurance_5

; Generate a sound effect
;
; Used by the routines at Play_Item_swapped, Play_Footstep, Drop_Endurance,
; Handle_Food, Space_Check_Fire and Space_Won_Tune.
;
; B pitch
; C first segment time (descending)
; D second segment time (static)
; E third segment time (ascending)
; H pitch to drop on first segment
; L pitch to raise on third segment
;
; The sound effect routine uses a basic pitch in B, plus three pitch segments -
; descending, static and ascending for each component of sound. For the first
; segment, the pitch is incrementally lowered by H, for the second it is
; unchanged, while for the third, it is incrementally raised by L.
Play_Sound:
  LD A,B                  ; Get the default pitch
  SUB H                   ; Subtract the pitch to drop for the first part
  LD B,A                  ; Play one wave of sound at that pitch.
  CALL Play_Wave          ;
  DEC C                   ; Loop while there is more to play for the first
  JR NZ,Play_Sound        ; duration.
Play_Sound_0:
  CALL Play_Wave          ; Play one wave of sound.
  DEC D                   ; Loop while there is more to play for the second
  JR NZ,Play_Sound_0      ; duration.
Play_Sound_1:
  LD A,B                  ; Raise the pitch by the required amount for the
  ADD A,L                 ; third part.
  LD B,A                  ;
  CALL Play_Wave          ; Play one wave of sound.
  DEC E                   ; Loop while there is more to play for the third
  JR NZ,Play_Sound_1      ; duration.
  RET                     ; Return.

; Generate one wave cycle in a sound effect
;
; Used by the routine at Play_Sound.
;
; B pitch
Play_Wave:
  LD A,$10                ; Switch the speaker on.
  OUT ($FE),A             ;
  PUSH BC                 ; Remember the pitch value.
Play_Wave_1:
  DJNZ Play_Wave_1        ; Wait a while with the speaker switched on, to
                          ; generate part of a sound wave.
  POP BC                  ; Restore the pitch value.
  LD A,$00                ; Switch the speaker off.
  OUT ($FE),A             ;
  PUSH BC                 ; Remember the pitch value.
Play_Wave_2:
  DJNZ Play_Wave_2        ; Wait a while with the speaker switched on, to
                          ; generate part of a sound wave.
  POP BC                  ; Restore the pitch value and return.
  RET                     ;

; Do a full refresh of the top status bar
;
; Used by the routines at Run_Demo, Main and Change_Character.
Update_Status:
  CALL Clear_Status       ; Clear the top status bar.
  LD HL,Status_Bar_Text   ; Point HL at the status bar text. (Status_Bar_Text)
  LD DE,$0010             ; Set the position.
  CALL Draw_Graphic       ; Draw it.
  LD H,$7C                ; Point HL at the right character name
  LD L,(IY-$23)           ; (Character_Text) based on their ID.
  LD C,$45                ; Set the attribute to bright cyan on black.
  LD DE,$001B             ; Set the position.
  CALL Draw_Graphic       ; Draw the main character display.
  CALL Update_Endurance   ; Draw endurance.
  CALL Print_Inventory_1  ; Draw the inventory.
  RET                     ; Return.

; Print a character's inventory
;
; Used by the routines at Do_Swap, Logic_Action_SwapFor and Set_Flag.
Print_Inventory:
  CALL Clear_Inventory
; This entry point is used by the routine at Update_Status.
Print_Inventory_1:
  LD A,(IY+$50)           ; Put the ID of the first item held in A.
  ADD A,A                 ; Double it to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  LD HL,Object_Text_Table ; Add the base address of the strings lookup table.
  ADD HL,DE               ; (Object_Text_Table)
  LD E,(HL)               ; Put the actual address of the string in DE.
  INC HL                  ;
  LD D,(HL)               ;
  LD A,(IY+$55)           ; Put the ID of the second item held in A.
  ADD A,A                 ; Double it to get a word offset.
  LD C,A                  ; Put this in BC.
  LD B,$00                ;
  LD HL,Object_Text_Table ; Add the base address of the strings lookup table.
  ADD HL,BC               ; (Object_Text_Table)
  LD C,(HL)               ; Put the actual address of the string in BC.
  INC HL                  ;
  LD B,(HL)               ;
  PUSH BC                 ; Remember this value.
  EX DE,HL                ; Swap DE and HL.
  LD DE,Charset           ; Set the drawing routine at Print_Graphic to use the
  LD ($B7E9),DE           ; character set (Charset) as a base address.
  LD DE,$0003             ; Start at position 3,0.
  LD C,$43                ; Set bright magenta on black attribute.
  CALL Print_Object_Text  ; Print the item description
  POP HL                  ; Restore the address of the second item's
                          ; description in HL.
  LD DE,$0203             ; Start at position 3,2.
  LD C,$45                ; Set bright cyan on black attribute.
  CALL Print_Object_Text  ; Print the item description
  LD A,(IY+$50)           ; Put the ID of the first item held in A.
  LD DE,$0000             ; Set position to 0,0
  CALL Print_Inventory_Item ; Draw the item's graphic.
  LD A,(IY+$55)           ; Put the ID of the second item held in A.
  LD D,$02                ; Set position to 0,2
  CALL Print_Inventory_Item ; Draw the item's graphic.
  RET                     ; Return.

; Display an item in the inventory
;
; Used by the routine in Print_Inventory.
;
; HL Pointer to the item data
; DE Location to print
;
; Print the description of an item. If the control code F4+flag is found, use
; the first or the second description depending on whether or not that flag is
; set.
Print_Object_Text:
  CALL Draw_Graphic       ; Print the string up to the first FF marker.
  LD C,$07
  LD A,(HL)               ; Get the next byte.
  CP $F4                  ; Is it a flag specifier?
  RET NZ                  ; Return if it isn't.
; This item's description is dependent on a flag.
  INC HL                  ; Put the flag in A.
  LD A,(HL)               ;
  INC HL                  ; Point to the next place in the buffer.
  CALL Get_Flag           ; Is the flag set?
  JP NZ,Draw_Graphic      ; Jump forward if it is to use the first description.
  PUSH BC                 ; Otherwise search for the next instance of FF to
  LD B,$FF                ; point at the second description.
  LD A,B                  ;
  CPIR                    ;
  POP BC                  ;
  JP Draw_Graphic         ; Jump to print the flag-specific description.

; THE PLUNGER
Object_Text_00:
  DEFM "THE PLUNGER"
  DEFB $FF

; THE LETTER\n"A"
Object_Text_01:
  DEFM "THE LETTER"
  DEFB $BE
  DEFB $01
  DEFM "A"
  DEFB $FF

; BOOK TWO
Object_Text_02:
  DEFM "BOOK TWO"
  DEFB $FF

; THE SAND
Object_Text_03:
  DEFM "THE SAND"
  DEFB $FF

; THE BATTERY\n(CHARGED|FLAT)
Object_Text_04:
  DEFM "THE BATTERY"
  DEFB $BD
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $06
  DEFM "CHARGED"
  DEFB $FF
  DEFM "FLAT"
  DEFB $FF

; THE LETTER\n"K"
Object_Text_05:
  DEFM "THE LETTER"
  DEFB $BE
  DEFB $01
  DEFM "K"
  DEFB $FF

; THE CEMENT
Object_Text_06:
  DEFM "THE CEMENT"
  DEFB $FF

; BOOK THREE
Object_Text_07:
  DEFM "BOOK THREE"
  DEFB $FF

; THE TROWEL
Object_Text_08:
  DEFM "THE TROWEL"
  DEFB $FF

; THE MATCHES
Object_Text_09:
  DEFM "THE MATCHES"
  DEFB $FF

; THE CRACKED\nINSULATOR
Object_Text_0A:
  DEFM "THE CRACKED"
  DEFB $BD
  DEFB $01
  DEFM "INSULATOR"
  DEFB $FF

; BOOK ONE
Object_Text_0B:
  DEFM "BOOK ONE"
  DEFB $FF

; THE MONKEY\nNUTS
Object_Text_0C:
  DEFM "THE MONKEY"
  DEFB $BE
  DEFB $01
  DEFM "NUTS"
  DEFB $FF

; THE MONEY
Object_Text_0D:
  DEFM "THE MONEY"
  DEFB $FF

; SUPERGLUE
Object_Text_0E:
  DEFM "SUPERGLUE"
  DEFB $FF

; THE CHEWING\nGUM
Object_Text_0F:
  DEFM "THE CHEWING"
  DEFB $BD
  DEFB $01
  DEFM "GUM"
  DEFB $FF

; THE BUCKET\n(FULL|EMPTY)
Object_Text_10:
  DEFM "THE BUCKET"
  DEFB $BE
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $04
  DEFM "FULL"
  DEFB $FF
  DEFM "EMPTY"
  DEFB $FF

; THE JUMP LEADS
Object_Text_11:
  DEFM "THE JUMP"
  DEFB $C0
  DEFB $01
  DEFM "LEADS"
  DEFB $FF

; THE BUNSEN\nBURNER
Object_Text_12:
  DEFM "THE BUNSEN"
  DEFB $BE
  DEFB $01
  DEFM "BURNER"
  DEFB $FF

; THE LETTER\n"B"
Object_Text_13:
  DEFM "THE LETTER"
  DEFB $BE
  DEFB $01
  DEFM "B"
  DEFB $FF

; GAS MASK
Object_Text_14:
  DEFM "GAS MASK"
  DEFB $FF

; THE PARCEL\n(STAMPED|UNSTAMPED)
Object_Text_15:
  DEFM "THE PARCEL"
  DEFB $BE
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $02
  DEFM "STAMPED"
  DEFB $FF
  DEFM "UNSTAMPED"
  DEFB $FF

; THE FUSE\n(REWIRED|BLOWN)
Object_Text_16:
  DEFM "THE FUSE"
  DEFB $C0
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $01
  DEFM "REWIRED"
  DEFB $FF
  DEFM "BLOWN"
  DEFB $FF

; THE MEAT
Object_Text_17:
  DEFM "THE MEAT"
  DEFB $FF

; THE MONKEY\nWRENCH
Object_Text_18:
  DEFM "THE MONKEY"
  DEFB $BE
  DEFB $01
  DEFM "WRENCH"
  DEFB $FF

; SCREWDRIVER
Object_Text_19:
  DEFM "SCREWDRIVER"
  DEFB $FF

; THE LETTER\n\"E"
Object_Text_1A:
  DEFM "THE LETTER"
  DEFB $BE
  DEFB $01
  DEFM "E"
  DEFB $FF

; THE HOOK\n(WORKING|BROKEN)
Object_Text_1B:
  DEFM "THE HOOK"
  DEFB $C0
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $03
  DEFM "WORKING"
  DEFB $FF
  DEFM "BROKEN"
  DEFB $FF

; THE PATCH
Object_Text_1C:
  DEFM "THE PATCH"
  DEFB $FF

; THE PIPE\n(PATCHED|LEAKING)
Object_Text_1D:
  DEFM "THE PIPE"
  DEFB $C0
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $05
  DEFM "PATCHED"
  DEFB $FF
  DEFM "LEAKING"
  DEFB $FF

; THE LETTER\n"R"
Object_Text_1E:
  DEFM "THE LETTER"
  DEFB $BE
  DEFB $01
  DEFM "R"
  DEFB $FF

; THE OIL\nCAN(FULL|EMPTY)
Object_Text_1F:
  DEFM "THE OIL"
  DEFB $C1
  DEFB $01
  DEFM "CAN "
  DEFB $FF
  DEFB $F4
  DEFB $07
  DEFM "FULL"
  DEFB $FF
  DEFM "EMPTY"
  DEFB $FF

; THE FUSE\nWIRE
Object_Text_20:
  DEFM "THE FUSE"
  DEFB $C0
  DEFB $01
  DEFM "WIRE"
  DEFB $FF

; THE GOOD\nINSULATOR
Object_Text_21:
  DEFM "THE GOOD"
  DEFB $C0
  DEFB $01
  DEFM "INSULATOR"
  DEFB $FF

; THE BOTTLE\n(FULL|EMPTY)
Object_Text_22:
  DEFM "THE BOTTLE"
  DEFB $BE
  DEFB $01
  DEFB $FF
  DEFB $F4
  DEFB $00
  DEFM "FULL"
  DEFB $FF
  DEFM "EMPTY"
  DEFB $FF

; THE RED\nHERRING
Object_Text_23:
  DEFM "THE RED"
  DEFB $C1
  DEFB $01
  DEFM "HERRING"
  DEFB $FF

; THE TEST\n\TUBE
Object_Text_24:
  DEFM "THE TEST"
  DEFB $C0
  DEFB $01
  DEFM "TUBE"
  DEFB $FF

; THE CAN OF\nBEANS
Object_Text_25:
  DEFM "THE CAN OF"
  DEFB $BE
  DEFB $01
  DEFM "BEANS"
  DEFB $FF

; THE RUBBER\nSTAMP
Object_Text_26:
  DEFM "THE RUBBER"
  DEFB $BE
  DEFB $01
  DEFM "STAMP"
  DEFB $FF

; THE PLIERS
Object_Text_27:
  DEFM "THE PLIERS"
  DEFB $FF

; THE WHISTLE
Object_Text_28:
  DEFM "THE WHISTLE"
  DEFB $FF

; Lookup table for strings
Object_Text_Table:
  DEFW Object_Text_00
  DEFW Object_Text_01
  DEFW Object_Text_02
  DEFW Object_Text_03
  DEFW Object_Text_04
  DEFW Object_Text_05
  DEFW Object_Text_06
  DEFW Object_Text_07
  DEFW Object_Text_08
  DEFW Object_Text_09
  DEFW Object_Text_0A
  DEFW Object_Text_0B
  DEFW Object_Text_0C
  DEFW Object_Text_0D
  DEFW Object_Text_0E
  DEFW Object_Text_0F
  DEFW Object_Text_10
  DEFW Object_Text_11
  DEFW Object_Text_12
  DEFW Object_Text_13
  DEFW Object_Text_14
  DEFW Object_Text_15
  DEFW Object_Text_16
  DEFW Object_Text_17
  DEFW Object_Text_18
  DEFW Object_Text_19
  DEFW Object_Text_1A
  DEFW Object_Text_1B
  DEFW Object_Text_1C
  DEFW Object_Text_1D
  DEFW Object_Text_1E
  DEFW Object_Text_1F
  DEFW Object_Text_20
  DEFW Object_Text_21
  DEFW Object_Text_22
  DEFW Object_Text_23
  DEFW Object_Text_24
  DEFW Object_Text_25
  DEFW Object_Text_26
  DEFW Object_Text_27
  DEFW Object_Text_28

; Clear the inventory display, so new text can go on
;
; Used by the routine at Print_Inventory.
Clear_Inventory:
  PUSH HL                 ; Store main registers.
  PUSH BC                 ;
  PUSH DE                 ;
  LD IX,Screen_Offsets    ; Point IX at the screen offset table.
  LD C,$20                ; 20 rows to update.
Clear_Inventory_0:
  LD L,(IX+$00)           ; Get the next screen address in HL.
  LD H,(IX+$01)           ;
  LD B,$0F                ; 0F columns per row to update.
Clear_Inventory_1:
  LD (HL),$00             ; Clear all bits.
  INC HL                  ; Move to the next column.
  DJNZ Clear_Inventory_1  ; Loop until all columns are done.
  INC IX                  ; Move to the next position in the offset table.
  INC IX                  ;
  DEC C                   ; Loop until all rows are updated.
  JR NZ,Clear_Inventory_0 ;
  POP DE                  ; Restore main registers and return.
  POP BC                  ;
  POP HL                  ;
  RET                     ;

; See if a player wants to swap character, and do so if they can
;
; Used by the routine at Main.
Change_Character:
  LD A,$F7                ; Get keyboard input from 1 - 5.
  IN A,($FE)              ;
  OR $E0                  ; Set the top three bits, to ensure all bits are set
                          ; if no key is pressed.
  XOR $FF                 ; Were no keys pressed?
  RET Z                   ; Return if so.
; A key was pressed. Work out what to do.
  LD B,(IY+$0F)           ; Put the current character's room
                          ; (Character_Room_ID) in B.
  PUSH IY                 ; Remember the original pointer in IY.
  LD IY,Character_Base    ; Point IY at the first character buffer (Wally).
                          ; (Character_Base)
Change_Character_1:
  RRCA                    ; Was this key pressed? (Loops from 1 - 5.)
  JR C,Change_Character_2 ; Jump if so.
  INC IY                  ; Otherwise move to the next entry and loop back.
  JR Change_Character_1   ;
; Found the character to switch to, can it be done?
Change_Character_2:
  LD A,(IY+$0F)           ; Get the character's room.
  CP B                    ; Is it this one?
  JR Z,Change_Character_4 ; Yes, so we can switch.
  CALL Print_Character_Room ; Otherwise, print "{character} is in {room}"
Change_Character_3:
  POP IY                  ; Clear up the stack and return.
  RET                     ;
; The character is in the same room, so the switch can be made.
Change_Character_4:
  CALL Is_Character_Current ; Is this character the current one.
  JR Z,Change_Character_3 ; If so, clear up the stack and return - there's
                          ; nothing to do.
; The character is in the room and it's not the current one, so switch.
  LD (Current_Player),IY  ; Set the current character pointer (Current_Player)
                          ; to this one.
  POP IY                  ; Clear up the stack.
  LD A,B                  ; Put the room in A.
  CALL Get_Next_Room_Ptr  ; Get the "next rooms" table for this room.
  LD A,(HL)               ; Put the first byte (room) in the buffer at
  LD (IY+$69),A           ; Character_Next_Room_1.
  INC HL                  ; Put the second byte (destination co-ordinate) at
  LD A,(HL)               ; Character_Next_Room_2.
  LD (IY+$64),A           ;
  INC HL                  ; Put the third byte (target co-ordinate) at
  LD A,(HL)               ; Character_Next_Room_3
  LD (IY+$73),A           ;
  LD (IY+$6E),$05         ; Set the previous room to 5 (?)
  LD IY,(Current_Player)  ; Point IY to the selected character.
  CALL Update_Status      ; Refresh the status bar to reflect the new current
                          ; character.
  RET                     ; Return.

; Jump table for pattern matching in rooms
Logic_Pattern_Table:
  DEFW Logic_Pattern_At_Obj ; Pattern 0 - AT OBJ(x) (Logic_Pattern_At_Obj)
  DEFW Logic_Pattern_Has  ; Pattern 1 - HAS(x) (Logic_Pattern_Has)
  DEFW Logic_Pattern_Set  ; Pattern 2 - SET(x) (Logic_Pattern_Set)
  DEFW Logic_Pattern_Obj  ; Pattern 3 - OBJ(x,y) (Logic_Pattern_Obj)
  DEFW Logic_Pattern_At   ; Pattern 4 - AT(x,y) (Logic_Pattern_At)
  DEFW Logic_Pattern_Am   ; Pattern 5 - AM(x) (Logic_Pattern_Am)
  DEFW Logic_Pattern_Not_Has ; Pattern 6 - NOT HAS(x) (Logic_Pattern_Not_Has)
  DEFW Logic_Pattern_Not_Obj ; Pattern 7 - NOT OBJ(x,y) (Logic_Pattern_Not_Obj)

; Jump table for actions in rooms
Logic_Action_Table:
  DEFW Logic_Action_Swap  ; Action 0 - SWAP (Logic_Action_Swap)
  DEFW Logic_Action_SwapFor ; Action 1 - SWAPFOR( x ) (Logic_Action_SwapFor)
  DEFW Logic_Action_Set_Flag ; Action 2 - SET(x) (Logic_Action_Set_Flag)
  DEFW Logic_Action_Reset_Flag ; Action 3 - RESET(x) (Logic_Action_Reset_Flag)
  DEFW Logic_Action_Set_Flag_2 ; Action 4 - SET(x,y) (Logic_Action_Set_Flag_2)
  DEFW Logic_Action_Earn  ; Action 5 - EARN(x) (Logic_Action_Earn)
  DEFW Logic_Action_Wall  ; Action 6 - WALL (Logic_Action_Wall)
  DEFW Space_Game         ; Action 7 - SPACE (Space_Game)
  DEFW Action_Safe        ; Action 8 - SAFE (Action_Safe)
  DEFW Chase              ; Action 9 - CHASE (Chase)
  DEFW OutOfTown          ; Action A - OUT (OutOfTown)

; Action data 00 : Town Square
logic_00:
  DEFB $04,$48,$60,$05,$08,$01,$18,$01
  DEFB $00,$F7,$05,$00,$02,$08,$F6,$04
  DEFB $48,$98,$01,$10,$02,$08,$F7,$05
  DEFB $02,$02,$04,$F6,$04,$48,$60,$06
  DEFB $18,$F7,$09,$F6,$04,$48,$60,$06
  DEFB $00,$F7,$09,$F6,$FF

; Action data 01 : Stamp Street
logic_01:
  DEFB $04,$E0,$90,$F7,$07,$F6,$FF

; Action data 02 : Post Office
logic_02:
  DEFB $00,$00,$F7,$00,$F6,$01,$15,$01
  DEFB $26,$05,$02,$04,$18,$98,$F7,$05
  DEFB $09,$02,$02,$F6,$FF

; Action data 03 : Market Street
logic_03:
  DEFB $FF

; Action data 04 : The Super Market
logic_04:
  DEFB $05,$10,$00,$00,$F7,$05,$1C,$00
  DEFB $F6,$00,$01,$F7,$00,$F6,$04,$F0
  DEFB $98,$01,$1F,$02,$07,$05,$04,$F7
  DEFB $05,$05,$02,$0C,$F6,$FF

; Action data 05 : The Park
logic_05:
  DEFB $00,$00,$F7,$00,$F6,$FF

; Action data 06 : Wobbly Walk
logic_06:
  DEFB $FF

; Action data 07 : Rubble Road
logic_07:
  DEFB $FF

; Action data 08 : Wall Street
logic_08:
  DEFB $05,$04,$00,$00,$F7,$00,$F6,$05
  DEFB $04,$03,$00,$04,$02,$06,$F7,$05
  DEFB $1E,$F6,$00,$01,$F7,$05,$1F,$00
  DEFB $F6,$05,$01,$01,$08,$01,$06,$04
  DEFB $80,$98,$F7,$05,$0D,$02,$09,$06
  DEFB $0C,$0C,$0F,$06,$0C,$0C,$13,$F6
  DEFB $FF

; Action data 09 : Pete Street
logic_09:
  DEFB $05,$01,$01,$10,$02,$04,$01,$03
  DEFB $00,$00,$F7,$05,$0C,$03,$04,$01
  DEFB $03,$F6,$04,$F0,$98,$F7,$0A,$F6
  DEFB $FF

; Action data 0A : The Work Shed
logic_0A:
  DEFB $00,$00,$F7,$00,$F6,$00,$01,$F7
  DEFB $00,$F6,$00,$02,$F7,$00,$F6,$03
  DEFB $00,$1D,$01,$1C,$01,$0F,$04,$78
  DEFB $98,$05,$08,$F7,$05,$07,$02,$05
  DEFB $F6,$03,$00,$1B,$01,$0E,$04,$78
  DEFB $98,$05,$01,$F7,$05,$08,$02,$03
  DEFB $F6,$FF

; Action data 0B : School Lane
logic_0B:
  DEFB $06,$19,$00,$00,$F7,$09,$F6,$06
  DEFB $21,$07,$00,$21,$00,$00,$F7,$09
  DEFB $F6,$05,$10,$01,$19,$01,$21,$02
  DEFB $0D,$00,$00,$F7,$05,$04,$01,$21
  DEFB $02,$0B,$F6,$FF

; Action data 0C : The School
logic_0C:
  DEFB $00,$00,$F7,$00,$F6,$FF

; Action data 0D : Baker Street
logic_0D:
  DEFB $04,$F0,$98,$F7,$0A,$F6,$FF

; Action data 0E : The Bakers
logic_0E:
  DEFB $00,$00,$F7,$00,$F6,$FF

; Action data 0F : The Pub
logic_0F:
  DEFB $05,$04,$01,$22,$02,$00,$00,$00
  DEFB $F7,$05,$0E,$01,$22,$F6,$FF

; Action data 10 : Motor Way
logic_10:
  DEFB $FF

; Action data 11 : The Laboratory
logic_11:
  DEFB $00,$00,$F7,$00,$F6,$00,$01,$F7
  DEFB $00,$F6,$05,$04,$02,$0A,$03,$00
  DEFB $12,$03,$01,$22,$01,$09,$04,$60
  DEFB $98,$F7,$05,$03,$02,$00,$F6,$FF

; Action data 12 : The Garage
logic_12:
  DEFB $00,$00,$F7,$00,$F6,$04,$D8,$98
  DEFB $01,$0D,$01,$1F,$F7,$05,$17,$02
  DEFB $07,$F6,$02,$0B,$04,$3C,$98,$01
  DEFB $04,$01,$11,$05,$10,$F7,$05,$0B
  DEFB $02,$06,$F6,$FF

; Action data 13 : Reference Road
logic_13:
  DEFB $04,$08,$90,$F7,$07,$F6,$04,$00
  DEFB $98,$F7,$0A,$F6,$FF

; Action data 14 : The Library
logic_14:
  DEFB $05,$02,$01,$0B,$00,$00,$F7,$00
  DEFB $F6,$05,$02,$01,$02,$03,$00,$0B
  DEFB $00,$01,$F7,$05,$10,$00,$F6,$05
  DEFB $02,$01,$07,$03,$00,$0B,$03,$01
  DEFB $02,$00,$02,$F7,$05,$11,$01,$07
  DEFB $F6,$FF

; Action data 15 : Penny Lane
logic_15:
  DEFB $FF

; Action data 16 : The Bank
logic_16:
  DEFB $00,$00,$F7,$00,$F6,$04,$EC,$98
  DEFB $05,$02,$01,$13,$F7,$05,$12,$08
  DEFB $F6,$04,$EC,$98,$05,$04,$01,$1E
  DEFB $F7,$05,$13,$08,$F6,$04,$EC,$98
  DEFB $05,$08,$01,$1A,$F7,$05,$14,$08
  DEFB $F6,$04,$EC,$98,$05,$10,$01,$01
  DEFB $F7,$05,$15,$08,$F6,$04,$EC,$98
  DEFB $05,$01,$01,$05,$F7,$05,$16,$05
  DEFB $01,$08,$F6,$04,$EC,$98,$05,$02
  DEFB $06,$13,$F7,$09,$F6,$04,$EC,$98
  DEFB $05,$04,$06,$1E,$F7,$09,$F6,$04
  DEFB $EC,$98,$05,$08,$06,$1A,$F7,$09
  DEFB $F6,$04,$EC,$98,$05,$10,$06,$01
  DEFB $F7,$09,$F6,$04,$EC,$98,$05,$01
  DEFB $06,$05,$F7,$09,$F6,$FF

; Action data 17 : Wally's House
logic_17:
  DEFB $00,$00,$F7,$00,$F6,$FF

; Action data 18 : Meat Street
logic_18:
  DEFB $FF

; Action data 19 : The Butcher's
logic_19:
  DEFB $00,$00,$F7,$00,$F6,$03,$00,$16
  DEFB $02,$01,$02,$0B,$00,$01,$F7,$00
  DEFB $F6,$01,$16,$01,$20,$05,$10,$F7
  DEFB $05,$06,$02,$01,$F6,$FF

; Action data 1A : Trunk Road
logic_1A:
  DEFB $04,$00,$98,$F7,$0A,$F6,$FF

; Action data 1B : The Zoo
logic_1B:
  DEFB $00,$00,$F7,$05,$18,$00,$F6,$07
  DEFB $00,$0C,$06,$0C,$F7,$09,$F6,$FF

; Action data 1C : Rail Road
logic_1C:
  DEFB $FF

; Action data 1D : The Station
logic_1D:
  DEFB $00,$00,$F7,$00,$F6,$FF

; Action data 1E : The Docks
logic_1E:
  DEFB $03,$01,$1B,$02,$03,$05,$02,$00
  DEFB $00,$F7,$00,$05,$0A,$F6,$03,$01
  DEFB $1B,$02,$03,$F7,$05,$19,$F6,$00
  DEFB $01,$F7,$00,$F6,$FF

; Action data 1F : The Sewer
logic_1F:
  DEFB $03,$00,$17,$F7,$05,$1A,$F6,$00
  DEFB $00,$F7,$00,$F6,$FF

; Action data 20 : The Cave
logic_20:
  DEFB $05,$08,$00,$00,$F7,$00,$F6,$03
  DEFB $00,$1D,$02,$05,$F7,$05,$0F,$02
  DEFB $0A,$F6,$01,$1E,$F7,$05,$1B,$F6
  DEFB $00,$01,$F7,$00,$F6,$FF

; Process logic for the current room
;
; Used by the routine at Main.
Do_Logic:
  LD A,(IY+$0F)           ; Get the current character's room.
  LD (Current_Room),A     ; Set this as the current room number. (Current_Room)
  LD HL,logic_00          ; Point HL at the first action table. (logic_00)
  CALL Get_Next_Room_Ptr_Direct ; Get the pointer to the action table.
; This entry point is used by the routines at Logic_Condition_False,
; Logic_Condition_True, Logic_Pattern_At_Obj, Logic_Pattern_At,
; Logic_Pattern_Am, Logic_Pattern_Has, Logic_Pattern_Not_Has,
; Logic_Pattern_Obj, Logic_Pattern_Not_Obj and Logic_Pattern_Set. At this
; point, HL points to the logic table of the current room.
Do_Logic_1:
  LD A,(HL)               ; Put the next pattern in A.
  INC HL                  ; Move to the next position in the table.
  CP $FF                  ; Is this the end of the logic?
  RET Z                   ; Return if so.
  CP $F7                  ; Is this an action?
  JR Z,Logic_Condition_True ; Process it if it is.
; If this isn't an action, it's a pattern, so look it up.
  ADD A,A                 ; Double the pattern ID to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  PUSH HL                 ; Remember HL.
  LD HL,Logic_Pattern_Table ; Add the base pointer for the match table.
  ADD HL,DE                 ; (Logic_Pattern_Table)
  LD E,(HL)               ; Put the address found in DE.
  INC HL                  ;
  LD D,(HL)               ;
  POP HL                  ; Restore HL.
  PUSH DE                 ; Jump to the address pointed to by DE.
  RET                     ;

; A condition does not match. Skip to the ENDIF (F6) character.
;
; Used by the routines at Logic_Pattern_At_Obj, Logic_Pattern_At,
; Logic_Pattern_Am, Logic_Pattern_Has, Logic_Pattern_Not_Has,
; Logic_Pattern_Obj, Logic_Pattern_Not_Obj and Logic_Pattern_Set.
;
; HL On exit, holds the address for the next room logic byte
Logic_Condition_False:
  LD A,(HL)               ; Put the next byte in A.
  INC HL                  ; Move to the next position in the table.
  CP $F6                  ; Is this ENDIF?
  JR Z,Do_Logic_1         ; Jump if it is.
  JR Logic_Condition_False ; Otherwise loop back to keep searching.

; A condition matches. Process any actions in it.
;
; Used by the routines at Do_Logic, Logic_Action_Swap, Logic_Action_SwapFor,
; Logic_Action_Wall, Set_Flag, Logic_Action_Earn and Action_Safe.
;
; HL Pointer to the action table.
Logic_Condition_True:
  LD A,(HL)               ; Put the next action in A.
  INC HL                  ; Move to the next position in the table.
  CP $F6
  JP Z,Do_Logic_1
  ADD A,A                 ; Double the action to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  PUSH HL                 ; Remember HL.
  LD HL,Logic_Action_Table ; Add the base address of the action table.
  ADD HL,DE                ; (Logic_Action_Table)
  LD E,(HL)               ; Put the address found in DE.
  INC HL                  ;
  LD D,(HL)               ;
  POP HL                  ; Restore HL.
  PUSH DE                 ; Jump to the action pointed to by DE.
  RET                     ;

; Action 0 : SWAP. An item can be collected. Swap it for the oldest item.
Logic_Action_Swap:
  LD A,$01                     ; Set that the item should be swapped.
  LD (Character_Near_Object),A ; (Character_Near_Object)
  LD B,(IY-$2D)           ; Get the ID of the least recently picked up object
                          ; the player has.
  CALL Do_Swap            ; Swap the objects.
  JP Logic_Condition_True ; Process more actions.

; Action 1 : SWAPFOR. An item can be collected. Swap it for a specific item.
;
; -
;
; HL Points to the object ID that should be swapped
Logic_Action_SwapFor:
  LD A,$01                     ; Set that the item should be swapped.
  LD (Character_Near_Object),A ; (Character_Near_Object)
  LD B,(IY-$2D)           ; Get the ID of the least recently picked up object
                          ; the player has.
  LD C,(HL)               ; Put the ID of the object to swap in C.
  INC HL                  ; Ensure HL points to the next place in the action
                          ; buffer.
  PUSH HL                 ; Remember this.
  PUSH IY                 ; Remember the current player pointer in IY.
  CALL Get_Next_Object_Ptr ; Get the buffer for this object.
  LD A,(IY+$50)           ; Get the ID of the first object held.
  CP C                    ; Does it equal this one?
  JR Z,Logic_Action_SwapFor_1 ; Jump forward if it does.
  INC IY                  ; Otherwise, temporarily shift IY forward so the
  INC IY                  ; second object held appears at the first.
  INC IY                  ;
  INC IY                  ;
  INC IY                  ;
Logic_Action_SwapFor_1:
  LD C,(HL)               ; Put the ID of the object in the room in C.
  LD A,(IY+$50)           ; Get the ID of the object to swap (first or second)
                          ; in A.
  LD (HL),A               ; Swap them round.
  LD (IY+$50),C           ;
  INC HL                  ; Move to the flags.
  INC HL                  ;
  INC HL                  ;
  LD A,(HL)               ; Put the flags in A.
  RES 7,A                 ; Reset bit 7, the item has been swapped.
  LD C,A                  ; Store this in C.
  LD A,(HL)               ; Put the flags in A.
  AND $80                 ; Clear bit 7.
  OR (IY-$37)             ; Keep the bits set on the current bit mask.
  LD (HL),A               ; Store this.
  LD (IY-$37),C           ; Store the old flags.
  POP IY                  ; Restore the original value of IY.
  CALL Print_Inventory    ; Update the inventory.
  CALL Play_Item_swapped  ; Play an "item swapped" effect.
  POP HL                  ; Restore the place in the buffer to HL.
  JP Logic_Condition_True ; Process more actions.

; Holds 1 if the player is near an object, or 0 for no item.
Character_Near_Object:
  DEFB $00

; See if the player is touching any collectable item
;
; Used by the routine at Main.
Character_Has_Object:
  LD BC,$0000             ; Set B to 0 (first object) and C to 0 (no items).
  CALL Get_Next_Object_Ptr ; Get the buffer for this object.
Character_Has_Object_1:
  LD A,(HL)               ; Get the first byte.
  CP $FF                  ; Is it an end marker?
  JR Z,Character_Has_Object_2 ; If so, there are no items here, so jump
                              ; forward.
  INC HL                  ; Point HL at the X co-ordinate.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  SUB (HL)                ; Convert the player co-ordinate to an object
  INC HL                  ; co-ordinate.
  INC HL                  ;
  INC HL                  ;
  SUB $06                 ;
  CP $F4                  ; Are the two near enough?
  JR C,Character_Has_Object_1 ; Jump back to look at other entries if not.
  LD C,$01                  ; Otherwise set that an object is found in C, then
  JR Character_Has_Object_1 ; jump back.
; At this point, all objects in the room have been checked, and C is set to 1
; if the player is near any of them.
Character_Has_Object_2:
  LD A,C                  ; Were any items found?
  OR A                    ;
  RET NZ                  ; Return if not.
  LD (Character_Near_Object),A ; Otherwise mark that the player is near an
  RET                          ; object (Character_Near_Object) and return.

; Action 6 : WALL. The wall is or can be built. Patch the logic in Wall Street
; for it.
;
; -
;
; HL The data for this action (graphic, x, y)
Logic_Action_Wall:
  LD A,(HL)               ; Put the graphic ID in A.
  INC HL                  ; Put the x co-ordinate in E.
  LD E,(HL)               ;
  INC HL                  ; Put the y co-ordinate in D.
  LD D,(HL)               ;
  INC HL                  ; Point to the next action in the buffer.
  PUSH HL                 ; Store HL.
  PUSH DE                 ; Store the position that is in DE.
  ADD A,A                 ; Double the graphic ID to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  LD HL,Room_Block_Table  ; Add the offset for the basic room block components.
  ADD HL,DE               ; (Room_Block_Table)
  LD E,(HL)               ; Put the actual address in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL, so HL has the graphic address.
  POP DE                  ; Restore DE with the position.
  CALL Overwrite_Screen   ; Draw the graphic.
  POP HL                  ; Restore HL.
  JP Logic_Condition_True ; Jump to handle any other actions.

; Pattern 0 AT OBJ(x) : Match if at an item
;
; -
;
; HL : Points to the room's object ID to test for
Logic_Pattern_At_Obj:
  LD B,(HL)               ; Put the object to test for in B.
  INC HL                  ; Ensure HL points to the next pattern.
  PUSH HL                 ; Store this.
  LD A,(Character_Near_Object) ; Get the current ID of the item the player is
                               ; next to, if any.
  OR A                    ; Was there one?
  JR NZ,Logic_Pattern_At_Obj_1 ; Jump forward if not.
; There's an item here, is it the right one.
  LD (IY-$2D),B           ; Put the ID of the object to test in the buffer at
                          ; Character_Near_ID.
  CALL Get_Next_Object_Ptr ; Get the object's data.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  INC HL                  ; Point to the item's X co-ordinate.
  SUB (HL)                ; Is is near enough?
  SUB $04                 ;
  CP $F8                  ;
  JR C,Logic_Pattern_At_Obj_1 ; If it isn't, jump forward to set the pattern as
                              ; not matched.
  INC HL                  ; Point to the item's Y co-ordinate.
  LD A,(IY+$0A)           ; Get the player's Y co-ordinate.
  ADD A,$10               ; Is it near enough?
  SUB (HL)                ;
  SUB $04                 ;
  CP $F8                  ;
  JR C,Logic_Pattern_At_Obj_1 ; If not, jump forward to set the pattern as not
                              ; matched.
; There's the right object here, and the player is near enough to it.
  POP HL                  ; Restore the address of the next pattern in HL.
  JP Do_Logic_1           ; Carry on looking at other patterns.
; There's no item here, or it's not the right one.
Logic_Pattern_At_Obj_1:
  POP HL                  ; Restore the address of the next pattern in HL.
  JP Logic_Condition_False ; Flag the pattern has having not matched.

; Pattern 4 AT(x,y) : Match if at co-ordinate x,y
;
; HL Pointer to data for this pattern.
Logic_Pattern_At:
  LD A,(IY+$05)           ; Get the X co-ordinate.
  SUB (HL)                ; Is the player near enough?
  SUB $04                 ;
  CP $F8                  ;
  JR C,Logic_Pattern_1    ; Jump forward if not.
  INC HL                  ; Point to the Y co-ordinate.
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  SUB (HL)                ; Is the player near enough?
  SUB $04                 ;
  CP $F8                  ;
  JR C,Logic_Pattern_2    ; Jump if not.
  INC HL                  ; Ensure HL points to the next pattern.
  JP Do_Logic_1           ; Carry on looking at other patterns.
; The player isn't near enough.
Logic_Pattern_1:
  INC HL                  ; Ensure HL points to the next pattern.
Logic_Pattern_2:
  INC HL                  ;
  JP Logic_Condition_False ; Flag the pattern has having not matched.

; Pattern 5 AM(x) : Match if we are a character (bitfield)
Logic_Pattern_Am:
  LD A,(HL)               ; Get the character ID.
  INC HL                  ; Ensure HL points to the next pattern.
  CP (IY-$28)             ; Compare with the current character.
  JP Z,Do_Logic_1         ; If there's a match, carry on looking at other
                          ; patterns.
  JP Logic_Condition_False ; Otherwise, flag the pattern has having not
                           ; matched.

; Pattern 1 HAS(x) : Match if item xx held
Logic_Pattern_Has:
  LD A,(HL)               ; Get the item ID.
  INC HL                  ; Ensure HL points to the next pattern.
  CP (IY+$50)             ; Is the first item held this?
  JP Z,Do_Logic_1         ; If so, there's a match, carry on looking at other
                          ; patterns.
  CP (IY+$55)             ; Is the second item held this?
  JP Z,Do_Logic_1         ; If so, there's a match, carry on looking at other
                          ; patterns.
  JP Logic_Condition_False ; Otherwise, flag the pattern has having not
                           ; matched.

; Pattern 6 NOT HAS(x) : Match if item xx NOT held
Logic_Pattern_Not_Has:
  LD A,(HL)               ; Get the item ID.
  INC HL                  ; Ensure HL points to the next pattern.
  CP (IY+$50)             ; Is the first item held this?
  JP Z,Logic_Condition_False ; If so, flag the pattern has having not matched.
  CP (IY+$55)             ; Is the second item held this?
  JP Z,Logic_Condition_False ; If so, flag the pattern has having not matched.
  JP Do_Logic_1           ; Otherwise, carry on looking at other patterns.

; Flag 0 : Bottle is full
Flag_0:
  DEFB $00

; Flag 1 : Fuse is rewired
Flag_1:
  DEFB $01

; Flag 2 : Parcel is stamped
Flag_2:
  DEFB $02

; Flag 3 : Hook is working
Flag_3:
  DEFB $03

; Flag 4 : Bucket is full
Flag_4:
  DEFB $04

; Flag 5 : Pipe is patched
Flag_5:
  DEFB $05

; Flag 6 : Battery is charged
Flag_6:
  DEFB $06

; Flag 7 : Oil can is full
Flag_7:
  DEFB $07

; Flag 8 : Fountain is repaired
Flag_8:
  DEFB $08

; Flag 9 : Wall is built
Flag_9:
  DEFB $09

; Flag A : Gas is repaired
Flag_A:
  DEFB $0A

; Flag B : Electricity is repaired
Flag_B:
  DEFB $0B

; Flag C : Trolley is moving
Flag_C:
  DEFB $0C

; Flag D : Asteroids game has been won
Flag_D:
  DEFB $0D

; Get a game status flag and return it in A, setting the zero flag
; appropriately
;
; Used by the routines at Draw_Background, Print_Object_Text,
; Logic_Pattern_Set, Logic_Wall_Street, Logic_Motor_Way, Logic_Supermarket,
; Logic_Cave, Logic_Town_Square and Logic_School_Lane.
;
; A flag number to get
Get_Flag:
  PUSH HL                 ; Store HL and DE.
  PUSH DE                 ;
  LD E,A                  ; Put the flag in DE.
  LD D,$00                ;
  LD HL,Flag_0            ; Add the base pointer to the flags at Flag_0.
  ADD HL,DE               ;
  LD A,(HL)               ; Get the flag.
  POP DE                  ; Restore HL and DE.
  POP HL                  ;
  OR A                    ; Return, setting the zero flag if A is zero.
  RET                     ;

; Pattern 3 OBJ(x,y) : Match if room object x is y
Logic_Pattern_Obj:
  CALL Item_In_Room       ; Get the flag.
  JP Z,Do_Logic_1         ; Continue looking at patterns if there's a match.
  JP Logic_Condition_False ; Otherwise, flag the pattern as failed.

; Pattern 7 NOT OBJ(x,y) : Match if room object x is not y
Logic_Pattern_Not_Obj:
  CALL Item_In_Room       ; Get the flag.
  JP NZ,Do_Logic_1        ; Continue looking at patterns if there's not a
                          ; match.
  JP Logic_Condition_False ; Otherwise, flag the pattern as failed.

; Check if the item in a room matches a certain object ID and sets the zero
; flag if it is
;
; Used by the routines at Logic_Pattern_Obj and Logic_Pattern_Not_Obj.
;
; HL Buffer containing the nth object number and the target ID
Item_In_Room:
  LD B,(HL)               ; Put the first byte in B as the object number.
  INC HL                  ; Put the second byte in A as the target object ID.
  LD A,(HL)               ;
  INC HL                  ; Move to the next part of the buffer for future use,
  PUSH HL                 ; and store it.
  PUSH AF                  ; Get the current object data for this room in HL.
  CALL Get_Next_Object_Ptr ;
  POP AF                   ;
  CP (HL)                 ; Set the zero flag if the ID matches.
  POP HL                  ; Restore the active buffer pointer in HL and return.
  RET                     ;

; Set a game flag to a value
;
; Used by the routines at Logic_Action_Set_Flag and Logic_Action_Reset_Flag.
;
; HL Points to the value to use and the flag to set
Set_Flag:
  LD E,(HL)
  INC HL
; This entry point is used by the routine at Logic_Action_Set_Flag_2. At this
; point, E contains the ID of the flag to set.
Set_Flag_0:
  PUSH HL                 ; Remember HL.
  LD D,$00                ; Add the ID to the base address of flags at Flag_0.
  LD HL,Flag_0            ;
  ADD HL,DE               ;
  CP (HL)                 ; Set the zero flag if the flag already has this
                          ; value.
  LD (HL),A               ; Set the value.
  CALL NZ,Print_Inventory ; If the value is different, update the inventory as
                          ; it may have changed.
  POP HL                  ; Restore HL.
  JP Logic_Condition_True ; Continue to any further actions to process.

; Lookup table for how much money each task earns.
;
; Each entry contains the following:
; +---+-----------------------------------------------------+
; | 0 | Set to 0 if the task is not complete, or 1 if it is |
; | 1 | Amount to earn, tens part                           |
; | 2 | Amount to earn, hundreds part                       |
; +---+-----------------------------------------------------+
Task_01:
  DEFB $00,$50,$01
Task_02:
  DEFB $01,$00,$01
Task_03:
  DEFB $02,$20,$00
Task_04:
  DEFB $03,$50,$01
Task_05:
  DEFB $04,$50,$01
Task_06:
  DEFB $05,$50,$00
Task_07:
  DEFB $06,$50,$00
Task_08:
  DEFB $07,$40,$00
Task_09:
  DEFB $08,$50,$00
Task_0A:
  DEFB $09,$20,$00
Task_0B:
  DEFB $0A,$50,$01
Task_0C:
  DEFB $0B,$50,$00
Task_0D:
  DEFB $0C,$50,$00
Task_0E:
  DEFB $0D,$50,$01
Task_0F:
  DEFB $0E,$50,$00
Task_10:
  DEFB $0F,$20,$01
Task_11:
  DEFB $10,$50,$00
Task_12:
  DEFB $11,$00,$01
Task_13:
  DEFB $12,$00,$02
Task_14:
  DEFB $13,$00,$02
Task_15:
  DEFB $14,$00,$02
Task_16:
  DEFB $15,$00,$02
Task_17:
  DEFB $16,$00,$02
Task_18:
  DEFB $17,$20,$00
Task_19:
  DEFB $18,$50,$00
Task_1A:
  DEFB $19,$70,$00
Task_1B:
  DEFB $1A,$40,$00
Task_1C:
  DEFB $1B,$50,$00
Task_1D:
  DEFB $1C,$60,$00
Task_1E:
  DEFB $1D,$00,$01
Task_1F:
  DEFB $1E,$60,$00
Task_20:
  DEFB $1F,$50,$00

; Action 5 EARN(x). Pay the current character amount in offset x
;
; HL Pointer to the data for this action.
Logic_Action_Earn:
  LD E,(HL)               ; Get the next byte as the ID for earnings and put it
  INC HL                  ; in DE.
  LD D,$00                ;
  PUSH HL                 ; Remember the current position in the buffer.
  LD HL,Task_01           ; Point HL at the start of the money lookup table.
                          ; (Task_01)
  ADD HL,DE               ; Add the ID multiplied by 3 to get to the right
  ADD HL,DE               ; address.
  ADD HL,DE               ;
  LD A,(HL)               ; Get the ID.
  OR A                    ; Is it zero? ie: money not collected
  JR NZ,Logic_Action_Earn_1 ; Jump forward if not.
; Allocate the money to the current character.
  LD (HL),$01             ; Set the money as collected.
  INC HL                  ; Move to the next position in the buffer.
  LD A,(IY-$0A)           ; Get the current player's earnings (tens portion).
  ADD A,(HL)              ; Add the next tens value to the current player's
                          ; total.
  DAA                     ; Adjust to give an appropriate value in decimal.
  LD (IY-$0A),A           ; Set that as the new tens value.
  INC HL                  ; Move to the next position in the buffer.
  LD A,(IY-$1E)           ; Get the current player's earnings (hundreds
                          ; portion).
  ADC A,(HL)              ; Add the next hundreds value to the current player's
                          ; total, including any overflow from the tens
                          ; portion.
  DAA                     ; Adjust to give an appropriate value in decimal.
  LD (IY-$1E),A           ; Set that as the new hundreds value.
; Now update the grand total for all players.
  DEC HL                  ; Move back to point at the tens portion.
  LD A,($ECFF)            ; Get the tens portion for the current total.
  ADD A,(HL)              ; Add the next tens value.
  DAA                     ; Adjust for decimal.
  LD ($ECFF),A            ; Set the new tens portion.
  INC HL                  ; Move to point at the hundreds portion.
  LD A,(Total_Earnings)   ; Get the hundreds portion for the current total.
  ADC A,(HL)              ; Add the next hundreds total.
  DAA                     ; Adjust for decimal.
  LD (Total_Earnings),A   ; Set the new hunderds portion.
Logic_Action_Earn_1:
  POP HL                  ; Restore the current position in the buffer.
  JP Logic_Condition_True ; Jump forward to execute more actions.

; The next "reward" screen to print, 0 = morning, 1 = lunch, 2 = tea
Next_Reward:
  DEFB $00

; Table of amount of money needed to get morning, lunch and tea breaks
;
; £600 - morning tea, £1300 - lunch, £2100 - tea
Reward_Morning:
  DEFB $00,$06
Reward_Lunch:
  DEFB $00,$13
Reward_Tea:
  DEFB $00,$21

; Total amount of money that can be earned
Max_Money:
  DEFB $00,$40

; Total amount of money currently earned (x / 100), (x % 100)
Total_Earnings:
  DEFB $00,$00

; String lookup tables for morning tea, lunch and tea
Reward_Strings:
  DEFW Morning_Tea
  DEFW Lunch_Time
  DEFW Afternoon_Tea

; Movement table : Laboratory / Reward screens / Cave
Generic_Movement:
  DEFB $30,$78,$02,$02
  DEFB $78,$44,$FE,$02
  DEFB $C0,$8C,$02,$FE

; Current object ID to use when drawing gas
Gas_Frame_ID:
  DEFB $7C

; Room logic : The Laboratory
;
; Used by the routine at Logic_Cave.
Logic_Laboratory:
  LD A,$02                 ; Moving objects decrease endurance by 2 here.
  LD (Endurance_Penalty),A ;
  LD A,(Gas_Frame_ID)     ; Get the object ID to use for the gas.
                          ; (Gas_Frame_ID)
  CALL Generic_Init_Sprites ; Set up moving objects.
  ADD A,$02               ; Move to the next object ID (a masked object is
                          ; double size).
  CP $82                   ; If the ID is greater than 80 set it back to 7C.
  JR NZ,Logic_Laboratory_0 ;
  LD A,$7C                 ;
Logic_Laboratory_0:
  LD (Gas_Frame_ID),A     ; Store the new object ID and return.
  RET                     ;

; See if we've reached a break, and display a message if so
;
; Used by the routine at Main.
Show_Reward:
  LD A,(Next_Reward)      ; Get the index of the next reward screen.
                          ; (Next_Reward)
  ADD A,A                 ; Double it to get a word offset
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  LD HL,Reward_Morning    ; Add the base address of the reward value buffer.
  ADD HL,DE               ; (Reward_Morning)
  LD A,($ECFF)            ; Get the "tens" part of the total money earned.
  SUB (HL)                ; Subtract the "tens" value.
  INC HL                  ; Move to the next entry containsing the "hundreds"
  LD A,(Total_Earnings)   ; Get the "hundreds" part of the total money earned.
  SBC A,(HL)              ; Subtract the "hundreds" value, accounting for any
                          ; carry with the "tens".
  RET C                   ; Return if the value is greater than our current
                          ; earnings.
; We've got enough money, so display a graphic.
  LD BC,$0000             ; Pause for a bit.
Show_Reward_1:
  DEC BC                  ;
  NOP                     ;
  NOP                     ;
  LD A,B                  ;
  OR C                    ;
  JR NZ,Show_Reward_1     ;
  CALL Clear_Graphics     ; Clear the playing area.
  LD HL,Reward_Strings    ; Add the word offset previously stored in DE to the
  ADD HL,DE               ; base address of the message buffer.
                          ; (Reward_Strings)
  LD E,(HL)               ; Put the actual address in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL.
  LD DE,$0000             ; Set the position to top left.
  CALL Print_String       ; Print the string pointed to by HL.
  CALL Update_Screen      ; Draw the screen.
Show_Reward_2:
  CALL Init_Sprites       ; Update the sprite buffers.
  LD A,(Next_Reward)      ; Get the index of the next reward screen.
                          ; (Next_Reward)
  ADD A,A                 ; Double it and add 65 to get an appropriate index
  ADD A,$65               ; for the reward screen moving graphics.
  LD IX,Generic_Movement  ; Point IX at the movement table for the reward
                          ; screens. (Generic_Movement)
  LD B,$03                ; Three rounds to draw.
Show_Reward_3:
  PUSH BC                 ; Store BC.
  LD BC,Generic_Bounds    ; Point BC at the bounds for the moving graphics.
  CALL Update_Next_Sprite ; Update the moving objects.
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  POP BC                  ; Restore BC.
  DJNZ Show_Reward_3      ; Loop back while there's more to display.
  CALL Update_Sprites     ; Put the sprites on screen.
  CALL Detect_In          ; Was a key pressed?
  OR A                    ;
  JR Z,Show_Reward_2      ; If not, loop back to draw some more.
  LD HL,Next_Reward       ; Move onto the next reward screen index.
  INC (HL)                ;
  CALL Draw_Background    ; Draw the room.
  RET                     ; Return.

; Set up moving objects in the Laboratory
;
; Used by the routines at Logic_Laboratory and OutOfTown.
Generic_Init_Sprites:
  LD IX,Generic_Movement  ; Point IX at the movement table. (Generic_Movement)
  LD B,$03                ; 3 objects to update.
Generic_Init_Sprites_0:
  PUSH BC                 ; Remember the count in BC.
  LD BC,Generic_Bounds    ; Point BC at the bounds table. (Generic_Bounds)
  CALL Update_Next_Sprite ; Update the next moving object.
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  PUSH AF                 ; Check for collision detection.
  CALL Detect_Collision   ;
  POP AF                  ;
  POP BC                  ; Restore the count in BC.
  DJNZ Generic_Init_Sprites_0 ; Loop until all objects are drawn.
  RET                     ; Return.

; Action 2 SET(x) : Set flag xx
Logic_Action_Set_Flag:
  LD A,$01                ; Set the value as 1.
  JP Set_Flag             ;

; Action 3 RESET(x) : Reset flag xx
Logic_Action_Reset_Flag:
  XOR A                   ; Set the value as 0.
  JP Set_Flag             ;

; Action 4 SET(x,y) : Set flag xx to yy
Logic_Action_Set_Flag_2:
  LD E,(HL)               ; Put the flag ID in E.
  INC HL                  ;
  LD A,(HL)               ; Put the value in A.
  INC HL                  ;
  JP Set_Flag_0           ; Set it.

; Pattern 2 SET(x) : Match if flag x set
Logic_Pattern_Set:
  LD A,(HL)               ; Get the flag ID in A.
  INC HL                  ;
  CALL Get_Flag           ; Get the flag's value.
  JP Z,Logic_Condition_False ; Mark the pattern as failed if it's 0.
  JP Do_Logic_1           ; Otherwise process other actions.

; List of characters that should bring each letter
Safe_Characters:
  DEFB $FF,$02,$04,$08,$10,$01,$FF

; Number of combination letters completed + 1
Safe_nLetters:
  DEFB $01

; Action 8 SAFE. The safe has been touched with a combination letter. Process
; it now.
Action_Safe:
  PUSH HL                 ; Remember HL.
  LD HL,Safe_Characters   ; Point HL at the list of which order to bring
                          ; letters. (Safe_Characters)
  LD A,(Safe_nLetters)    ; Put the number of safe letters already used in A.
                          ; (Safe_nLetters)
  LD E,A                  ; Put in this in DE.
  LD D,$00                ;
  ADD HL,DE               ; Add the base address of the letters to give an
                          ; offset from Safe_Characters.
  LD A,(HL)               ; Get the next character ID.
  CP $FF                  ; Is it an end marker (FF)?
  JR Z,Action_Safe_1      ; Jump forward if it is.
  CP (IY-$28)             ; Is the character ID the current player?
  JR NZ,Action_Safe_2     ; Jump forward if it isn't.
; The right character is at the safe.
  INC E                   ; Move to the next position in the buffer.
  LD A,E                  ; Store this as the number of safe letters used.
  LD (Safe_nLetters),A    ;
  CP $06                  ; Have all safe letters been used?
  JP Z,Cracked_Safe       ; If so, the safe is cracked and the game is won!
                          ; Display the final sequence.
Action_Safe_1:
  POP HL                  ; Otherwise, restore HL and process more actions.
  JP Logic_Condition_True ;
; The wrong character is at the safe.
Action_Safe_2:
  DEC HL                  ; Move back in the list.
  LD A,(HL)               ; Get the character ID from here.
  CP (IY-$28)             ; Does it equal the current character?
  JR Z,Action_Safe_1      ; If so, leave here.
  LD A,$01                ; Otherwise, reset the number of letters completed
  LD (Safe_nLetters),A    ; back to 1.
  JR Action_Safe_1        ; Jump back to return and process more actions.

; Action 7 SPACE. Play the "asteroids" phone box game
Space_Game:
  XOR A                             ; Reset the "create new lightning bolts"
  LD (Space_Lightning_Regenerate),A ; flag. (Space_Lightning_Regenerate)
  DEC A                   ; Set the missile as inactive. (Space_Missle_X)
  LD (Space_Missle_X),A   ;
; Set the starting position as left or right, depending on which phone booth
; was entered.
  LD (IY+$00),$6E         ; Set the current graphic to the space ship.
                          ; (object_6F)
  LD A,(IY+$05)           ; Get the x co-ordinate.
  CP $80                  ; If it's less then 80 then set to 30 otherwise set
  LD (IY+$05),$C0         ; it to C0.
  JR NC,Space_Game_1      ;
  LD (IY+$05),$30         ;
Space_Game_1:
  LD (IY+$0A),$78         ; Set the y co-ordinate to 78.
  LD HL,Space_Lightning_Init_States ; Copy the initial state
  LD DE,Space_Lightning_States      ; (Space_Lightning_Init_States) to the
  LD BC,$003C                       ; working state (Space_Lightning_States).
  LDIR                              ;
  CALL Clear_Graphics     ; Clear the playing area.
; Put stars randomly on-screen.
  LD HL,$4800             ; Point HL at the start of the main playing area.
  LD D,$00                ; Set D to 0.
  LD A,$53                ; Set R to 53 used to generate a random number.
  LD R,A                  ;
Space_Game_2:
  LD A,R                  ; Put the next value of R in E, in ensuring a
  LD E,A                  ; pseudo-random offset will be used.
  LD (HL),$20             ; Set bit 5, to print a dot.
  ADD HL,DE               ; Move to the next random place.
  LD A,H                  ; Continue until we run out of screen and hit the
  CP $58                  ; attribute area.
  JR NZ,Space_Game_2      ;
  LD HL,Asteroid_Graphics ; Point HL at the background graphic.
                          ; (Asteroid_Graphics)
  LD DE,$0F04             ; Set the position.
  CALL Draw_Graphic       ; Draw the graphic.
  CALL Update_Screen      ; Copy the screen to the graphic buffer.
; Run the main loop of the game.
Space_Game_3:
  CALL Update_Character_In_Room_T ; Update the "{character} is in {room}" tick
                                  ; count, if any.
  CALL Init_Sprites       ; Update the sprite buffers.
  CALL Space_Check_Movement ; Check for player's movement.
  CALL Space_Check_Fire       ; Move the objects around and check for firing.
  CALL Space_Check_Fire       ;
  CALL Space_Check_Fire       ;
  CALL Space_Collision_Detect ;
  CALL Update_Sprites     ; Put sprites on screen.
; See if the player is near one of the exit portals.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  LD B,A                  ; Is it close enough to the right portal?
  SUB $24                 ;
  CP $F8                  ;
  JR NC,Space_Game_0      ; Jump forward if so.
  LD A,B                  ; Is it close enough to the left portal?
  SUB $D4                 ;
  CP $F8                  ;
  JR C,Space_Game_3       ; Jump back if not and run the main loop again.
; The x co-ordinate lines up with a portal, so check the y co-ordinate.
Space_Game_0:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  SUB $7C                 ; Is it close enough to the portal?
  CP $F8                  ;
  JR C,Space_Game_3       ; Jump back if not and run the main loop again.
; The player is by a portal. Work out which one it was, and drop them back into
; town.
  LD A,B                  ; Get the X co-ordinate previously stored in B.
  CP $80                  ; Is it less than 80? ie: left hand side
  JR NC,Space_Game_4      ; If it is, set the x co-ordinates as DC and the room
  LD (IY+$05),$04         ; as 01 (Stamp Street), otherwise, set the x
  LD (IY+$0F),$13         ; co-ordinate as 04 and the room as 13 (Reference
  JR Space_Game_5         ; Road).
Space_Game_4:
  LD (IY+$05),$DC         ;
  LD (IY+$0F),$01         ;
; This entry point is used by the routines at Chase and OutOfTown.
Space_Game_5:
  CALL Draw_Background    ; Draw the room.
  LD (IY+$0A),$98         ; Set the y co-ordinate as 98 ie: on the floor
  LD (IY+$46),$00         ; Set the character as not jumping.
  LD (IY+$00),$00         ; Set the frame ID back to 0.
  LD SP,$FC00             ; Reset the stack to its initial place.
  JP Main_0               ; Jump back to the main game loop.

; Initialise the sprite buffers
;
; Used by the routines at Init_Game, Show_Reward, Space_Game, Update_Room,
; Chase and OutOfTown.
;
; This routine takes a copy of the screen already in 5B00 (set by the routine
; in Update_Screen) ready to start overlaying sprites on top of it.
Init_Sprites:
  LD DE,$6B00             ; Point DE at the sprite buffer.
  LD HL,$5B00             ; Point HL at the screen buffer.
  LD BC,$1000             ; Length is 1000.
Init_Sprites_1:
  CALL Copy_Row           ; Copy a row.
  JP PE,Init_Sprites_1    ; Loop back while there is more to draw.
; Now copy the attributes.
  LD BC,$0200             ; Length is 0200.
  LD HL,$FE00             ; Point HL at the attribute buffer.
  LD DE,$FC00             ; Point DE at the sprite attribute buffer.
Init_Sprites_2:
  CALL Copy_Row           ; Copy a row.
  JP PE,Init_Sprites_2    ; Loop back while there is more to draw.
  RET                     ; Otherwise return.

; Refresh the current room
;
; Used by the routines at Main_update and Cracked_Safe.
Update_Room:
  CALL Init_Sprites       ; Initialize the sprite buffers.
  LD A,(IY+$0F)           ; Get the current room in A.
  LD (Current_Room),A
  LD B,$00                 ; Point HL at the start of the object buffer for
  CALL Get_Next_Object_Ptr ; this room.
Update_Room_1:
  LD A,(HL)               ; Put the object ID.
  CP $FF                  ; Is this an end marker?
  JR Z,Update_Room_2      ; Jump forward if it is, nothing left to do.
  INC HL                  ; Put the co-ordinates found in DE.
  LD E,(HL)               ;
  INC HL                  ;
  LD D,(HL)               ;
  INC HL                  ; Move to the buffer for the next item.
  INC HL                  ;
  LD (Draw_XPos),DE       ; Put the position in the scratch buffer at
                          ; Draw_XPos.
  CALL Draw_Non_Mask      ; Draw the object, and loop back to see if there is
  JR Update_Room_1        ; anything further to draw.
; See if there is any custom routines for this room, and if so, execute them.
Update_Room_2:
  LD E,(IY+$0F)           ; Put the current room in E and double it to get a
  SLA E                   ; word offset.
  LD D,$00                ;
  LD HL,Logic_Table       ; Add the base address of the room logic table
  ADD HL,DE               ; (Logic_Table).
  LD E,(HL)               ; Put the address found in DE.
  INC HL                  ;
  LD D,(HL)               ;
  EX DE,HL                ; Swap DE and HL so HL points to the logic routine.
  JP (HL)                 ; Execute it.

; Jump table for custom room logic
;
; If a room has extra code associated with it, a pointer to it is stored here.
; If there is no custom routine, a pointer to Logic_None is stored instead,
; which is a simple RET instruction.
Logic_Table:
  DEFW Logic_Town_Square  ; The Town Square
  DEFW Logic_None         ; Stamp Street
  DEFW Logic_PostOffice   ; The Post Office
  DEFW Logic_None         ; Market Street
  DEFW Logic_Supermarket  ; The Super Market
  DEFW Logic_Park         ; The Park
  DEFW Logic_None         ; Wobbly Walk
  DEFW Logic_None         ; Rubble Road
  DEFW Logic_Wall_Street  ; Wall Street
  DEFW Logic_None         ; Pete Street
  DEFW Logic_WorkShed     ; The Work Shed
  DEFW Logic_School_Lane  ; School Lane
  DEFW Logic_School       ; The School
  DEFW Logic_None         ; Baker Street
  DEFW Logic_Bakers       ; The Bakers
  DEFW Logic_Pub          ; The Pub
  DEFW Logic_Motor_Way    ; Motor Way
  DEFW Logic_Laboratory   ; The Laboratory
  DEFW Logic_None         ; The Garage
  DEFW Logic_None         ; Reference Road
  DEFW Logic_None         ; The Library
  DEFW Logic_None         ; Penny Lane
  DEFW Logic_Bank         ; The Bank
  DEFW Logic_Wallys_House ; Wally's House
  DEFW Logic_None         ; Meat Street
  DEFW Logic_None         ; The Butchers
  DEFW Logic_None         ; Trunk Road
  DEFW Logic_Zoo          ; The Zoo
  DEFW Logic_None         ; Rail Road
  DEFW Logic_None         ; The Station
  DEFW Logic_Docks        ; The Docks
  DEFW Logic_Sewer        ; The Sewer
  DEFW Logic_Cave         ; The Cave

; Update the current position of moving objects
;
; Used by the routines at Show_Reward, Generic_Init_Sprites,
; Update_Jumping_Jack, Logic_PostOffice, Move_Herbert, Logic_Pub, Logic_Zoo,
; Logic_Docks, Logic_Sewer, Logic_Bakers, Logic_WorkShed, Logic_Supermarket,
; Logic_School_Lane, Logic_Park, Logic_Bank, Logic_Wallys_House,
; Space_Collision_Detect and Space_Check_Fire.
;
; IX pointer to a buffer containing current positions
; BC Pointer to a buffer containing bounds
;
; The buffer containing bounds is fixed at:
; +---+-----------------------+
; | 0 | Minimum x co-ordinate |
; | 1 | Maximum x co-ordinate |
; | 2 | Minimum y co-ordinate |
; | 3 | Maximum y co-ordinate |
; +---+-----------------------+
;  The buffer containing the positions varies over time and contains:
; +---+-----------------------+
; | 0 | Current x co-ordinate |
; | 1 | Current y co-ordinate |
; | 2 | Distance to move in x |
; | 3 | Distance to move in y |
; +---+-----------------------+
;  The distances to move are stored as a 2s complement value. When an object
; hits the minimum or maximum value, its distance to move is inverted between
; positive and negative and it starts travelling back in the other direction.
;
; The function updates IX on each call to point at the next entries beyond the
; one it was called with, and can be called multiple times or in a loop for
; each moving object in the room.
Update_Next_Sprite:
  LD E,(IX+$02)           ; Put the distance to move in DE.
  LD D,(IX+$03)           ;
  PUSH BC                 ; Store BC and AF.
  PUSH AF                 ;
  XOR A                        ; Reset flags used in this routine.
  LD (Object_Hit_Boundary_Y),A ;
  LD (Object_Hit_Boundary_X),A ;
  LD A,(IX+$00)           ; Get the current x co-ordinate in A.
  ADD A,E                 ; Add the distance to move by.
  LD L,A                  ; Put this in L.
; Check the minimum x co-ordinate.
  LD A,(BC)               ; Get the minimum x co-ordinate.
  INC BC                  ; Point BC to the next place in the buffer.
  CP L                    ; Is our current x co-ordinate the minimum?
  JR NZ,Update_Next_Sprite_1 ; Jump forward if not.
; x co-ordinate has reached the minimum or maximum.
Update_Next_Sprite_0:
  LD A,$01                     ; Flag x boundary reached.
  LD (Object_Hit_Boundary_X),A ;
  LD A,E                  ; Flip the distance to change between negative and
  NEG                     ; positive.
  LD E,A                  ;
  JR Update_Next_Sprite_2 ;
; Check the maxmimum x co-ordinate.
Update_Next_Sprite_1:
  LD A,(BC)               ; Get the maxmimum x co-ordinate.
  CP L                    ; Is our current x co-ordinate the maximum?
  JR Z,Update_Next_Sprite_0 ; Jump back to flip direction if so.
; x co-ordinate is in range, check the y co-ordinate.
Update_Next_Sprite_2:
  INC BC                  ; Point BC to the next place in the buffer.
  LD A,(IX+$01)           ; Get the current y co-ordinate in A.
  ADD A,D                 ; Add the distance to move by.
  LD H,A                  ; Put this in H.
; Check the minimum y co-ordinate.
  LD A,(BC)               ; Get the minumum y co-ordinate.
  INC BC                  ; Point BC to the next place in the buffer.
  CP H                    ; Is our current y co-ordinate the minimum?
  JR NZ,Update_Next_Sprite_4 ; Jump forward if not.
; y co-ordinate has reached the minimum or maximum.
Update_Next_Sprite_3:
  LD A,$01
  LD (Object_Hit_Boundary_Y),A
  LD A,D                  ; Flip the distance to change between negative and
  NEG                     ; positive.
  LD D,A                  ;
  JR Update_Next_Sprite_5 ;
; Check the maximum y co-ordinate.
Update_Next_Sprite_4:
  LD A,(BC)               ; Get the maximum y co-ordinate.
  CP H                    ; Is our current y co-ordinate the maxmimum?
  JR Z,Update_Next_Sprite_3 ; Jump back to flip the direction if so.
; The positions have all been updated, so write them out.
Update_Next_Sprite_5:
  LD (Draw_XPos),HL       ; Write the position to update that will be used by
                          ; the next call to the routine at Draw_Non_Mask.
  LD (IX+$00),L           ; Write back the positions.
  LD (IX+$01),H           ;
  LD (IX+$02),E           ; Write back the directions.
  LD (IX+$03),D           ;
  POP AF                  ; Restore AF and BC.
  POP BC                  ;
; This entry point is used by the routines at Space_Collision_Detect and
; Space_Move_Lightning.
Update_Next_Sprite_6:
  INC IX                  ; Move to the next entry and return.
  INC IX                  ;
  INC IX                  ;
  INC IX                  ;
  RET                     ;

; Set the attributes for the fountain in the town square if it is repaired
;
; Used by the routines at Move_Herbert and Logic_Town_Square.
TownSquare_Attributes:
  PUSH AF                 ; Remember AF.
  EXX                     ; Exchange main registers.
  LD A,(Next_Attribute)   ; Put the current attribute (Next_Attribute) in C.
  LD C,A                  ;
  LD A,(Draw_YPos)        ; Get the Y co-ordinate to print. (Draw_XPos)
  AND $07                 ; Select bits 0 - 2.
  JR Z,TownSquare_Attributes_0
  LD B,$03
  JR TownSquare_Attributes_1
TownSquare_Attributes_0:
  LD B,$02
TownSquare_Attributes_1:
  LD A,(Draw_YPos)        ; Get the Y co-ordinate to print.
  AND $F8                 ; Select bits 3 - 8
  LD H,$00                ; Put this in HL.
  LD L,A                  ;
  ADD HL,HL               ; Multiply by 4 to get a suitable offset.
  ADD HL,HL               ;
  LD DE,$FB00             ; Add the base address to get an offset from FC00.
  ADD HL,DE               ; Note that this address is modified by the routines
                          ; in Draw_Non_Mask and Draw_Mask.
  LD DE,$001E             ; Set DE as the amount to increment for each row.
TownSquare_Attributes_2:
  LD (HL),C               ; Set the attribute for the next two columns.
  INC HL                  ;
  LD (HL),C               ;
  INC HL                  ;
  LD A,(Draw_XPos)        ; Get the X co-ordinate to print.
  AND $07                 ; Select bits 0 - 2.
  JR Z,TownSquare_Attributes_3 ; Jump forward if this is 0.
  LD (HL),C               ; Otherwise set the attribute here.
TownSquare_Attributes_3:
  ADD HL,DE               ; Move on a row.
  DJNZ TownSquare_Attributes_2 ; Loop while all rows are printed.
  EXX                     ; Exchange main registers.
  POP AF                  ; Restore AF and return.
  RET                     ;

; Action 9 CHASE. Drop down to the "shark chase" game
Chase:
  LD A,(IY+$05)           ; Get the X co-ordinate.
  SUB $08                 ; Move back 8 columns.
  CP $E0                  ; If the co-ordinate is greater than E0 then set it
  JR C,Chase_1            ; to that.
  LD A,$E0                ;
Chase_1:
  SRL A                   ; Divide it by 8 and set the result in E as the
  SRL A                   ; column to draw at.
  SRL A                   ;
  LD E,A                  ;
  LD D,$17                ; Set the row to 17.
  LD HL,Hole_Graphics     ; Point HL at the data for the hole.
  CALL Overwrite_Screen   ; Patch the display to overwrite graphics.
; A hole has opened, so drop the player down to it.
Chase_2:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  ADD A,$04               ; Drop down four rows.
  CP $A0                  ; If the co-ordinate is creater than A0 set it to
  JR C,Chase_3            ; that.
  LD A,$A0                ;
Chase_3:
  LD (IY+$0A),A           ; Set the new Y co-ordinate.
  CALL Main_update        ; Move everything on screen.
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $A0                  ; Is it A0?
  JR NZ,Chase_2           ; Jump back if not to fall some more.
; The player has fallen into the hole, so update for the chase sequence.
  LD (IY+$00),$00         ; Set the frame counter to 0.
  LD A,(IY-$3C)           ; Get the current direction of the sprite.
                          ; (Sprite_Direction)
  OR A                    ; Is it 0 (left)?
  CALL NZ,Change_Direction ; If not, need to flip the sprite around to be
                           ; left-facing.
  LD A,$F0                ; Set the shark's X co-ordinate to F0.
  LD (Chase_Shark_X),A    ;
  LD HL,Chase_Graphics    ; Point HL directly at the background graphics.
                          ; (Chase_Graphics)
  CALL Clear_Graphics     ; Clear the playing area.
  CALL Draw_Background_1  ; Draw the background graphics.
  LD (IY+$05),$DA         ; Set the X co-ordinate to DA.
  LD (IY+$0A),$3C         ; Set the Y co-ordinate to 3C.
Chase_4:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is the player on the ground yet?
  JR Z,Chase_5            ; Jump forward if so.
  ADD A,$04               ; Otherwise just drop down a row.
  LD (IY+$0A),A           ;
Chase_5:
  CALL Init_Sprites       ; Initialize the sprite buffers.
  CALL Chase_Update_Shark ; Update the shark.
  CALL Chase_Detect_Movement ; Check for player movement.
  CALL Update_Sprite      ; Update the sprite buffer.
  CALL Update_Sprites     ; Put the sprites on screen.
  LD A,(IY+$05)           ; Get the Y co-ordinate.
  OR A                    ; Is it 0?
  JR NZ,Chase_4           ; Jump back if it's not.
  LD (IY+$0F),$1F         ; Set the Y co-ordinate to 1F.
  LD (IY+$05),$F0         ; Set the X co-ordinate to F0.
  JP Space_Game_5         ; Move to the sewer.

; Direction of the shark
;
; 0 - left, 1 - right
Shark_Direction:
  DEFB $00

; Flip the shark so it's the right way round.
;
; Used by the routines at Chase_Update_Shark and Logic_Sewer.
Shark_Reverse:
  EXX                     ; Exchange main registers.
  XOR $01                 ; Flip bit 1 in Shark_Direction.
  LD (Shark_Direction),A  ;
  LD DE,Object_2C         ; Point DE at the shark graphic. (Object_2C)
  LD BC,$00C0             ; Set the size.
  CALL Reverse_Sprite     ; Change the sprite to reverse direction.
  RET                     ; Return.

; Chase : Update the shark
;
; Used by the routine at Chase.
Chase_Update_Shark:
  LD A,(Shark_Direction)  ; Get the shark's direction.
  OR A                    ; Is it facing left?
  CALL NZ,Shark_Reverse   ; If not, reverse the graphic so it is.
  LD HL,(Chase_Shark_X)   ; Put the x co-ordinate in L and set the y
  LD H,$98                ; co-ordinate to 98.
  LD A,$30                ; Set the object ID to be the shark's head (88F8)
  LD (Draw_XPos),HL       ; Set the position.
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  LD H,$A8                ; Set the y co-ordinate to A8.
  LD (Draw_XPos),HL       ; Set the position.
  LD A,(Shark_Frame_ID)   ; Get the object ID of the shark's body.
  XOR $02                 ; Toggle bit 2, so it alternates between 2D and 2F.
  LD (Shark_Frame_ID),A   ;
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  LD A,$0C                 ; Touching the shark drops endurance by 0C.
  LD (Endurance_Penalty),A ;
  CALL Detect_Collision   ; Check for collision detection.
  LD A,(IY+$0A)           ; Get the player's Y co-ordinate.
  CP $98                  ; Is it 98 ie: ground level.
  RET NZ                  ; Return if it is, chase hasn't started.
; The chase is on.
  LD HL,Chase_Shark_X     ; Point HL to the shark's x co-ordinate.
  LD A,(HL)               ; Has the shark caught up with the player?
  SUB (IY+$05)            ;
  SUB $01                 ;
  CP $FE                  ;
  JR NC,Chase_Update_Shark_1 ; Jump forward if it has, it doesn't need to chase
                             ; any more.
  LD A,(HL)               ; Otherwise decrement the X co-ordinate by 2.
  SUB $02                 ;
  LD (HL),A               ;
Chase_Update_Shark_1:
  LD A,(HL)               ; Is the shark close enough to the player to attack?
  SUB (IY+$05)            ;
  SUB $0C                 ;
  CP $E0                  ;
  JR C,Chase_Update_Shark_2 ; Jump forward if it isn't.
; The shark is close enough to attack the player, so don't make them advance
; otherwise they'll overtake and not attack anymore.
  INC (HL)                ; Increment the X co-ordinate.
  LD A,($F0E4)            ; Get the number of ticks in this run.
  INC A                   ; Increment it.
  CP $05                  ; Return if it doesn't equal 5 yet.
  RET Z                   ;
  JR Chase_Update_Shark_3 ; Otherwise set it to that value.
; The shark isn't close enough yet.
Chase_Update_Shark_2:
  LD A,($F0E4)            ; Get the number of ticks in this run.
  DEC A                   ; Decrement it.
  RET Z                   ; Return if it doesn't equal 0 yet.
Chase_Update_Shark_3:
  LD ($F0E4),A            ; Otherwise set it to that value and return.
  RET                     ;

; Chase : Room data
Chase_Graphics:
  DEFB $80,$07,$75,$03,$7F,$00

; Chase : Current x co-ordinate of the shark
Chase_Shark_X:
  DEFB $F0

; Chase : The amount of ticks left to move the player on this control action
Chase_T:
  DEFB $04

; Chase : The next direction control the player should use to move
;
; 1 - left, 0 - right
Chase_Next_Control:
  DEFB $00

; Chase : Check for player movement
;
; Used by the routine at Chase.
Chase_Detect_Movement:
  LD A,(IY+$0A)           ; Get the Y co-ordinate.
  CP $98                  ; Is the player on the floor yet?
  RET NZ                  ; Return if so.
  CALL Detect_Left        ; Check for 'left' and put the result in C.
  LD C,A                  ;
  CALL Detect_Right       ; Check for 'right' and put the result in B.
  LD B,A                  ;
  LD A,(Chase_Next_Control) ; Get the next direction control.
                            ; (Chase_Next_Control)
  OR A                    ; Is it zero?
  JR NZ,Chase_Detect_Movement_1 ; Jump forward if it isn't.
; Player should be moving left.
  LD A,B                  ; Did the player move right?
  OR A                    ;
  JR NZ,Chase_Detect_Movement_4 ; Jump forward to reduce the tick count if so.
  LD A,C                     ; Otherwise test for moving left.
  JR Chase_Detect_Movement_2 ;
; Player should be moving right.
Chase_Detect_Movement_1:
  LD A,C                  ; Did the player move left?
  OR A                    ;
  JR NZ,Chase_Detect_Movement_4 ; Jump forward to reduce the tick count if so.
  LD A,B                  ; Otherwise test for moving right.
Chase_Detect_Movement_2:
  OR A                    ; Did the player move in the correct direction?
  JR Z,Chase_Detect_Movement_4 ; If not, skip forward to reducing the frame
                               ; count.
; The character moved in the right way, so move them forward.
  LD A,$05                ; Set the number of ticks left (Chase_T) to 5.
  LD (Chase_T),A          ;
  LD A,(Chase_Next_Control) ; Invert the direction flag.
  XOR $01                   ;
  LD (Chase_Next_Control),A ;
Chase_Detect_Movement_3:
  LD (IY+$3C),$FF         ; Set the direction to left.
  LD (IY+$41),$FF         ;
  JP Move_Character       ; Move the character.
; Move forward one frame.
Chase_Detect_Movement_4:
  LD HL,Chase_T           ; Point HL at the tick count. (Chase_T)
  LD A,(HL)               ; Get the value in A.
  OR A                    ; Is it zero?
  RET Z                   ; Return if it is.
  DEC (HL)                   ; Otherwise, reduce the tick count and move.
  JR Chase_Detect_Movement_3 ;

; Movement table : Jumping jack
Jumping_Jack_Movement:
  DEFB $00,$A8,$02,$FE

; Next room for the jumping jack to appear in.
Jumping_Jack_Room:
  DEFB $05

; Tick counter until the jumping jack updates
Jumping_Jack_T:
  DEFB $02

; Bounds table : Jumping jack
Jumping_Jack_Bounds:
  DEFB $00,$F0,$A0,$A8

; See if the jumping jack needs to be on screen, and if so, move it
;
; Used by the routine at Main_update.
Update_Jumping_Jack:
  LD A,$04                 ; Touching the jumping jack drops endurance by 4.
  LD (Endurance_Penalty),A ;
  LD IX,Jumping_Jack_Movement ; Point IX at the movement table.
  LD BC,Jumping_Jack_Bounds ; Point BC at the bounds.
  CALL Update_Next_Sprite ; Update the object positions.
  LD A,(IX-$04)           ; Get the x co-ordinate.
  OR A                    ; Is it zero?
  JR NZ,Update_Jumping_Jack_1 ; Jump forward if it isn't.
  DEC (IX+$01)            ; Decrement the tick counter.
  JR NZ,Update_Jumping_Jack_1 ; Jump forward if it's not zero.
; The tick counter has reached 0, need to update.
  LD (IX+$01),$02         ; Set the tick counter back to 2.
  LD (IX-$04),$00         ; Set the x co-ordinate to 0.
  LD (IX-$03),$A8         ; Set the y co-ordinate to A8.
  LD (IX-$01),$FE         ; Set the direction to -2. (ie: 2 updwards)
  CALL Herbert_Get_Next_Room ; Set the next room for the jumping jack to appear
  LD (IX+$00),A              ; in. and return.
  RET                        ;
; Now draw the jumping jack if it's visible.
Update_Jumping_Jack_1:
  LD A,(IX+$00)           ; Get the jumping jack's current room.
  CP (IY+$0F)             ; Is it the same room the player is in?
  RET NZ                  ; Return if not.
; The jumping jack is in the same room as the player, so draw it.
  LD A,(IX-$03)           ; Get the Y co-ordinate.
  CP $A8                      ; If it's A8 set A to the first jumping jack
  LD A,$48                    ; graphic. (Object_48) Otherwise, set A to the
  JR NZ,Update_Jumping_Jack_2 ; second jumping jack graphic
  LD A,$4A                    ;
Update_Jumping_Jack_2:
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  CALL Detect_Collision   ; Check for collision detection.
  RET                     ; Return.

; Initial co-ordinate moving to a room with more miles.
OutOfTown_More:
  DEFB $00

; Initial co-ordinate moving to a room with less miles.
OutOfTown_Less:
  DEFB $00

; The direction to face movable objects in the "out of town" screen
;
; 1 = right, 2 = left
OutOfTown_Direction:
  DEFB $00

; The number of miles walked out of town
OutOfTown_Miles:
  DEFW $0000

; Room data : Out of town
OutOfTown_Graphics:
  DEFB $80,$07,$86,$20,$86,$70,$86,$C8
  DEFB $89,$07,$89,$2F,$89,$57,$89,$7F
  DEFB $8A,$A7,$8A,$C7,$8A,$E7,$74,$46
  DEFB $7F,$00

; Action A OUT. Go to the "out of town" screen
OutOfTown:
  LD A,(IY+$05)           ; Put the X co-ordinate in A.
  LD HL,$06EA             ; Set the extremities in HL.
  CP $80                  ; Is the character position greater than 80?
  LD A,$FE                ; Set starting position as the far right.
  JR C,OutOfTown_0        ; If not, the character's moved left to here, so jump
                          ; forward.
  LD HL,$EA06             ; Set the extremities in HL.
  LD A,$02                ; Set position at the far left.
OutOfTown_0:
  LD (OutOfTown_More),HL  ; Store the extremeties.
  LD (OutOfTown_Direction),A ; Store the current position.
  LD HL,$0000             ; Set the number of miles walked to 0.
  LD (OutOfTown_Miles),HL ; (OutOfTown_Miles)
  LD (IY+$0A),$98         ; Ensure the player is on the ground.
  CALL Clear_Graphics     ; Clear the playing area.
  LD HL,OutOfTown_Graphics ; Point HL to the graphics data.
  CALL Draw_Background_1  ; Draw it.
  JR OutOfTown_3          ; Enter the room.
OutOfTown_1:
  CALL Init_Sprites       ; Initialize the sprite buffers.
  CALL OutOfTown_Print_Miles ; Print the number of miles out of town
  LD A,$04                 ; Touching an arrow drops the endurance by 4.
  LD (Endurance_Penalty),A ;
  LD A,(OutOfTown_Direction) ; Get the direction of arrows.
  CP $02                  ; Is the direction left?
  LD A,$82                ; Set A to "left arrow".
  JR Z,OutOfTown_2        ; Jump if the direction is left.
  LD A,$84                ; Set A to "right arrow".
OutOfTown_2:
  CALL Generic_Init_Sprites ; Set up moving objects (the movement is the same
                            ; as the Laboratory).
  CALL Detect_Input       ; Get user input.
  CALL Update_Sprite      ; Put characters in the sprite buffer.
  CALL Update_Sprites     ; Put the sprites on scren.
  LD BC,(OutOfTown_More)  ; Get the co-ordinate limits in BC.
  LD HL,(OutOfTown_Miles) ; Put the number of miles walked in HL.
  LD A,(IY+$05)           ; Put the X co-ordinate in B.
  CP B                    ; Has it reached the edge?
  JR NZ,OutOfTown_4       ; Jump forward if it hasn't.
; Move to a room with more miles.
OutOfTown_3:
  LD BC,(OutOfTown_More)  ; Put the extremities in BC.
  LD HL,(OutOfTown_Miles) ; Put the number of miles in HL.
  LD A,(OutOfTown_Direction) ; Put the direction in C.
  ADD A,C                 ; Set the X co-ordinate to the initial position.
  LD (IY+$05),A           ;
  INC HL                  ; Increment the number of miles.
  LD (OutOfTown_Miles),HL ;
  JR OutOfTown_1          ; Jump back to run the room.
; Move to a room with less miles.
OutOfTown_4:
  CP C                    ; Is the Y co-ordinate at the edge?
  JR NZ,OutOfTown_1       ; Jump back if it isn't.
  DEC HL                  ; Decrement the number of miles.
  LD (OutOfTown_Miles),HL ;
  LD A,H                  ; Is this zero?
  OR L                    ;
  JR Z,OutOfTown_5        ; If so, jump forward as we're back in town.
  LD A,(OutOfTown_Direction) ; Put the direction in A.
  LD C,A                  ; Set the X co-ordinate to the initial position.
  LD A,B                  ;
  SUB C                   ;
  LD (IY+$05),A           ; Set the new X co-ordinate.
  JR OutOfTown_1          ; Jump back to run the room.
; Finally found our way back to town.
OutOfTown_5:
  LD (IY+$05),B           ; Set the X co-ordinate as the starting point for a
                          ; room with less miles.
  JP Space_Game_5

; Print the current miles "out of town"
;
; Used by the routine at OutOfTown.
OutOfTown_Print_Miles:
  LD HL,(OutOfTown_Miles) ; Put the number of miles in HL.
  LD BC,Charset           ; Set the drawing routine at Print_Graphic to use the
  LD ($B7E9),BC           ; character set (Charset) as a base address.
  LD DE,$1208             ; Set the position.
  LD A,$2F                ; Set A just before ASCII '0' so the correct digits
                          ; are printed.
  LD BC,$2710                ; Print tens of thousands.
  CALL OutOfTown_Print_Digit ;
  LD BC,$03E8                ; Print thousands.
  CALL OutOfTown_Print_Digit ;
  LD BC,$0064                ; Print hundreds.
  CALL OutOfTown_Print_Digit ;
  LD BC,$000A                ; Print tens.
  CALL OutOfTown_Print_Digit ;
  LD BC,$0001                ; Print units.
  CALL OutOfTown_Print_Digit ;
  LD A,$4D                   ; Print 'M'.
  JR OutOfTown_Print_Digit_0 ;

; Print a digit for the miles "out of town"
;
; Used by the routine at OutOfTown_Print_Miles.
;
; A Base character to use for drawing.
; HL Number of miles to print
; BC Value to divide by (to select the correct digit)
OutOfTown_Print_Digit:
  INC A                   ; Increment the current character.
  AND A                   ; Reset the carry flag.
  SBC HL,BC               ; Decrement by the divisor.
  JR NC,OutOfTown_Print_Digit ; Repeat while there is no carry, which will
                              ; leave the result of the division in A.
  ADD HL,BC               ; Restore the last decrement so the number of miles
                          ; is correct.
; This entry point is used by the routine at OutOfTown_Print_Miles.
OutOfTown_Print_Digit_0:
  LD C,$70                ; Use bright black on yellow.
  CALL Overlay_Screen     ; Print the graphic.
  INC E                   ; Move to the next row.
  LD A,$2F                ; Set A back to just before ASCII '0' for the next
                          ; run.
  RET                     ; Return.

; Movement table : The Post Office
PostOffice_Movement:
  DEFB $20,$44,$04,$02

; Bounds table : The Post Office
PostOffice_Bounds:
  DEFB $98,$A0,$FC,$02

; Room logic : The Post Office.
Logic_PostOffice:
  LD A,$04                 ; Touching a stamp drops the endurance by 4.
  LD (Endurance_Penalty),A ;
  LD IX,PostOffice_Movement ; Point IX at the movement table.
  LD BC,Full_Bounds       ; Point BC at the stamp table.
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,$7A                ; Select the ID for the stamp. (Object_7A)
  CALL Draw_Mask          ; Draw it.
  CALL Detect_Collision   ; Check for collision detection.
  LD A,$7A                ; Select the ID for the stamp.
  CALL Update_Next_Sprite ; Update moving objects.
  CALL Draw_Mask          ; Draw the stamp.
  CALL Detect_Collision   ; Check for collision detection.
  RET                     ; Return.

; The amount to decrease endurance by in a collision
Endurance_Penalty:
  DEFB $00

; The next attribute to use with drawing
Next_Attribute:
  DEFB $43

; Movement table : Herbert
Herbert_Movement:
  DEFB $5A,$A8,$01,$00

; Current room Herbert is in
Herbert_Room:
  DEFB $00

; Current tick count until Herbert moves
Herbert_T:
  DEFB $03

; Current object ID for Herbert. (40 - 46)
Herbert_Frame_ID:
  DEFB $40

; Move Herbert
;
; Used by the routine at Main_update.
Move_Herbert:
  LD A,$02                 ; Touching Herbert reduces endurance by 2.
  LD (Endurance_Penalty),A ;
  LD IX,Herbert_Movement  ; Point IX at the movement table.
  LD BC,Full_Bounds       ; Point BC at the bounds.
  CALL Update_Next_Sprite ; Update object positions.
  LD A,(IX+$00)           ; Get Herbert's current room.
  CALL Get_Next_Room_Ptr  ; Get the "next rooms" table for this room.
  INC HL                  ; Move to the second byte in the table.
  LD A,(HL)               ; Get the target co-ordinate.
  CALL Room_Get_Coords    ; Get the address of the co-ordinate table.
  LD A,(HL)               ; Get the target co-ordinate.
  CP (IX-$04)             ; Is it Herbert's current x co-ordinate?
  JR NZ,Move_Herbert_3    ; Jump forward if it isn't.
  DEC (IX+$01)            ; Decerement Herbert's tick count.
  JR NZ,Move_Herbert_3    ; Jump forward while it is 0.
  LD A,R                  ; Get a random number between 3 and 6.
  AND $03                 ;
  ADD A,$03               ;
  LD (IX+$01),A           ; Set this as the new tick count.
Move_Herbert_1:
  CALL Herbert_Get_Next_Room ; Set the next room for Herbert to appear in.
  CP $1F                  ; If this is the Sewer, jump back and choose again.
  JR Z,Move_Herbert_1     ;
  LD (IX+$00),A           ; Set the new room.
  CALL Get_Next_Room_Ptr  ; Get the "next rooms" table for this room.
  INC HL                  ; Move to the second byte in the buffer.
  LD A,(HL)               ; Get the target co-ordinate.
  CALL Room_Get_Coords    ; Get the address of the co-ordinate table.
  LD A,(HL)               ; Get the x co-ordinate.
  ADD A,$02               ; Add 2 to it.
  CP $EE                  ; Set a ceiling of EE.
  JR C,Move_Herbert_2     ;
  LD A,$EE                ;
Move_Herbert_2:
  LD (IX-$04),A           ; Set the new x co-ordinate.
; Draw Herbert if he's visible.
Move_Herbert_3:
  LD A,(IX+$00)           ; Get Herbert's current room.
  CP (IY+$0F)             ; Is this the room the player is in?
  RET NZ                  ; Return if not.
; Herbert is in the same room as the player, so draw him.
  LD A,(IX-$02)           ; Get the x direction difference.
  LD BC,$4440             ; Set Herbert to use object IDs 40 - 42 if he's
  CP $01                  ; moving right, or 44 - 46 if he is moving left.
  JR Z,Move_Herbert_4     ;
  LD BC,$4844             ;
Move_Herbert_4:
  LD A,(IX+$02)           ; Get Herbert's current object ID.
  ADD A,$02               ; Ensure the object ID cycles between the two set
  CP B                    ; values.
  JR C,Move_Herbert_6     ;
Move_Herbert_5:
  LD A,C                  ;
  JR Move_Herbert_7       ;
Move_Herbert_6:
  CP C                    ;
  JR C,Move_Herbert_5     ;
Move_Herbert_7:
  LD (IX+$02),A           ; Set the new object ID for Herbert.
  CALL Draw_Mask          ; Draw Herbert.
  LD A,$46                ; Set bright yellow on black.
  LD (Next_Attribute),A   ;
  CALL TownSquare_Attributes ; Set the attributes for the fountain in the Town
                             ; Square.
  CALL Detect_Collision   ; Check for collision detection.
Logic_None:
  RET                     ; Return.

; Bounds table : Full left / right on screen
Full_Bounds:
  DEFB $00,$F0,$40,$A8

; Bounds table : The Pub
Pub_Bounds:
  DEFB $20,$D8

; Movement table : The Pub
Pub_Movement:
  DEFB $22,$90,$02,$00,$D6,$90,$FE,$00
  DEFB $78,$90,$04,$00

; Room logic : The Pub
Logic_Pub:
  LD A,$06                 ; Touching a mug drops endurance by 6.
  LD (Endurance_Penalty),A ;
  LD IX,Pub_Movement      ; Point IX at the data for this room..
  LD B,$03                ; 3 objects to draw.
Logic_Pub_1:
  PUSH BC                 ; Remember the count in BC.
  LD A,$29                ; Use object ID 29 (pint glass) (Object_29)
  LD BC,Pub_Bounds        ; Set the bounds.
  CALL Update_Next_Sprite ; Update object positions.
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore the count in BC.
  DJNZ Logic_Pub_1        ; Loop while there are more objects to draw.
  RET                     ; Otherwise return.

; Movement table : The Zoo
Zoo_Movement:
  DEFB $32,$64,$FE,$00,$60,$32,$6E,$00
  DEFB $02

; Bounds table : The Zoo
Zoo_Bounds:
  DEFB $08,$60,$00,$A8

; Room logic : The Zoo
Logic_Zoo:
  LD A,$08                 ; Touching a banana drops endurance by 8.
  LD (Endurance_Penalty),A ;
  LD IX,Zoo_Movement      ; Point IX at the data for this room.
  LD BC,Zoo_Bounds        ; Set the bounds.
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,(IX+$00)           ; Get the current object ID. (Object_60)
  INC A                   ; Increment it.
  CP $64                  ; Is it now 40?
  JR NZ,Logic_Zoo_1       ; Skip the next bit if not.
  LD A,$60                ; Otherwise reset to ID 60.
Logic_Zoo_1:
  LD (IX+$00),A           ; Set the new object ID.
  CALL Draw_Non_Mask      ; Draw the object.
  INC IX                  ; Move to the next position in the buffer.
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,$64                ; Point A at the object ID for the banana.
                          ; (Object_64)
  CALL Draw_Non_Mask      ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  LD A,(IX-$01)           ; Get the Y direction change.
  CP $FE                  ; Is it now trying to move upwards?
  RET NZ                  ; Return if so.
; The banana has hit the boundary, instead of reversing direction, draw it
; again from the start.
  LD (IX-$03),$6E         ; Set the Y co-ordinate back to 6E.
  LD (IX-$01),$02         ; Set the direction change back to 2 downwards.
  LD A,(IX-$09)           ; Set the X co-ordinate to the same as the monkey, so
  LD (IX-$04),A           ; it looks like the monkey has directly thrown the
                          ; banana.
  RET                     ; Return.

; Movement table : The Docks
Docks_Movement:
  DEFB $78,$A8,$02,$00
  DEFB $78,$A8,$FE,$00

; Room logic : The Docks
Logic_Docks:
  LD A,$04                 ; Touching a moving object drops endurance by 4.
  LD (Endurance_Penalty),A ;
  LD IX,Docks_Movement    ; Point IX at the movement table. (Docks_Movement)
  LD BC,Full_Bounds       ; Point BC at the boundary table. (Full_Bounds)
  CALL Update_Next_Sprite ; Update moving object.
  LD A,$78                ; Set the object ID to the life raft. (Object_78)
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  CALL Update_Next_Sprite ; Update the next moving object.
  LD A,$78                ; Set the object ID to the life raft. (Object_78)
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  RET                     ; Return.

; The animation state for the shark in the Sewer
Shark_Frame_ID:
  DEFB $2C

; Bounds table : The Sewer
Shark_Bounds:
  DEFB $00,$50

; Movement table : The Sewer
Shark_Movement:
  DEFB $0A,$98,$02,$00
  DEFB $0A,$A8,$02,$00

; Room logic : The Sewer
Logic_Sewer:
  LD A,$40                 ; Touching the shark drops endurance by 64, which
  LD (Endurance_Penalty),A ; can kill a player pretty quickly.
  LD IX,Shark_Movement    ; Point IX to the movement table. (Shark_Movement)
; Make sure the shark is facing the right way.
  LD A,(IX+$02)           ; Get the distance to move in X.
  CP $02                  ; Compare it to +2 ie: moving right.
  LD A,(Shark_Direction)  ; Get the shark's direction.
  JR Z,Logic_Sewer_1      ; If the distance is positive, nothing to do.
; Shark should be facing left.
  OR A                    ; Is the direction 0? (left)
  CALL NZ,Shark_Reverse   ; If not, need to flip the shark the other way round.
  JR Logic_Sewer_2        ;
; Shark should be facing right.
Logic_Sewer_1:
  OR A                    ; Is the direction 0? (left)
  CALL Z,Shark_Reverse    ; If so, need to flip the shark the other way round.
; Now draw the shark.
Logic_Sewer_2:
  LD A,$30                ; Set the object ID to be the shark's head.
  LD BC,Shark_Bounds      ; Point BC to the bounds table. (Shark_Bounds)
  CALL Update_Next_Sprite ; Update the position.
  CALL Draw_Mask          ; Draw the graphic.
  LD A,(Shark_Frame_ID)   ; Get the next ID for the shark's body.
  XOR $02                 ; Cycle bit 2 so it changes between 2D and 2F.
  LD (Shark_Frame_ID),A   ;
  CALL Update_Next_Sprite ; Update the position.
  CALL Draw_Mask          ; Draw the graphic.
; Check to see if the player has the meat.
  LD A,(Sewer_Items)      ; Get the item in the sewer.
  CP $17                  ; Is it the meat?
  RET Z                   ; If so, the shark won't harm the player, so return.
  LD A,$17                ; Otherwise, is the player's first item the meat?
  CP (IY+$50)             ;
  RET Z                   ; Return if it is.
  CP (IY+$55)             ; Otherwise, is the player's second item the meat?
  RET Z                   ; Return if it is.
; The player doesn't have the meat, if they touch the shark it's bad news.
  LD A,(Draw_YPos)        ; Move up two rows and check collision detection.
  SUB $10                 ;
  LD (Draw_YPos),A        ;
  CALL Detect_Collision   ;
  RET                     ; Return.

; Bounds table : The Bakers
Bakers_Bounds:
  DEFB $00,$F0,$78,$A8

; Movement table : The Bakers
Bakers_Movement:
  DEFB $00,$80,$02,$FC
  DEFB $64,$8C,$02,$04

; Room logic : The Bakers
Logic_Bakers:
  LD A,$06                 ; Touching a moving object drops endurance by 6.
  LD (Endurance_Penalty),A ;
  LD IX,Bakers_Movement   ; Point IX at the movement table. (Bakers_Movement)
  LD B,$02                ; 2 moving objects to draw.
Logic_Bakers_1:
  PUSH BC                 ; Store BC.
  LD BC,Bakers_Bounds     ; Point BC at the boundary table.
  CALL Update_Next_Sprite ; Update the moving object.
  LD A,E                  ; Get the x co-ordinate.
  CP $FE                  ; Is it FE?
  JR NZ,Logic_Bakers_2    ; Jump forward if it isn't.
; The toast is off-screen, so redraw it back at the other end.
  LD (IX-$01),$FC         ; Set the y difference as -4.
  LD (IX-$02),$02         ; Set the x difference at +2.
  LD (IX-$03),$80         ; Set the y co-ordinate as 80.
  LD (IX-$04),$00         ; Set the x co-ordinate as 00.
; Now draw the toast.
Logic_Bakers_2:
  LD A,$32                ; Use the ID of the toast. (Object_32)
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore BC.
  DJNZ Logic_Bakers_1     ; Loop while there are still objects to update.
  RET                     ; Otherwise return.

; Room logic : Wall Street
Logic_Wall_Street:
  LD A,$09                ; Is flag 9 (wall built) set?
  CALL Get_Flag           ;
  JR Z,Logic_Wall_Street_2 ; Jump forward if it is.
  LD A,$06                ; Is flag 6 (battery charged) set?
  CALL Get_Flag           ;
  JR Z,Logic_Wall_Street_2 ; Jump forward if it is.
  LD A,(Wall_Street_Items) ; Is the battery the first item in the room?
  CP $04                   ;
  JR NZ,Logic_Wall_Street_2 ; Jump forward if it isn't.
  LD A,(IY+$05)           ; Get the x co-ordinate.
  SUB $42                 ; Is it by the fork lift?
  CP $FC                  ;
  JR C,Logic_Wall_Street_2 ; Jump foward if it isn't.
; The fork lift truck has a charged battery and the player is standing by the
; lift, so it can be activated.
  LD A,(Platforms_9)      ; Get the fork lift's position.
  SUB (IY+$0A)            ; Is the player standing on it?
  SUB $22                 ;
  CP $FC                  ;
  JR C,Logic_Wall_Street_2 ; Jump forward if they aren't.
; The player is standing on the fork lift, so move it.
  LD A,(Platforms_9)      ; Get the fork lift's position.
  SUB $02                 ; Move it up two positions.
  CP $78                    ; Restrict the height to 78
  JR NC,Logic_Wall_Street_1 ;
  LD A,$78                  ;
Logic_Wall_Street_1:
  LD (Platforms_9),A      ; Set the new height.
  SUB $20                 ; Set the player's y co-ordinate above the lift.
  LD (IY+$0A),A           ;
Logic_Wall_Street_2:
  LD A,(Platforms_9)      ; Get the fork lift's position.
  LD B,$10                 ; Invert it to get a y co-ordinate on screen.
  CP $B8                   ;
  JR Z,Logic_Wall_Street_3 ;
  LD B,$0E                 ;
Logic_Wall_Street_3:
  SUB B                    ;
  LD H,A                  ; Set the y co-ordinate.
  LD L,$40                ; x co-ordinate is always 40.
  LD (Draw_XPos),HL       ; Set the position of the fork lift.
  LD A,$2B                ; Set the ID of the fork lift. (Object_2B)
  CALL Draw_Non_Mask      ; Draw the object and return.
  RET                     ;

; Movement table : The Work Shed
WorkShed_Movement:
  DEFB $40,$64,$00,$02
  DEFB $64,$40,$00,$02
  DEFB $DC,$78,$00,$02

; Room logic : The Work Shed
Logic_WorkShed:
  LD A,$06                 ; Touching a moving object drops endurance by 6.
  LD (Endurance_Penalty),A ;
  LD IX,WorkShed_Movement ; Point IX at the movement table. (WorkShed_Movement)
  LD B,$03                ; 3 objects to draw.
Logic_WorkShed_1:
  PUSH BC                 ; Store the count in BC.
  LD BC,Full_Bounds       ; Point BC at the bounds table. (Full_Bounds)
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,D                  ; Get the Y co-ordinate.
  CP $FE                  ; Is it FE ie: off screen?
  JR NZ,Logic_WorkShed_2  ; Jump forward if it isn't.
; A hammer has moved off screen, so recreate it.
  LD (IX-$01),$02         ; Set the direction in y to +2.
  LD (IX-$03),$40         ; Set the y co-ordinate to 40 ie: top of screen.
  LD A,R                  ; Set the x co-ordinate to a random location between
  AND $3F                 ; 38 and B6 rounded to the nearest even number.
  ADD A,A                 ;
  ADD A,$38               ;
  LD (IX-$04),A           ;
Logic_WorkShed_2:
  LD A,$34                ; Use object ID #$34 (hammer) (Object_34)
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore BC.
  DJNZ Logic_WorkShed_1   ; Loop while there are more objects to draw.
  RET                     ; Otherwise return.

; The animation state for the flame in Motor Way
Flame_Frame_ID:
  DEFB $4C

; Room logic : Motor Way
;
; Check the pipe is patched, and display the flame if not
Logic_Motor_Way:
  LD A,(Cave_Items)       ; Is the pipe in the cave?
  CP $1D                  ;
  JR NZ,Logic_Motor_Way_0 ; Jump forward if it isn't.
  LD A,$05                ; Is flag 5 (pipe patched) set?
  CALL Get_Flag           ;
  RET NZ                  ; Return if it is.
; The pipe is either leaking or not in the cave, so the gas leak means there's
; a fire here that needs drawing.
Logic_Motor_Way_0:
  LD HL,$A880             ; Set the location of the flame.
  LD (Draw_XPos),HL       ;
  LD A,$04                 ; Touching the flame (if it's there) drops endurance
  LD (Endurance_Penalty),A ; by 4.
  LD A,(Flame_Frame_ID)   ; Get the current frame ID. (Flame_Frame_ID)
  INC A                   ; Increment it.
  CP $50                  ; Does it equal 50?
  JR NZ,Logic_Motor_Way_1 ; Skip the next bit if it doesn't.
  LD A,$4C                ; Otherwise reset it back to 4C.
Logic_Motor_Way_1:
  LD (Flame_Frame_ID),A   ; Set the new frame ID.
  CALL Draw_Non_Mask      ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  RET                     ; Return.

; Movement table : The Super Market
Supermarket_Movement:
  DEFB $F0,$A8,$FE,$00

; Room logic : The Super Market
Logic_Supermarket:
  LD A,$FF                ; Turn off the second platform, active when the
  LD ($AF80),A            ; trolley is moving. (Platforms_6)
  LD A,$0C                ; Is flag 0C (trolley oiled) set?
  CALL Get_Flag           ;
  JR Z,Logic_Supermarket_1 ; Jump forward if it isn't.
  LD A,$06                 ; Touching a moving object drops endurance by 6.
  LD (Endurance_Penalty),A ;
; If the trolley is oiled, it needs moving.
  LD IX,Supermarket_Movement ; Point IX at the movement table.
  LD BC,Full_Bounds       ; Point DE at the bounds table.
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,$36                ; Set the ID to the trolley graphic. (Object_36)
  CALL Draw_Mask          ; Draw the graphic.
  CALL Detect_Collision   ; Check for collision detection.
; See if we have jumped onto the trolley.
  LD A,(IY+$0A)           ; Get the Y co-ordinate?
  CP $88                  ; Is it 88 ie: jumped to the height of the trolley?
  RET NZ                  ; Return if it hasn't.
; The Y co-ordinate is correct, check the X co-ordinate.
  LD A,(IY+$05)           ; Get the current X co-ordinate.
  SUB (IX-$04)            ; Is it close enough to the X co-ordinate of the
  SUB $04                 ; trolley?
  CP $F8                  ;
  RET C                   ; Return if it isn't.
; The character has landed on top of a moving trolley. Switch on a byte in the
; platform table (Platforms_6) that will treat this as a temporary platform and
; allow them to jump higher.
  LD A,(IX-$04)           ; Set the X co-ordinate to match that of the trolley.
  LD (IY+$05),A           ;
  LD A,$A8                ; Set the top of the trolley as an active platform.
  LD ($AF80),A            ;
  RET                     ; Return.
; The trolley's not oiled, so just draw it.
Logic_Supermarket_1:
  LD HL,$A8F0             ; Set the position.
  LD (Draw_XPos),HL       ;
  LD A,$36                ; Set the ID to the trolley graphic.
  CALL Draw_Mask          ; Draw it and return.
  RET                     ;

; Room logic : The Cave
;
; If the pipe is not patched and the gas mask is not carried, start dropping
; endurance immediately as the room is full of gas!
Logic_Cave:
  LD A,(Cave_Items)       ; Is the pipe in the room?
  CP $1D                  ;
  JR NZ,Logic_Cave_1      ; Jump forward if it isn't.
  LD A,$05                ; Is the pipe patched?
  CALL Get_Flag           ;
  RET NZ                  ; Return if it is.
; The pipe is not patched. See if the player has the gas mask.
Logic_Cave_1:
  LD A,$14                ; Is the first item carried the gas mask?
  CP (IY+$50)             ;
  RET Z                   ; Return if so.
  CP (IY+$55)             ; Is the second item carried the gas mask?
  RET Z                   ;
; The pipe is not patched and the player does not have the gas mask. Start
; dropping endurance as they choke to death - oh dear.
  LD A,$04                 ; Drop endurance by 6 each frame.
  LD (Endurance_Penalty),A ;
  CALL Drop_Endurance     ; Mark an immediate collision to drop endurance.
  JP Logic_Laboratory     ; Otherwise, the logic is the same as the laboratory.

; The animation state for the water in the Town Square fountain
;
; Cycles between 50 - 52 / 53 - 55.
TownSquare_Frame_ID:
  DEFB $50

; Room logic : Town Square
;
; Check the fountain's repaired
Logic_Town_Square:
  LD A,$08                ; Is flag 08 (fountain repaired) set?
  CALL Get_Flag           ;
  RET Z                   ; Return if not.
; The fountain is repaired, so draw it. This entry point is used by the routine
; at Init_Game.
Logic_Town_Square_1:
  LD A,$45                ; Set bright cyan on black.
  LD (Next_Attribute),A   ;
; Draw bottom right.
  LD HL,$9878             ; Set the position.
  LD (Draw_XPos),HL       ;
  LD A,(TownSquare_Frame_ID) ; Get the next object ID of the water.
  CALL Draw_Non_Mask      ; Draw it.
  CALL TownSquare_Attributes ; Set the attributes.
; Draw top right.
  LD HL,$8868             ; Set the position.
  LD (Draw_XPos),HL       ;
  CALL Draw_Non_Mask      ; Draw the water.
  CALL TownSquare_Attributes ; Set the attributes.
; Draw bottom left.
  LD HL,$9818             ; Set the position.
  LD (Draw_XPos),HL       ;
  ADD A,$03               ; Add 3 to the object ID to get the water facing left
                          ; instead of right.
  CALL Draw_Non_Mask      ; Draw the water.
  CALL TownSquare_Attributes ; Set the attributes.
; Draw top left.
  LD HL,$8828             ; Set the position.
  LD (Draw_XPos),HL       ;
  CALL Draw_Non_Mask      ; Draw the water.
  CALL TownSquare_Attributes ; Set the attributes.
; Change the graphic used.
  SUB $02                 ; Decrement 2 from the object ID. ie: subtract 3 to
                          ; get back to the right facing graphics, then add 1
                          ; for the next.
  CP $53                  ; Is it 53?
  JR NZ,Logic_Town_Square_2 ; Jump forward if it isn't.
  LD A,$50                ; Otherwise reset to 50.
Logic_Town_Square_2:
  LD (TownSquare_Frame_ID),A ; Set the next ID to use and return.
  RET                        ;

; Movement table : School Lane
SchoolLane_Movement:
  DEFB $28,$46,$02,$02
SchoolLane_Movement_2:
  DEFB $3C,$78,$FE,$02
SchoolLane_Movement_3:
  DEFB $20,$64,$02,$FE

; Bounds table : Multiple purpose
Generic_Bounds:
  DEFB $10,$E0,$40,$A8

; Bounds table 2 : School Lane
SchoolLane_Bounds:
  DEFB $10,$40,$40,$A8

; Next object ID for the lighting bolts in School Lane
;
; Alternates between 38 and 3A (Object_38)
Lightning_Frame_ID:
  DEFB $38

; School Lane electricity wire data
;
; The buffer is defined as the direction in which to move after drawing one
; 8-bit cell of data. A 1 moves drawing up one row, a 0 moves it down one row,
; a 2 leaves it unchanged. FF marks the end of the data.
School_Wire:
  DEFB $01,$01,$01,$01,$00,$01,$00,$01
  DEFB $00,$01,$00,$01,$00,$00,$00,$00
  DEFB $00,$02,$00,$02,$00,$02,$00,$02
  DEFB $00,$02,$02,$02,$02,$FF

; Room logic : School Lane
;
; First, draw the electricity wire.
Logic_School_Lane:
  LD HL,$5DE7             ; Point HL to the screen buffer. (5B00)
  LD DE,$0020             ; Set DE to the amount to move forward by for each
                          ; row.
  LD BC,School_Wire       ; Set BC to the data table. (School_Wire)
Logic_School_Lane_0:
  LD (HL),$00             ; Reset all pixels on the first row.
  ADD HL,DE               ; Move to the next row.
  LD (HL),$FF             ; Set all pixels.
  ADD HL,DE               ; Move to the next row.
  LD (HL),$00             ; Reset all pixels.
  AND A                   ; Move back up to the initial row.
  SBC HL,DE               ;
  SBC HL,DE               ;
  LD A,(BC)               ; Get the next byte.
  INC BC                  ; Move to the next place in the buffer.
  CP $FF                  ; Is it an end marker?
  JR Z,Logic_School_Lane_3 ; Jump foward if it is.
  OR A                    ; Is the data 0?
  JR Z,Logic_School_Lane_2 ; Jump forward if it isn't.
  CP $01                  ; Is the data 1?
  JR NZ,Logic_School_Lane_1 ; Jump forward if it is.
  ADD HL,DE               ; Otherwise move to the next row.
  JR Logic_School_Lane_2  ;
Logic_School_Lane_1:
  AND A                   ; Move up a row.
  SBC HL,DE               ;
Logic_School_Lane_2:
  INC HL                  ; Move to the next column and repeat.
  JR Logic_School_Lane_0  ;
; Now set the main data for the room.
Logic_School_Lane_3:
  LD A,$06                 ; Moving objects decrease endurance by 6.
  LD (Endurance_Penalty),A ;
  LD IX,SchoolLane_Movement ; Point IX at the movement table.
  LD B,$03                ; 3 lightning bolts to draw.
Logic_School_Lane_4:
  PUSH BC                 ; Store BC.
  LD A,$0D                ; Is flag 0D (Asteroids game won) set?
  CALL Get_Flag           ;
  LD BC,Generic_Bounds    ; Point BC at the first bounds table.
                          ; (Generic_Bounds)
  JR NZ,Logic_School_Lane_5 ; If the flag is set, skip the next bit.
  LD BC,SchoolLane_Bounds ; Otherwise point BC at the second bounds table.
                          ; (SchoolLane_Bounds)
Logic_School_Lane_5:
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,(Lightning_Frame_ID) ; Get the next object ID to print.
  XOR $02                 ; Invert bit 2, so the ID alternates between 38 and
                          ; 3A.
  LD (Lightning_Frame_ID),A ; Set this for the next object ID.
  CALL Draw_Mask          ; Draw moving objects.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore BC.
  DJNZ Logic_School_Lane_4 ; Loop while there are more lighting bolts to draw.
  RET                     ; Return.

; Table of direction to switch to in The Park
Park_Directions:
  DEFB $01,$01            ; Right and down
  DEFB $FF,$01            ; Left and down
  DEFB $FF,$FF            ; Left and up
  DEFB $01,$FF            ; Right and up

; Movement table : The Park
Park_Movement:
  DEFB $28,$46,$01,$01
  DEFB $05,$04,$C8,$78
  DEFB $FF,$01,$23,$02
  DEFB $26,$64,$01,$FF
  DEFB $26,$00,$C8,$78
  DEFB $FF,$01,$23,$02
  DEFB $26,$64,$01,$FF
  DEFB $26,$00

; Next ID to use for moving objects in the park
;
; Alternates between 3C and 3E (Object_3C).
Park_Frame_ID:
  DEFB $3C

; Set to 1 if a moving object hits its boundary in X and needs to move in the
; other direction.
;
; Used by the routine in Update_Next_Sprite.
Object_Hit_Boundary_X:
  DEFB $00

; Set to 1 if a moving object hits its boundary in Y and needs to move in the
; other direction.
;
; Used by the routine in Update_Next_Sprite.
Object_Hit_Boundary_Y:
  DEFB $00

; Room logic : The Park
Logic_Park:
  LD A,$04                 ; Moving objects decrease endurance by 4.
  LD (Endurance_Penalty),A ;
  LD B,$05                ; 5 objects to update.
  LD IX,Park_Movement     ; Point IX at the movement table.
Logic_Park_1:
  PUSH BC                 ; Store the count in BC.
  LD BC,Generic_Bounds    ; Point BC at the bounds table.
  CALL Update_Next_Sprite ; Update moving objects.
  DEC (IX+$00)            ; Decrement the X position.
  JR NZ,Logic_Park_3      ; Jump forward if it's not zero.
  LD A,(Object_Hit_Boundary_Y) ; Has a bird hit a boundary in X or Y?
  LD B,A                       ;
  LD A,(Object_Hit_Boundary_X) ;
  OR B                         ;
  JR NZ,Logic_Park_3      ; Jump forward if they haven't.
; A bird has hit the edge of the screen, move them off in some random
; direction.
  LD A,R                  ; Get a random number between 14 and 53.
  AND $3F                 ;
  ADD A,$14               ;
  LD (IX+$00),A           ; Set this as the new x co-ordinate.
  LD A,(IX+$01)           ; Cycle the y co-ordinate between 0 and 6 in
  ADD A,$02               ; multiples of 2, to give an offset into the table at
  CP $08                  ; Park_Movement.
  JR NZ,Logic_Park_2      ;
  XOR A                   ;
Logic_Park_2:
  LD (IX+$01),A           ; Set the new y co-ordinate.
  LD E,A                  ; Put the y co-ordinate in DE.
  LD D,$00                ;
  LD HL,Park_Directions   ; Add the base address of the direction table.
  ADD HL,DE               ; (Park_Directions)
  LD A,(HL)               ; Set the new x and y direction changes based on the
  LD (IX-$02),A           ; data found.
  INC HL                  ;
  LD A,(HL)               ;
  LD (IX-$01),A           ;
; Now draw the bird.
Logic_Park_3:
  LD A,(Park_Frame_ID)    ; Get the object ID to use.
  XOR $02                 ; Alternate between 3C and 3E (Object_3C). for the
  LD (Park_Frame_ID),A    ; next iteration.
  CALL Draw_Mask          ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection
  INC IX
  INC IX
  POP BC                  ; Restore the count in BC.
  DJNZ Logic_Park_1       ; Loop while there are more objects to draw.
  RET                     ; Otherwise return.

; Table containing x position and item number to print for bank letters
;
; Used by the routine in Logic_Bank
Bank_Letters:
  DEFB $40,$13            ; B
  DEFB $60,$1E            ; R
  DEFB $80,$1A            ; E
  DEFB $A0,$01            ; A
  DEFB $C0,$05            ; K

; Flag set if letters need to be printed in the bank
Bank_Letters_Pending:
  DEFB $00

; Movement table : The Bank
Bank_Movement:
  DEFB $40,$64,$02,$04
  DEFB $B4,$98,$02,$FC
  DEFB $20,$44,$02,$04
  DEFB $C8,$78,$02,$FC

; Room logic : The Bank
Logic_Bank:
  LD A,(Safe_nLetters)    ; Get the number of letters put in the safe + 1
  CP $06                  ; Are all letters there?
  JR NZ,Logic_Bank_1      ; Jump forward if not.
; If we've got all 5 letters, flash them.
  LD A,(Bank_Letters_Pending) ; Toggle the display state between 0 and 1.
  XOR $01                     ;
  LD (Bank_Letters_Pending),A ;
  JR Z,Logic_Bank_3       ; If the display state is 0, there's nothing to do
                          ; here.
  LD A,$06                ; Set the number of letters + 1 back to 6.
Logic_Bank_1:
  DEC A                   ; Decrement by 1 to get the actual number of letters.
  JR Z,Logic_Bank_3       ; If there are no letters to draw, then there's
                          ; nothing to do here.
  LD B,A                  ; Put the number of letters to draw in B.
  LD HL,Bank_Letters      ; Point HL at the first letter.
  LD DE,$4800             ; Set the initial position on row 48.
Logic_Bank_2:
  LD E,(HL)               ; Get the column from the buffer.
  INC HL                  ; Move to the next position in the buffer.
  LD (Draw_XPos),DE       ; Set the position for the drawing routine.
  LD A,(HL)               ; Get the object ID to print.
  INC HL                  ; Move to the next position in the buffer.
  CALL Draw_Non_Mask      ; Draw the graphic.
  DJNZ Logic_Bank_2       ; Loop while there are more letters.
Logic_Bank_3:
  LD A,(Safe_nLetters)    ; Get the number of letters + 1.
  CP $06                  ; Have we got all six.
  RET Z                   ; If so, there's nothing to do here.
; As long as the safe isn't cracked yet, put the moving objects on screen.
  LD A,$06                 ; Moving objects decrease endurance by 6.
  LD (Endurance_Penalty),A ;
  LD IX,Bank_Movement     ; Point IX at the movement table. (Bank_Movement)
  LD B,$04                ; 4 objects to draw.
Logic_Bank_4:
  PUSH BC                 ; Remember the object count in BC.
  LD BC,Full_Bounds       ; Point DE at the bounds table. (Full_Bounds)
  CALL Update_Next_Sprite ; Update the next moving object.
  LD A,$76                ; Set the object ID to the pound symbol.
  CALL Draw_Mask          ; Put the object in the sprite buffer.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore the object count in BC.
  DJNZ Logic_Bank_4       ; Loop while there are more objects to draw.
  RET                     ; Return.

; Movement table : Wally's House
WallysHouse_Movement:
  DEFB $34,$40,$00,$02
  DEFB $74,$6C,$00,$02
  DEFB $B4,$A0,$00,$02

; Room logic : Wally's House
Logic_Wallys_House:
  LD A,$08                 ; Moving objects decrease endurance by 8.
  LD (Endurance_Penalty),A ;
  LD IX,WallysHouse_Movement ; Point IX at the movement table.
                             ; (WallysHouse_Movement)
  LD B,$03                ; 3 bulbs to draw.
Logic_Wallys_House_1:
  PUSH BC                 ; Store BC.
  LD BC,Full_Bounds       ; Point BC at the bounds table. (Full_Bounds)
  CALL Update_Next_Sprite ; Update moving objects.
  LD A,(IX-$01)           ; Check the direction of the bulbs.
  CP $02                  ; Is it still +2 ie: hasn't hit bounds?
  JR Z,Logic_Wallys_House_0 ; Jump forward if it has.
; The bulb has moved to the edge of the boundary. Rather than reversing
; direction as per usual, just reset the co-ordinates.
  LD (IX-$01),$02         ; Set the amount to change as 2 again.
  LD (IX-$03),$40         ; Set the Y co-ordinate to 40.
; Now draw the lightbulb.
Logic_Wallys_House_0:
  LD A,$56                ; Set the ID to be the lightbulb. (Object_56)
  CALL Draw_Non_Mask      ; Draw the object.
  CALL Detect_Collision   ; Check for collision detection.
  POP BC                  ; Restore BC.
  DJNZ Logic_Wallys_House_1 ; Loop until all the bulbs are updated.
  RET                     ; Return.

; Room logic : The School
Logic_School:
  LD A,$02                 ; Moving objects decrease endurance by 2.
  LD (Endurance_Penalty),A ;
  LD A,(IY+$0A)           ; Get the player's Y co-ordinate.
  CP $98                  ; Is the player on the floor?
  JR NZ,Logic_School_1    ; Jump forward if they're not.
; The player is on the floor.
  LD A,(IY+$05)           ; Get the X co-ordinate.
  CP $28                  ; Is it greater than 28?
  JR C,Logic_School_1     ; Jump forward if so.
  CP $E6                  ; Is it less than E6?
  JR NC,Logic_School_1    ; Jump forward if not.
  CALL Drop_Endurance     ; Otherwise, the player is standing on the spikes, so
                          ; decrease endurance.
; Now draw the desks.
Logic_School_1:
  LD B,$05                ; 5 objects to draw.
  LD A,(School_Desk_Frame) ; Get the next frame ID of the desk.
  INC A                   ; Increment it.
  CP $5B                  ; If it goes higher than 5A set it back to 57.
  JR NZ,Logic_School_2    ;
  LD A,$57                ;
Logic_School_2:
  LD (School_Desk_Frame),A ; Store the next frame ID.
  LD HL,School_Desk_1_X   ; Point HL at the next x co-ordinate to use.
  LD D,$98                ; Y co-ordinate is always 98.
Logic_School_3:
  LD E,(HL)               ; Get the X co-ordinate.
  LD (Draw_XPos),DE       ; Set the position to draw. (Draw_XPos)
  INC HL                  ; Move to the next position in the buffer.
  DEC (HL)                ; Decrement the tick counter.
  JR NZ,Logic_School_4    ; Jump forward if it's not zero.
; The tick counter has run to 0, does a desk need to be flipped?
  LD (HL),$28             ; Set the tick count back to 28.
Logic_School_4:
  LD A,(HL)               ; Put the tick count in A.
  INC HL                  ; Move to the next position in the buffer.
  CP $09                  ; Is the counter less than 9?
  JR NC,Logic_School_6    ; Jump forward if not.
; The desk needs flipping, check if dislodges the player.
  LD A,(IY+$0A)           ; Get the player's y co-ordinate.
  CP $80                  ; Is it 80? (ie: on a desk)
  JR NZ,Logic_School_5    ; Jump foward if it isn't.
  LD A,(Draw_XPos)        ; Is the player's x co-ordinate near this one?
  SUB (IY+$05)            ;
  SUB $10                 ;
  CP $E0                  ;
  JR C,Logic_School_5     ; Jump if not.
; The desk opened while the player was on it. Dislodge them.
  LD A,(IY+$0A)           ; Add 4 to the player's y co-ordinate.
  ADD A,$04               ;
  LD (IY+$0A),A           ;
  LD (IY+$37),$01         ; Set the character in mid-air.
Logic_School_5:
  LD A,(School_Desk_Frame) ; Get the object ID to draw.
  JR Logic_School_7       ; Jump forward to draw it.
Logic_School_6:
  LD A,$57                ; Set the object ID as 57 - closed desk. (Object_57)
Logic_School_7:
  CALL Draw_Non_Mask      ; Draw the object
  DJNZ Logic_School_3     ; Loop while there are more objects to draw.
  RET                     ; Otherwise return.

; Frame ID of the next moving desk in the school (57 - 5A)
;
; Used by the routine in Logic_School.
School_Desk_Frame:
  DEFB $5A

; X co-ordinate to draw the first school desk
;
; Used by the routine in Logic_School.
School_Desk_1_X:
  DEFB $38

; Time until the first school desk flips
School_Desk_1_T:
  DEFB $29

; X co-ordinate to draw the second school desk
;
; Used by the routine in Logic_School.
School_Desk_2_X:
  DEFB $60

; Time until the second school desk flips
School_Desk_2_T:
  DEFB $21

; X co-ordinate to draw the third school desk
;
; Used by the routine in Logic_School.
School_Desk_3_X:
  DEFB $88

; Time until the third school desk flips
School_Desk_3_T:
  DEFB $19

; X co-ordinate to draw the fourth school desk
;
; Used by the routine in Logic_School.
School_Desk_4_X:
  DEFB $B0

; Time until the fourth school desk flips
School_Desk_4_T:
  DEFB $11

; X co-ordinate to draw the fifth school desk
;
; Used by the routine in Logic_School.
School_Desk_5_X:
  DEFB $D8

; Time until the fifth school desk flips
School_Desk_5_T:
  DEFB $09

; The food table.
;
; Used by the routine in Handle_Food.
;
; Format is:
; +------+---------------+
; | Byte | Description   |
; +------+---------------+
; | 0    | Room ID       |
; | 1    | x co-ordinate |
; | 2    | y co-ordinate |
; | 3    | Object ID     |
; +------+---------------+
Food:
  DEFB $0E,$90,$A0,$5B
  DEFB $0A,$08,$A8,$5C
  DEFB $0F,$F0,$A8,$5E
  DEFB $19,$90,$A0,$5D
  DEFB $17,$20,$90,$5F
  DEFB $FF

; Copy of the food table (not used)
Food_Spare:
  DEFB $0F,$F0,$A8,$5E
  DEFB $19,$90,$A0,$5D
  DEFB $17,$20,$90,$5F
  DEFB $0E,$90,$A0,$5B
  DEFB $0A,$08,$A8,$5C

; Pointer to the next food table entry
Next_Food:
  DEFW Food

; See if any food is in the current room, and display it if so
;
; Used by the routine at Main_update.
Handle_Food:
  LD HL,(Next_Food)       ; Point HL at the next food.
  LD A,(IY+$0F)           ; Get the current room in A.
  CP (HL)                 ; Is the food in this room?
  JR Z,Handle_Food_1      ; Jump foward if there is.
  LD DE,$0015             ; Point to the second food table.
  ADD HL,DE               ;
  CP (HL)                 ; Is the food in this room?
  RET NZ                  ; Return if it isn't - there's no food here.
; There's food in the room, so draw it.
Handle_Food_1:
  INC HL                  ; Put the x co-ordinate in E.
  LD E,(HL)               ;
  INC HL                  ; Put the y co-ordinate in D.
  LD D,(HL)               ;
  INC HL                  ; Put the object number in B.
  LD A,(HL)               ;
  LD B,A                  ;
  LD (Draw_XPos),DE       ; Copy the position to the scratch buffer at
                          ; Draw_XPos.
  CALL Draw_Non_Mask      ; Draw the food.
  LD A,(IY+$05)           ; Put the x co-ordinate in A.
  SUB E                   ; Is it near enough the food?
  SUB $04                 ;
  CP $F8                  ;
  RET C                   ; Return if not.
  LD A,(IY+$0A)           ; Get the y co-ordinate.
  SUB D                   ; Is it near enough the food?
  ADD A,$0C               ;
  CP $F8                  ;
  RET C                   ; Return if not.
; There's food here, and the player has picked it up.
  LD HL,(Next_Food)       ; Move HL to the next food entry.
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  LD A,(HL)               ; Is this the end of the list?
  CP $FF                  ; If so, set it back to the beginning. (Food)
  JR NZ,Handle_Food_2     ;
  LD HL,Food              ;
Handle_Food_2:
  LD (Next_Food),HL       ; Store the next location of food back in memory.
  LD A,(IY+$19)           ; Get the ID of favourite food for this player.
                          ; (Character_Favourite_Food)
  CP B                    ; Does it match the ID of this food?
  JR Z,Handle_Food_3      ; If so, jump forward to restore endurance to full
                          ; strength.
  LD A,(IY+$14)           ; Get the endurance.
  ADD A,$20               ; Add 20 to a maximum of 80.
  CP $80                  ;
  JR C,Handle_Food_4      ;
Handle_Food_3:
  LD A,$80                ;
Handle_Food_4:
  LD (IY+$14),A           ; Store this new endurance value.
  CALL Update_Endurance   ; Update the endurance and lives display.
  LD BC,$643C             ; Play a "picked up food" sound effect.
  LD DE,$0128             ;
  LD HL,$0103             ;
  CALL Play_Sound         ;
  RET                     ; Return.

; Initial states of lightning bolts in the "asteroids" game
;
; See documentation for Space_Lightning_States.
Space_Lightning_Init_States:
  DEFB $EE,$42,$FE,$02,$38
  DEFB $EE,$AE,$FE,$FE,$38
  DEFB $02,$42,$02,$02,$38
  DEFB $02,$AE,$02,$FE,$38
  DEFB $78,$42,$00,$02,$38
  DEFB $78,$AE,$00,$FE,$38
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00
  DEFB $FF,$00,$00,$00,$00

; Bounds table : Asteroids missile
Space_Bounds:
  DEFB $00,$F0,$40,$B0

; Asteroids : Check for collision with lightning
;
; Used by the routine at Space_Game.
Space_Collision_Detect:
  LD IX,Space_Lightning_States ; Point IX at the movement table.
  LD A,$08                 ; Moving objects decrease endurance by 8.
  LD (Endurance_Penalty),A ;
  LD B,$0C                ; 0C entries to check.
Space_Collision_Detect_0:
  PUSH BC                 ; Remember the count in BC.
  LD BC,Space_Bounds      ; Point BC at the bounds table. (Space_Bounds)
  LD A,(IX+$00)
  CP $FF
  JR NZ,Space_Collision_Detect_1 ; Jump forward if it isn't.
  CALL Update_Next_Sprite_6   ; Move to the next entry and return.
  INC IX                      ;
  JR Space_Collision_Detect_8 ;
; The lightning bolt is active.
Space_Collision_Detect_1:
  CALL Update_Next_Sprite ; Update the position.
  LD A,(IX+$00)           ; Get the current graphic ID.
  CALL Draw_Mask          ; Put it in the sprite buffer.
  INC IX                  ; Move to the next position in the table.
  LD A,(IY+$05)           ; Get the player's x co-ordinate.
  SUB (IX-$05)            ; Is it close enough to the lightning?
  SUB $08                 ;
  CP $F0                  ;
  JR C,Space_Collision_Detect_2 ; Jump forward if it isn't.
  LD A,(IY+$0A)           ; Get the player's y co-ordinate.
  SUB (IX-$04)            ; Is it close enough to the lightning?
  SUB $08                 ;
  CP $F0                  ;
  CALL NC,Drop_Endurance  ; If it is, the player has hit the lightning, so
                          ; decrease endurance.
Space_Collision_Detect_2:
  LD A,(Object_Hit_Boundary_X) ; Has the missile hit a boundary in X?
  OR A                         ;
  JR Z,Space_Collision_Detect_5 ; Jump forward if it hasn't.
; If the missile hits a boundary, the usual logic for moving objects needs
; changing. Instead of reversing direction, move to the other end of the
; screen, and keep the existing direction.
  LD A,(IX-$05)                 ; If the position is F0 set it to 02.
  CP $F0                        ; Otherwise, it must be 0, so set it to EE.
  JR Z,Space_Collision_Detect_3 ;
  LD A,$EE                      ;
  JR Space_Collision_Detect_4   ;
Space_Collision_Detect_3:
  LD A,$02                      ;
Space_Collision_Detect_4:
  LD (IX-$05),A           ; Set the new x co-ordinate.
  LD A,(IX-$03)           ; Restore the sign of the direction, that was changed
  NEG                     ; in the previous call to Update_Next_Sprite.
  LD (IX-$03),A           ;
Space_Collision_Detect_5:
  LD A,(Object_Hit_Boundary_Y) ; Has the missile hit a boundary in Y?
  OR A                         ;
  JR Z,Space_Collision_Detect_8 ; Jump forward if it hasn't.
; Update the boundary logic as earlier.
  LD A,(IX-$04)                  ; If the position is 40 set it to AE.
  CP $40                         ; Otherwise it must be B0 so set it to 42.
  JR NZ,Space_Collision_Detect_6 ;
  LD A,$AE                       ;
  JR Space_Collision_Detect_7    ;
Space_Collision_Detect_6:
  LD A,$42                       ;
Space_Collision_Detect_7:
  LD (IX-$04),A           ; Set the new y co-ordinate.
  LD A,(IX-$02)           ; Restore the sign of the direction, that was changed
  NEG                     ; in the previous call to Update_Next_Sprite.
  LD (IX-$02),A           ;
Space_Collision_Detect_8:
  POP BC                  ; Restore the count in BC.
  DJNZ Space_Collision_Detect_0 ; Loop while there is more lightning to draw.
  RET                     ; Otherwise return.

; Asteroids : Check for player's movement
;
; Used by the routine at Space_Game.
Space_Check_Movement:
  CALL Detect_Left        ; Was 'left' pressed?
  OR A                    ;
  JR Z,Space_Check_Movement_0 ; Jump forward if it wasn't.
; 'left' was pressed, so rotate anticlockwise.
  DEC (IY+$00)            ; Decrement the graphic used for the player.
  LD A,(IY+$00)                ; If it's now 6D past the end of usable sprites,
  CP $6D                       ; set it to the maximum of 75.
  JR NZ,Space_Check_Movement_0 ;
  LD (IY+$00),$75              ;
Space_Check_Movement_0:
  CALL Detect_Right       ; Was 'right' pressed?
  OR A                    ;
  JR Z,Space_Check_Movement_1 ; Jump forward if it wasn't.
; 'right' was pressed, so rotate clockwise.
  INC (IY+$00)            ; Increment the graphic used for the player.
  LD A,(IY+$00)                ; If it's now 75 past the end of usable sprites,
  CP $76                       ; set it to the minimum of 6E.
  JR NZ,Space_Check_Movement_1 ;
  LD (IY+$00),$6E              ;
Space_Check_Movement_1:
  CALL Detect_In          ; Was 'in' pressed?
  OR A                    ;
  JR Z,Space_Check_Movement_6 ; Jump forward if it wasn't.
; 'in' was pressed, so move forward.
  CALL Space_Get_Deltas   ; Put the change in co-ordinates in HL.
  LD A,(IY+$05)           ; Get the x co-ordinate.
  ADD A,(HL)              ; Add the offset (may be negative).
  JR NZ,Space_Check_Movement_2 ; If the x co-ordinate is 0, wrap around to EE.
  LD A,$EE                     ;
  JR Space_Check_Movement_3    ;
Space_Check_Movement_2:
  CP $F0                       ; If the x co-ordinate is F0 wrap around to 02.
  JR NZ,Space_Check_Movement_3 ;
  LD A,$02                     ;
Space_Check_Movement_3:
  LD (IY+$05),A           ; Set the new x co-ordinate.
  INC HL                  ; Move to the next position in the table.
  LD A,(IY+$0A)           ; Get the y co-ordinate
  ADD A,(HL)              ; Add the offset (may be negative).
  CP $40                       ; If the y co-ordinate is 40 wrap around to AC.
  JR NZ,Space_Check_Movement_4 ;
  LD A,$AC                     ;
  JR Space_Check_Movement_5    ;
Space_Check_Movement_4:
  CP $AE                       ; If the y co-ordinate is AE wrap around to 42.
  JR NZ,Space_Check_Movement_5 ;
  LD A,$42                     ;
Space_Check_Movement_5:
  LD (IY+$0A),A           ; Set the new y co-ordinate.
Space_Check_Movement_6:
  LD L,(IY+$05)           ; Set the co-ordinates as the location to draw.
  LD H,(IY+$0A)           ; (Draw_XPos)
  LD (Draw_XPos),HL       ;
  LD A,(IY+$00)           ; Use the current sprite ID for the player.
  CALL Draw_Non_Mask      ; Draw it and return.
  RET                     ;

; Asteroids : Get the change values for the current direction
;
; Used by the routines at Space_Check_Movement and Space_Check_Fire.
;
; HL On exit, points to data containing a change in x and y co-ordinates
Space_Get_Deltas:
  LD A,(IY+$00)           ; Get the current sprite.
  SUB $6E                 ; Subtract 6E to get an offset between 0 and 8.
  ADD A,A                 ; Double this to get a word offset.
  LD E,A                  ; Put this in DE.
  LD D,$00                ;
  LD HL,Space_Deltas      ; Add the base address of the direction table.
  ADD HL,DE               ; (Space_Deltas) and return.
  RET                     ;

; Asteroids : Direction to move in
;
; Each entry contains the change in x and y co-ordinate depending on which way
; the player is facing.
Space_Deltas:
  DEFB $00,$FE            ; 0
  DEFB $02,$FE            ; 1
  DEFB $02,$00            ; 2
  DEFB $02,$02            ; 3
  DEFB $00,$02            ; 4
  DEFB $FE,$02            ; 5
  DEFB $FE,$00            ; 6
  DEFB $FE,$FE            ; 7

; Asteroids : Current pointer to data for "hit lightning" sound
;
; Used by the routine at Space_Play_Hit_Lightning.
Space_Play_Hit_Lightning_Ptr:
  DEFW $8000

; Asteroids : Generate a "hit lightning" sound
;
; Used by the routine at Space_Check_Fire.
;
; The routine takes random bytes from 8000 - 9BFF and uses them as pairs of
; lengths to keep the speaker on or off, effectively determine the frequency
; and wave type.
Space_Play_Hit_Lightning:
  PUSH AF                 ; Store AF, BC and HL.
  PUSH BC                 ;
  PUSH HL                 ;
  LD HL,(Space_Play_Hit_Lightning_Ptr) ; Get the current pointer to sound data.
  LD B,$19                ; Loop 19 times.
Space_Play_Hit_Lightning_0:
  PUSH BC                 ; Remember the count in BC.
  LD B,(HL)               ; Get the current frequency.
  INC HL                  ; Move to the next position in the buffer.
  LD A,$10                ; Turn the speaker on.
  OUT ($FE),A             ;
  PUSH BC                 ; Remember the frequency count.
Space_Play_Hit_Lightning_1:
  DJNZ Space_Play_Hit_Lightning_1 ; Loop to keep the speaker on for this time.
  POP BC                  ; Restore the count.
  LD B,(HL)               ; Get the next frequency count.
  INC HL                  ; Move to the next place in the buffer.
  LD A,$00                ; Turn the speaker off.
  OUT ($FE),A             ;
Space_Play_Hit_Lightning_2:
  DJNZ Space_Play_Hit_Lightning_2 ; Loop to keep the speaker off for this time.
  POP BC                  ; Restore the count in BC.
  DJNZ Space_Play_Hit_Lightning_0 ; Loop while there is more to do.
  LD A,H                               ; If HL reaches 9C set it back to 80.
  CP $9C                               ;
  JR NZ,Space_Play_Hit_Lightning_3     ;
  LD H,$80                             ;
Space_Play_Hit_Lightning_3:
  LD (Space_Play_Hit_Lightning_Ptr),HL ;
  POP HL                  ; Restore registers pushed earlier and return.
  POP BC                  ;
  POP AF                  ;
  RET                     ;

; Asteroids : X co-ordinate of missile, or FF in inactive.
Space_Missle_X:
  DEFB $FF

; Asteroids : Y co-ordinate of missile.
Space_Missile_Y:
  DEFB $FF

; Asteroids : Change in X for the missile
Space_Missle_dX:
  DEFB $00

; Asteroids : Change in Y for the missile
Space_Missle_dY:
  DEFB $00

; Number of asteroids left to hit to win the game (starts at 14)
Asteroids_Hit:
  DEFB $14

; Asteroids : Check for firing missile and animate accordingly
;
; Used by the routine at Space_Game.
Space_Check_Fire:
  LD IX,Space_Missle_X    ; Point IX at the missile data.
  LD A,(IX+$00)           ; Is a missile firing?
  CP $FF                  ;
  JR NZ,Space_Check_Fire_0 ; Jump forward if it is.
  CALL Detect_Jump        ; Was 'fire' pressed?
  OR A                    ;
  RET Z                   ; Return if it wasn't.
; 'Fire' was pressed.
  LD A,(IY+$05)           ; Get the x co-ordinate.
  LD (Space_Missle_X),A   ; Set this as the x co-ordinate of the missile.
  LD A,(IY+$0A)           ; Get the y co-ordinate.
  LD (Space_Missile_Y),A  ; Set this as the y co-ordinate of the missile.
  CALL Space_Get_Deltas   ; Get the change values for the current direction.
  LD A,(HL)               ; Get the change in x.
  LD (Space_Missle_dX),A  ; Set this for the missile.
  INC HL                  ; Move to the next position in the table.
  LD A,(HL)               ; Get the change in y.
  LD (Space_Missle_dY),A  ; Set this for the missile.
  LD BC,$FF0A             ; Play a "fire a missile" round.
  LD DE,$0114             ;
  LD HL,$1401             ;
  CALL Play_Sound         ;
  RET                     ; Return.
; A missile is in mid-fire, work out what to do with it.
Space_Check_Fire_0:
  LD BC,Space_Bounds      ; Point BC at the bounds table. (Space_Bounds)
  CALL Update_Next_Sprite ; Update the missile's position.
  LD A,$6D                ; Use the ID of the missle. (Object_6D)
  CALL Draw_Non_Mask      ; Draw it.
  LD A,(Object_Hit_Boundary_X) ; Is the change in X and Y both 0?
  LD B,A                       ;
  LD A,(Object_Hit_Boundary_Y) ;
  OR B                         ;
  JR Z,Space_Check_Fire_1 ; Jump forward if it is.
  LD (IX-$04),$FF         ; Signal that the missile is firing and return.
  RET
; The missile is moving.
Space_Check_Fire_1:
  LD B,$0C
  LD HL,Space_Lightning_States ; Point HL at the lightning bolt position table.
                               ; (Space_Lightning_States)
Space_Check_Fire_2:
  LD A,(HL)               ; Is the next lighting bolt inactive?
  CP $FF                  ;
  JR NZ,Space_Check_Fire_4 ; Jump forward if it isn't.
Space_Check_Fire_3:
  INC HL                  ; Otherwise move to the next entry.
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  DJNZ Space_Check_Fire_2 ; Loop while there are still more lightning bolts to
                          ; look at.
  RET                     ; Otherwise return.
; There is active lightning, did the missile hit it?
Space_Check_Fire_4:
  LD E,A                  ; Put the lightning's x co-ordinate in E.
  SUB (IX-$04)            ; Is it close enough to the missile?
  SUB $08                 ;
  CP $F0                  ;
  JR C,Space_Check_Fire_3 ; If not, jump back to check the next lightning.
  INC HL                  ; Move to the next position in the buffer.
  LD A,(HL)               ; Put the lightning's y co-ordinate  in D.
  LD D,A                  ;
  DEC HL                  ; Move back to the previous position in the buffer.
  SUB (IX-$03)            ; Is the y co-ordinate close enough to the missile?
  SUB $08                 ;
  CP $F0                  ;
  JR C,Space_Check_Fire_3 ; Jump back if it isn't.
; The missile has hit some lightning.
  LD A,$FF                ; Signal there is no lightning here.
  LD (HL),A               ;
  LD (Space_Missle_X),A   ; Signal that the missile is no longer active.
  INC HL                  ; Move to the next place in the buffer.
  INC HL                  ;
  INC HL                  ;
  INC HL                  ;
  LD A,(HL)               ; Get the object ID for the lightning.
  CP $6B                  ; Is it 6B? (small lightning)
  JR Z,Space_Check_Fire_5 ; Jump forward if it is.
  LD A,$6B                ; Set the UDG to a small lightning bolt. (Object_6B)
  CALL Space_Move_Lightning ; Move the lightning bolts around.
  CALL Space_Move_Lightning ;
  JR Space_Check_Fire_7   ; Jump forward to play the sound effect and return.
; The missile hit some small lightning.
Space_Check_Fire_5:
  LD A,(Space_Lightning_Regenerate) ; Flip the "regenerate lightning" bit.
  XOR $01                           ;
  LD (Space_Lightning_Regenerate),A ;
  JR NZ,Space_Check_Fire_7 ; Skip the next bit of code if the bit is set.
  LD DE,$42EE              ; Get bit 1 of R, to generate a random flag, that
  LD A,R                   ; determines the lightning comes in at the top right
  AND $01                  ; or the bottom left.
  JR NZ,Space_Check_Fire_6 ;
  LD DE,$AE02              ;
Space_Check_Fire_6:
  LD A,$38                ; Set the UDG to a big lightning bolt. (Object_38)
  CALL Space_Move_Lightning ; Move the lightning bolts around.
  LD HL,Asteroids_Hit     ; Point HL at the number of asteroids left to hit.
                          ; (Asteroids_Hit)
  LD A,(HL)               ; Have we destroyed all of them already?
  OR A                    ;
  JR Z,Space_Check_Fire_7 ; Jump forward if we have.
  DEC (HL)                ; Otherwise decrement the count of asteroids left to
                          ; hit.
  JR NZ,Space_Check_Fire_7 ; Jump forward if the count is not zero.
; The player has destroyed enough asteroids to win the sub-game.
  LD A,$01                ; Set the asteroids game as completed.
  LD (Flag_D),A           ;
  LD (Task_1E),A          ; Set the task completed. (Task_01)
  LD A,(IY-$1E)           ; Earn the player £100.
  ADD A,$01               ;
  DAA                     ;
  LD (IY-$1E),A           ;
  LD A,(Total_Earnings)   ; Add £100 to the grand total.
  ADD A,$01               ;
  DAA                     ;
  LD (Total_Earnings),A   ;
; Play the "completed" sound effect.
  LD BC,$BE32             ; Set the parameters for the first sound.
  LD HL,$0000             ;
  LD DE,$0A0A             ;
  CALL Space_Won_Tune     ; Play it.
  LD BC,$9664             ; Set the parameters for the second sound.
  CALL Space_Won_Tune     ; Play it.
  LD BC,$A532             ; Set the parameters for the third sound.
  CALL Space_Won_Tune     ; Play it.
  LD BC,$7D78             ; Set the parameter for the fourth sound.
  CALL Space_Won_Tune     ; Play it.
; This code is a common entry point if lightining was hit.
Space_Check_Fire_7:
  CALL Space_Play_Hit_Lightning ; Play the "hit lighting" sound effect and
  RET                           ; return.

; Asteroids : Play a note of the "won" sound effect
;
; Used by the routine at Space_Check_Fire.
Space_Won_Tune:
  PUSH HL                 ; Store HL and DE.
  PUSH DE                 ;
  CALL Play_Sound         ; Play the sound effect.
  POP DE                  ; Restore DE and HL, and return.
  POP HL                  ;
  RET                     ;

; Asteroids : Flag to indicate new lightning bolts should be created
;
; Alternates between 0 and 1. If reset, a new lightning bolt can be created if
; a small bolt is destroyed.
Space_Lightning_Regenerate:
  DEFB $00

; Asteroids : Move the lightning bolts around
;
; Used by the routine at Space_Check_Fire.
;
; A Object ID to use
Space_Move_Lightning:
  PUSH IX                 ; Store IX.
  LD IX,Space_Lightning_States ; Point IX at the lightning bolts table.
                               ; (Space_Lightning_States)
  PUSH AF                 ; Store AF.
Space_Move_Lightning_0:
  LD A,(IX+$00)           ; Is the lightning bolt here active?
  CP $FF                  ;
  JR Z,Space_Move_Lightning_1 ; Jump forward if it isn't.
  CALL Update_Next_Sprite_6 ; Otherwise move to the next entry.
  INC IX                    ;
  JR Space_Move_Lightning_0 ;
; Create a lightning bolt here and set it moving in a random direction.
Space_Move_Lightning_1:
  LD (IX+$00),E           ; Put the x co-ordinate in E.
  LD (IX+$01),D           ; Put the y co-ordinate in D.
  LD A,R                  ; Copy R to A to get a pseudo-random number.
  AND $02                 ; Select bit 2 and subtract that value, giving a
  DEC A                   ; random number that's 0 or FE.
  ADD A,A                 ; Double the value.
  LD (IX+$02),A           ; Set that as the next change in direction.
  LD A,R                  ; Copy R to A to get a pseudo-random number.
  AND $02                 ; Select bit 2 and shift right, giving a random
  RRA                     ; number that's 0 or 1.
  LD C,A                  ; Store this value in C.
  LD A,R                  ; Copy R to A to get a pseudo-random number.
  AND $01                 ; Select bit 1.
  SUB C                   ; Subtract C, giving a random number that's 1, 0 or
                          ; FF.
  ADD A,A                 ; Double this (giving 2, 0 or FE).
  LD (IX+$03),A           ; Set this as the Y offset
  POP AF                  ; Restore AF.
  LD (IX+$04),A           ; Set the object ID.
  POP IX                  ; Restore IX and return.
  RET                     ;

