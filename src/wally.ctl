b $4000 Loading screen
g $5B00 Copy of main playing area
g $6B00 Sprite buffer
b $7B00 Lookup table for reversing graphics
t $7C00 Character names
; Total max wages : Wally - 690, Wilma 520, Tom 530, Dick 610, Harry 650 overall 3000
t $7C1B Wages page text
t $7C76 Completed page text
t $7D48 Game over page text
t $7DC6 Title page text
t $7E37 'Key :'
t $7E3F Status bar text
t $7E71 Morning tea break
t $7E9F Lunch time
t $7ECC Afternoon tea break
b $7F02 Room data : Asteroids
t $7F1F Location text
b $80A9 Positions of the lightning bolts in the "asteroids" game
B $80A9,$3C,5
c $80E5 Show title screen
z $813A
c $813B Set up initial game data
c $8155 Demo mode
c $8184 Main entry point
c $81AE Move everything on screen
c $81C4 Check for the pause key
D $81C4 If CAPS + SPACE is held down, loop until it is released
c $81D4 Update a sprite's animation tiles (flipping if required)
c $81E3 Reverse a sprite according to the criteria in the buffer at $7B00
R $81E3 DE The address of the graphic
R $81E3 BC The size of the data to copy
w $81F8 Screen offsets for status bar
D $81F8 This buffer holds the various locations on screen
D $81F8 where each line of text should go
w $8248 Screen offset table : Separator bar between status and main screen
w $8278 Screen offset table : Main screen
b $8378 Collectable object graphics
D $8378 #UDGTABLE { #UDGARRAY2,$46,,2;$8378-$84B7-1-16(graph00) | #UDGARRAY2,$46,,2;$84B8-$85F7-1-16(graph01) | #UDGARRAY2,$46,,2;$85F8-$8737-1-16(graph02) | #UDGARRAY2,$46,,2;$8738-$8897-1-16(graph03) } TABLE#
b $8898 Moving objects (masked)
D $8898 #UDGTABLE { #UDGARRAY4,$46,,4;$8898-$88D7-1-32{32}(graph04) | #UDGARRAY2,$46,,2;$88D8-$88F7-1-16(graph05)  } TABLE# 
D $8898 #UDGTABLE { #UDGARRAY4,$46,,4;$88F8-$8CF7-1-32{32}(graph1) } TABLE#
b $8CF8 Moving objects (unmasked)
D $8CF8 #UDGTABLE { #UDGARRAY2,$46,,2;$8CF8-$9017-1-16(graph2) } TABLE#
b $9018 Morning / afternoon / tea break graphics
D $9018 #UDGTABLE { #UDGARRAY4,$46,,4;$9018-$90D7-1-32{32}(graph3) } TABLE#
b $90D8 Asteroids game graphics
D $90D8 #UDGTABLE { #UDGARRAY4,$46,,4;$90D8-$9115-1-32{32}(graph40) } TABLE#
D $90D8 #UDGTABLE { #UDGARRAY2,$46,,2;$9116-$9227-1-16(graph4) } TABLE#
D $90D8 #UDGTABLE { #UDGARRAY2,$46,,4;$9228-$9237-1-16(graph5) } TABLE#
b $9238 Movable objects (masked)
D $9238 #UDGTABLE { #UDGARRAY4,$46,,4;$9238-$9437-1-32{32}(graph6) } TABLE#
b $9438 Character graphics
D $9438 #UDGTABLE { #UDGARRAY4,$46,,4;$9438-$94B7-1-32{32}(wally0) | #UDGARRAY4,$46,,4;$94B8-$9537-1-32{32}(wally1) | #UDGARRAY4,$46,,4;$9538-$95B7-1-32{32}(wally2) | #UDGARRAY4,$46,,4;$95B8-$9637-1-32{32}(wally3) | #UDGARRAY4,$46,,4;$9638-$96B7-1-32{32}(wally4) | #UDGARRAY4,$46,,4;$96B8-$9737-1-32{32}(wally5) | #UDGARRAY4,$46,,4;$9738-$97B7-1-32{32}(wally6) | #UDGARRAY4,$46,,4;$97B8-$9837-1-32{32}(wally7) } TABLE#
D $9438 #UDGTABLE { #UDGARRAY4,$45,,4;$9838-$98B7-1-32{32}(wilma0) | #UDGARRAY4,$45,,4;$98B8-$9937-1-32{32}(wilma1) | #UDGARRAY4,$45,,4;$9938-$99B7-1-32{32}(wilma2) | #UDGARRAY4,$45,,4;$99B8-$9A37-1-32{32}(wilma3) | #UDGARRAY4,$45,,4;$9A38-$9AB7-1-32{32}(wilma4) | #UDGARRAY4,$45,,4;$9AB8-$9B37-1-32{32}(wilma5) | #UDGARRAY4,$45,,4;$9B38-$9BB7-1-32{32}(wilma6) | #UDGARRAY4,$45,,4;$9BB8-$9C37-1-32{32}(wilma7) } TABLE#
D $9438 #UDGTABLE { #UDGARRAY4,$44,,4;$9C38-$9CB7-1-32{32}(tom0) | #UDGARRAY4,$44,,4;$9CB8-$9D37-1-32{32}(tom1) | #UDGARRAY4,$44,,4;$9D38-$9DB7-1-32{32}(tom2) | #UDGARRAY4,$44,,4;$9DB8-$9E37-1-32{32}(tom3) | #UDGARRAY4,$44,,4;$9E38-$9EB7-1-32{32}(tom4) | #UDGARRAY4,$44,,4;$9EB8-$9F37-1-32{32}(tom5) | #UDGARRAY4,$44,,4;$9F38-$9FB7-1-32{32}(tom6) | #UDGARRAY4,$44,,4;$9FB8-$A037-1-32{32}(tom7) } TABLE#
D $9438 #UDGTABLE { #UDGARRAY4,$43,,4;$A038-$A0B7-1-32{32}(dick0) | #UDGARRAY4,$43,,4;$A0B8-$A137-1-32{32}(dick1) | #UDGARRAY4,$43,,4;$A138-$A1B7-1-32{32}(dick2) | #UDGARRAY4,$43,,4;$A1B8-$A237-1-32{32}(dick3) | #UDGARRAY4,$43,,4;$A238-$A2B7-1-32{32}(dick4) | #UDGARRAY4,$43,,4;$A2B8-$A337-1-32{32}(dick5) | #UDGARRAY4,$43,,4;$A338-$A3B7-1-32{32}(dick6) | #UDGARRAY4,$43,,4;$A3B8-$A437-1-32{32}(dick7) } TABLE#
D $9438 #UDGTABLE { #UDGARRAY4,$47,,4;$A438-$A4B7-1-32{32}(harry0) | #UDGARRAY4,$47,,4;$A4B8-$A537-1-32{32}(harry1) | #UDGARRAY4,$47,,4;$A538-$A5B7-1-32{32}(harry2) | #UDGARRAY4,$47,,4;$A5B8-$A637-1-32{32}(harry3) | #UDGARRAY4,$47,,4;$A638-$A6B7-1-32{32}(harry4) | #UDGARRAY4,$47,,4;$A6B8-$A737-1-32{32}(harry5) | #UDGARRAY4,$47,,4;$A738-$A7B7-1-32{32}(harry6) | #UDGARRAY4,$47,,4;$A7B8-$A837-1-32{32}(harry7) } TABLE# 
b $A838 Temporary workspace for putting static objects on screen
w $A83B Temporary store for the stack pointer for putting static objects on screen
c $A83D Put a static object on screen
c $A8A0 Update moving graphic buffers
c $A921 Get the next player number to process
R $A921 L On exit, holds the character number
c $A92C Move a computer controlled character
R $A92C IY - base address of character data (BC67 = Wally - BC6B = Harry)
c $AA30 Refresh the static objects in this room
c $AA7F Generate an "item swapped" sound effect
c $AA8C Get the end address of the item object buffer for this room
w $AAA0 Jump table of movement actions
c $AAB2 Movement routine 0. Check a character can be moved left, and do so if possible
c $AADD Movement routine 1. Check a character can be moved right, and do so if possible
c $AB09 Movement routine 2.
c $AB26 Movement routine 3.
c $AB43 Movement routine 4.
c $AB60 Movement routine 5.
c $AB9B Movement routine 6.
c $ABD7 See if the 'in' key was pressed and set A to 1 if it was
c $AC06 New room check
D $AC06 This routine sees if the character is at the left or right of
D $AC06 the screen, or 'in' was pressed, and switches rooms if appropriate
c $AC5F Get the address for the co-ordinate table of a room
R $AC5F A The room number
R $AC5F HL On exit, holds the address of the co-ordinate table to use
c $AC69 Get the address of the next room table for this room and put it in HL
c $AC6C Get the address of item data for this room and put it in HL
R $AC6C HL The base address of item data
R $AC6C A The current room number
R $AC6C B On return, holds the number of entries for this room
b $AC7F Next rooms : The Town Square
b $AC86 Next rooms : Stamp Street
b $AC93 Next rooms : The Post Office
b $AC97 Next rooms : Market Street
b $ACA1 Next rooms : The Super Market
b $ACA5 Next rooms : The Park
b $ACAF Next rooms : Wobbly Walk
b $ACBC Next rooms : Rubble Road
b $ACC9 Next rooms : Wall Street
b $ACD0 Next rooms : Pete Street
b $ACD7 Next rooms : The Work Shed
b $ACDE Next rooms : School Lane
b $ACE8 Next rooms : The School
b $ACEC Next rooms : Baker Street
b $ACF6 Next rooms : The Bakers
b $ACFA Next rooms : The Pub
b $ACFE Next rooms : Motor Way
b $AD0B Next rooms : The Laboratory
b $AD0F Next rooms : The Garage
b $AD13 Next rooms : Reference Road
b $AD1D Next rooms : The Library
b $AD21 Next rooms : Penny Lane
b $AD2E Next rooms : The Bank
b $AD32 Next rooms : Wally's House
b $AD36 Next rooms : Meat Street
b $AD43 Next rooms : The Butchers
b $AD47 Next rooms : Trunk Road
b $AD51 Next rooms : The Zoo
b $AD55 Next rooms : Rail Road
b $AD5F Next rooms : The Station
b $AD63 Next rooms : The Docks
b $AD6A Next rooms : The Sewer
b $AD74 Next rooms : The Cave
b $AD78 Table for next action to perform by a computer player
B $AD78,$42,2
c $ADBA A character can perform an action here. Do it if necessary
c $AE30 Get a flag to specify if a room can only be reached via the "in" key
R $AE30 A Holds the room number, returns with the appropriate flag
b $AE3C Table of room flags. Set to 1 to mean a computer player will walk the entire length of it
c $AE5D This routine is called when a character reaches the edge of a room
c $AE8A Get the address of nth item data
R $AE8A E The item index
R $AE8A HL On exit, holds of the address of the item data currently at that location
b $AEA7 nth item swap list : Wally
b $AEB0 nth item swap list : Wilma
b $AEB9 nth item swap list : Tom
b $AEC2 nth item swap list : Dick
b $AECB nth item swap list : Harry
w $AED5 The next room a computer character should swap
c $AED7 Get the next room that a computer controlled character should swap items
R $AED7 A On return, holds the room number
b $AEEA List of rooms a computer player can swap items in. Terminated by FF.
b $AF00 The next room for the jumping jack or Herbert to appear in
c $AF01 Set the next room for the jumping jack or Herbert to appear in
b $AF10 Co-ordinate table
D $AF10 This table contains the x and y co-ordinates for the entries in the
D $AF10 'next' room table. If the co-ordinates match and / or 'in' is pressed,
D $AF10 the room should be switched
b $AF22 Platform table 0 (most rooms)
b $AF23 Platform table 1 (The Sewer)
b $AF54 Platform table 2 (The School)
b $AF64 Platform table 3 (The Station)
b $AF68 Platform table 4 (School Lane)
b $AF72 Platform table 5 (The Town Square)
b $AF7C Platform table 6 (unused)
b $AF7D Platform table 7 (The Super Market)
b $AF84 Platform table 8 (The Pub)
b $AF88 Platform table 9 (Wall Street) 
w $AF8F The address table for appropriate above-floor platforms in a room
D $AF8F Each table contains three byte entries in the format
D $AF8F y co-ordinate, leftmost co-ordinate, rightmost co-ordinate
D $AF8F and is terminated by FF
b $AFA3 Table containing the platform layout ID (see jump table in AF8F) for each room
c $AFC4 See if a player is in mid-air, and drop them on a platform or ground
c $B00B Check that 'left' has been pressed, and set A to 1 if it has
c $B03C Check that 'right' has been pressed, and set A to 1 if it has
c $B06D Check that 'jump' has been pressed, and set A to 1 if it has
w $B09D Buffer for the current player
D $B09D BC67 - Wally BC68 - Wilma BC69 - Tom BC6A - Dick BC6B - Harry
c $B09F Check for user input and act on it
c $B0E6 Put a character into the sprite buffer
R $B0E6 IY The base address of the character buffer (BC67 - BC6B)
c $B197 Drop the current character's height down one notch up to floor level
c $B1A6 Make the current character jump
b $B264 Jump table for computer controlled characters
B $B264,$24,3
c $B288 Move a character left or right
b $B2DB The current control mechanism (0 - Keyboard, 1 - Sinclair, 2 - Kempston)
c $B2DC Select Kempston control
c $B2E2 Select Sinclair control
c $B2E8 Select Keyboard control
b $B2ED Temporary space to calculate individual earnings
b $B2EF Final total of money earned
c $B2F1 Print a breakdown of who earned what
z $B34B
c $B34C Print a monetary value on screen
R $B34C HL Pointer to the money
R $B34C DE The screen position
R $B34C C The attribute to use
c $B3AB Wait for a keypress and return it in A
b $B3BE The offsets on screen to put everyone for the final safe cracking sequence
c $B3C3 The safe has been cracked! Get everyone together and print earnings.
c $B451 The game has ended. Print the final score.
c $B471 Initialize the theme tune data
c $B482 Play the next note of the theme tune and get a keypress
b $B4E7 The address of the next note in the theme tune to play
b $B4E9 The last key (0 - 4) pressed
b $B4EA The wave to play the next note, 0 = sawtooth, 1 = square
c $B4EB Pause and collect a keypress from 1 - 4
R $B4EB BC The time to pause
c $B505 Play a note in the theme tune
R $B505 C The pitch to play
R $B505 DE The length note to play
b $B537 Theme tune timing constants
b $B560 Theme tune 
c $B715 Put a character on screen
R $B715 C The attribute to display
R $B715 HL The address of the character to print
R $B715 D The y co-ordinate
R $B715 E The x co-ordinate
c $B77B Print an inventory graphic
R $B77B A The item number to display
R $B77B D The y co-ordinate
R $B77B E The x co-ordinate
c $B7BA Print a graphic on screen
R $B7BA A
R $B7BA HL The address of the graphic
R $B7BA D The y co-ordinate
R $B7BA E The x co-ordinate
R $B7BA C The attribute to use
c $B7F9 Draw a special variation on a room (wall built, safe cracked)
c $B82B Patch the display to do something different
c $B84B Draw a FF terminated room graphic string
R $B84B HL The address of the string to draw
R $B84B D The y co-ordinate
R $B84B E The x co-ordinate
c $B8C4 Print an FF terminated string, processing control characters
R $B8C4 C The attribute to display
R $B8C4 HL The address of the start of the string
R $B8C4 D The y co-ordinate of the first character
R $B8C4 E The x co-ordinate of the first character
c $B8ED Blank the screen
c $B902 Clear the room's graphics
c $B931 Clear the top status bar
b $B951 The current room number
c $B952 Draw a room's graphics
c $B9AC Draw the screen
c $B9D6 Update the characters' positions and draw if it's in range
R $B9D6 IY The buffer containing the current character's data
c $B9FB Put the sprites on screen
c $BA25 Fast copy memory
t $BA66 '{character} is in {location}'
c $BA6E Print a "{character} is in {room}" message
g $BAB3 Set to 1 to signal a room redraw
c $BAB4 Move to a new room
c $BACE Skip forward a string
R $BACE HL The address of the current string
R $BACE B The offset of the current string
c $BAD8 Initialize character data
b $BB3E Initial states for collectable objects
B $BB3E,$3E,2
D $B33E This table contains a pair of bytes, the first with the object ID,
D $B33E the second with bit 8 set if a computer player can pick it up,
D $B33E and a bitfield showing which players can (always 1F)
b $BB7C Template for initial game data
B $BB7C,$AF,5
s $BC2B
b $BC30
b $BC35
b $BC3A
b $BC3F Character ID (1 = Wally, 2 = Wilma, 4 = Tom, 8 = Dick, 10 = Harry)
b $BC44 Offset for each character name (from 7C00)
b $BC49 Earnings / 100
b $BC4E Set to 1 to trigger a footstep sound for each character
b $BC53
b $BC58
b $BC5D Earnings % 100
b $BC62
b $BC67 The animation phase for each character
b $BC6C x position on screen for each character
b $BC71 y position on screen for each character
b $BC76 Room number a character is in
b $BC7B Endurance level for each character
b $BC80
b $BC85 Mask offset for a character
b $BC8A Graphic offset for a character
b $BC8F Base address for a character's graphic
b $BC94 Lives left for each player
b $BC99
b $BC9E
b $BCA3 Character jumping (0 = yes) 
b $BCA8 Character direction (0 = left, FF = right)
b $BCAD
b $BCB2
b $BCB7 First item of each character
b $BCBC Second item of each character
b $BCC1
b $BCC6
b $BCCB Next movement for a computer character
b $BCD0
b $BCD5
b $BCDA
b $BCDF Lo byte of the item swap buffer
b $BCE4 Hi byte of the item swap buffer
b $BCE9 Items in the Town Square (none)
b $BCEA Items in Stamp Street (none)
b $BCEB Items in the Post Office
b $BCF0 Items in Market Street (none)
b $BCF1 Items in the Supermarket
b $BCFA Item in the Park
b $BCFF Items in Wobbly Walk (none)
b $BD00 Items in Rubble Road (none)
b $BD01 Items in Wall Street
b $BD0A Item in Pete Street
b $BD0F Items in Workshed
b $BD1C Item in School Lane
b $BD21 Item in the School
b $BD26 Items in Baker Street (none)
b $BD27 Item in the Bakers
b $BD2C Item in the Pub
b $BD31 Items in Motor Way (none)
b $BD32 Items in the Laboratory
b $BD3B Item in the Garage
b $BD40 Items in Reference Road (none)
b $BD41 Items in the Library
b $BD4E Items in Penny Lane
b $BD4F Item in the Bank
b $BD54 Item in Wally's House
b $BD59 Items in Meat Street (none)
b $BD5A Items in the Butchers
b $BD63 Items in Trunk Road (none)
b $BD64 Item in the Zoo
b $BD69 Items in Rail Road (none)
b $BD6A Item in the Station
b $BD6F Items in the Docks
b $BD78 Item in the Sewer
b $BD7D Items in the Cave
w $BD86 Jump table for room block components
b $C352 Room block data 0
D $C352 #CALL:print_block_data(#PC,block_data_0)
b $C37C Room block data 1
D $C37C #CALL:print_block_data(#PC,block_data_1)
b $C3DB Room block data 2
D $C3DB #CALL:print_block_data(#PC,block_data_2)
b $C56B Room block data 3
D $C56B #CALL:print_block_data(#PC,block_data_3)
b $C580 Room block data 4
D $C580 #CALL:print_block_data(#PC,block_data_4)
b $C5C0 Room block data 5
D $C5C0 #CALL:print_block_data(#PC,block_data_5)
b $C651 Room block data 6
D $C651 #CALL:print_block_data(#PC,block_data_6)
b $C6E3 Room block data 7
D $C6E3 #CALL:print_block_data(#PC,block_data_7)
b $C703 Room block data 8
D $C703 #CALL:print_block_data(#PC,block_data_8)
b $C71F Room block data 9
D $C71F #CALL:print_block_data(#PC,block_data_9)
b $C732 Room block data A
D $C732 #CALL:print_block_data(#PC,block_data_A)
b $C745 Room block data B
D $C745 #CALL:print_block_data(#PC,block_data_B)
b $C77F Room block data C
D $C77F #CALL:print_block_data(#PC,block_data_C)
b $C7BF Room block data D
D $C7BF #CALL:print_block_data(#PC,block_data_D)
b $C844 Room block data E
D $C844 #CALL:print_block_data(#PC,block_data_E)
b $C9BE Room block data F
D $C9BE #CALL:print_block_data(#PC,block_data_F)
b $C9DD Room block data 10
D $C9DD #CALL:print_block_data(#PC,block_data_10)
b $C9FC Room block data 11
D $C9FC #CALL:print_block_data(#PC,block_data_11)
b $CA57 Room block data 12
D $CA57 #CALL:print_block_data(#PC,block_data_12)
b $C860 Room block data 13
D $C860 #CALL:print_block_data(#PC,block_data_13)
b $C908 Room block data 14
D $C908 #CALL:print_block_data(#PC,block_data_14)
b $C986 Room block data 15
D $C986 #CALL:print_block_data(#PC,block_data_15)
b $C9A2 Room block data 16
D $C9A2 #CALL:print_block_data(#PC,block_data_16)
b $CA9A Room block data 17
D $CA9A #CALL:print_block_data(#PC,block_data_17)
b $CAAE Room block data 18
D $CAAE #CALL:print_block_data(#PC,block_data_18)
b $C876 Room block data 19
D $C876 #CALL:print_block_data(#PC,block_data_19)
b $C8E4 Room block data 1A
D $C8E4 #CALL:print_block_data(#PC,block_data_1A)
b $C9D4 Room block data 1B
D $C9D4 #CALL:print_block_data(#PC,block_data_1B)
b $C7B7 Room block data 1C
D $C7B7 #CALL:print_block_data(#PC,block_data_1C)
b $C8B3 Room block data 1D
D $C8B3 #CALL:print_block_data(#PC,block_data_1D)
b $C8C3 Room block data 1E
D $C8C3 #CALL:print_block_data(#PC,block_data_1E)
b $C23C Room block data 1F
D $C23C #CALL:print_block_data(#PC,block_data_1F)
b $C35D Room block data 20
D $C35D #CALL:print_block_data(#PC,block_data_20)
b $C369 Room block data 21
D $C369 #CALL:print_block_data(#PC,block_data_21)
b $C91A Room block data 22
D $C91A #CALL:print_block_data(#PC,block_data_22)
b $C762 Room block data 23
D $C762 #CALL:print_block_data(#PC,block_data_23)
b $C943 Room block data 24
D $C943 #CALL:print_block_data(#PC,block_data_24)
b $C801 Room block data 25
D $C801 #CALL:print_block_data(#PC,block_data_25)
b $C82B Room block data 26
D $C82B #CALL:print_block_data(#PC,block_data_26)
b $C889 Room block data 27
D $C889 #CALL:print_block_data(#PC,block_data_27)
b $C89F Room block data 28
D $C89F #CALL:print_block_data(#PC,block_data_28)
b $C79F Room block data 29
D $C79F #CALL:print_block_data(#PC,block_data_29)
b $C7E0 Room block data 2A
D $C7E0 #CALL:print_block_data(#PC,block_data_2A)
b $CB05 Room block data 2B
D $CB05 #CALL:print_block_data(#PC,block_data_2B)
b $C797 Room block data 2C
D $C797 #CALL:print_block_data(#PC,block_data_2C)
b $C254 Room block data 2D
D $C254 #CALL:print_block_data(#PC,block_data_2D)
b $C20A Room block data 2E
D $C20A #CALL:print_block_data(#PC,block_data_2E)
b $C220 Room block data 2F
D $C220 #CALL:print_block_data(#PC,block_data_2F)
b $CB2F Room block data 30
D $CB2F #CALL:print_block_data(#PC,block_data_30)
b $CB55 Room block data 31
D $CB55 #CALL:print_block_data(#PC,block_data_31)
b $CB6B Room block data 32
D $CB6B #CALL:print_block_data(#PC,block_data_32)
b $CBA0 Room block data 33
D $CBA0 #CALL:print_block_data(#PC,block_data_33)
b $CBE0 Room block data 34
D $CBE0 #CALL:print_block_data(#PC,block_data_34)
b $CBF0 Room block data 35
D $CBF0 #CALL:print_block_data(#PC,block_data_35)
b $CC03 Room block data 36
D $CC03 #CALL:print_block_data(#PC,block_data_36)
b $CC25 Room block data 37
D $CC25 #CALL:print_block_data(#PC,block_data_37)
b $CCDA Room block data 38
D $CCDA #CALL:print_block_data(#PC,block_data_38)
b $CCF2 Room block data 39
D $CCF2 #CALL:print_block_data(#PC,block_data_39)
b $C857 Room block data 3A
D $C857 #CALL:print_block_data(#PC,block_data_3A)
b $C27C Room block data 3B
D $C27C #CALL:print_block_data(#PC,block_data_3B)
b $C92E Room block data 3C
D $C92E #CALL:print_block_data(#PC,block_data_3C)
b $CC39 Room block data 3D
D $CC39 #CALL:print_block_data(#PC,block_data_3D)
b $CC97 Room block data 3E
D $CC97 #CALL:print_block_data(#PC,block_data_3E)
b $CB1A Room block data 3F
D $CB1A #CALL:print_block_data(#PC,block_data_3F)
b $CCAA Room block data 40
D $CCAA #CALL:print_block_data(#PC,block_data_40)
b $CC8D Room block data 41
D $CC8D #CALL:print_block_data(#PC,block_data_41)
b $CC5D Room block data 42
D $CC5D #CALL:print_block_data(#PC,block_data_42)
b $C5DA Room block data 43
D $C5DA #CALL:print_block_data(#PC,block_data_43)
b $C5F9 Room block data 44
D $C5F9 #CALL:print_block_data(#PC,block_data_44)
b $C610 Room block data 45
D $C610 #CALL:print_block_data(#PC,block_data_45)
b $C61A Room block data 46
D $C61A #CALL:print_block_data(#PC,block_data_46)
b $C625 Room block data 47
D $C625 #CALL:print_block_data(#PC,block_data_47)
b $C635 Room block data 48
D $C635 #CALL:print_block_data(#PC,block_data_48)
b $C291 Room block data 49
D $C291 #CALL:print_block_data(#PC,block_data_49)
b $C29A Room block data 4A
D $C29A #CALL:print_block_data(#PC,block_data_4A)
b $CACA Room block data 4B
D $CACA #CALL:print_block_data(#PC,block_data_4B)
b $CCB2 Room block data 4C
D $CCB2 #CALL:print_block_data(#PC,block_data_4C)
b $C19D Room block data 4D
D $C19D #CALL:print_block_data(#PC,block_data_4D)
b $CA1F Room block data 4E
D $CA1F #CALL:print_block_data(#PC,block_data_4E)
b $BFE2 Room block data 4F
D $BFE2 #CALL:print_block_data(#PC,block_data_4F)
b $C0F1 Room block data 50
D $C0F1 #CALL:print_block_data(#PC,block_data_50)
b $BFA4 Room block data 51
D $BFA4 #CALL:print_block_data(#PC,block_data_51)
b $BFB2 Room block data 52
D $BFB2 #CALL:print_block_data(#PC,block_data_52)
b $BFDA Room block data 53
D $BFDA #CALL:print_block_data(#PC,block_data_53)
b $BFFE Room block data 54
D $BFFE #CALL:print_block_data(#PC,block_data_54)
b $BF27 Room block data 55
D $BF27 #CALL:print_block_data(#PC,block_data_55)
b $C132 Room block data 56
D $C132 #CALL:print_block_data(#PC,block_data_56)
b $BE8F Room block data 57
D $BE8F #CALL:print_block_data(#PC,block_data_57)
b $BEDA Room block data 58
D $BEDA #CALL:print_block_data(#PC,block_data_58)
b $BF03 Room block data 59
D $BF03 #CALL:print_block_data(#PC,block_data_59)
b $BF19 Room block data 5A
D $BF19 #CALL:print_block_data(#PC,block_data_5A)
b $C026 Room block data 5B
D $C026 #CALL:print_block_data(#PC,block_data_5B)
b $C03C Room block data 5C
D $C03C #CALL:print_block_data(#PC,block_data_5C)
b $C045 Room block data 5D
D $C045 #CALL:print_block_data(#PC,block_data_5D)
b $C050 Room block data 5E
D $C050 #CALL:print_block_data(#PC,block_data_5E)
b $C05A Room block data 5F
D $C05A #CALL:print_block_data(#PC,block_data_5F)
b $C082 Room block data 60
D $C082 #CALL:print_block_data(#PC,block_data_60)
b $C0A0 Room block data 61
D $C0A0 #CALL:print_block_data(#PC,block_data_61)
b $C0AA Room block data 62
D $C0AA #CALL:print_block_data(#PC,block_data_62)
b $C0B8 Room block data 63
D $C0B8 #CALL:print_block_data(#PC,block_data_63)
b $C0D4 Room block data 64
D $C0D4 #CALL:print_block_data(#PC,block_data_64)
b $CAEC Room block data 65
D $CAEC #CALL:print_block_data(#PC,block_data_65)
b $C0DC Room block data 66
D $C0DC #CALL:print_block_data(#PC,block_data_66)
b $CD14 Room block data 67
D $CD14 #CALL:print_block_data(#PC,block_data_67)
b $C4CD Room block data 68
D $C4CD #CALL:print_block_data(#PC,block_data_68)
b $C437 Room block data 69
D $C437 #CALL:print_block_data(#PC,block_data_69)
b $C2A8 Room block data 6A
D $C2A8 #CALL:print_block_data(#PC,block_data_6A)
b $C312 Room block data 6B
D $C312 #CALL:print_block_data(#PC,block_data_6B)
b $C577 Room block data 6C
D $C577 #CALL:print_block_data(#PC,block_data_6C)
b $C960 Room block data 6D
D $C960 #CALL:print_block_data(#PC,block_data_6D)
b $BF81 Room block data 6E
D $BF81 #CALL:print_block_data(#PC,block_data_6E)
b $C957 Room block data 6F
D $C957 #CALL:print_block_data(#PC,block_data_6F)
b $BE72 Room block data 70
D $BE72 #CALL:print_block_data(#PC,block_data_70)
b $C334 Room block data 71
D $C334 #CALL:print_block_data(#PC,block_data_71)
b $C347 Room block data 72
D $C347 #CALL:print_block_data(#PC,block_data_72)
b $CB85 Room block data 73
D $CB85 #CALL:print_block_data(#PC,block_data_73)
b $CD2F Room block data 74
D $CD2F #CALL:print_block_data(#PC,block_data_74)
b $CD43 Room block data 75
D $CD43 #CALL:print_block_data(#PC,block_data_75)
w $CDB5 Table for room data
b $CDF7 Room data : The Town Square
b $CE01 Room data : Stamp Street
b $CE25 Room data : The Post Office
b $CE37 Room data : Market Street
b $CE69 Room data : The Super Market
b $CE7B Room data : The Park
b $CE89 Room data : Wobbly Walk
b $CEAD Room data : Rubble Road
b $CEC9 Room data : Wall Street
b $CEE1 Room data : Pete Street
b $CEF9 Room data : The Work Shed
b $CF09 Room data : School Lane
b $CF29 Room data : The School
b $CF49 Room data : Baker Street
b $CF71 Room data : The Bakers
b $CF97 Room data : The Pub
b $CFB5 Room data : Motor Way
b $CFD9 Room data : The Laboratory
b $CFEF Room data : The Garage
b $D009 Room data : Reference Road
b $D039 Room data : The Library
b $D057 Room data : Penny Lane
b $D08B Room data : The Bank
b $D0AF Room data : Wally's House
b $D0C3 Room data : Meat Street
b $D0E7 Room data : The Butcher's
b $D109 Room data : Trunk Road
b $D125 Room data : The Zoo
b $D135 Room data : Rail Road
b $D153 Room data : The Station
b $D16D Room data : The Docks
b $D17D Room data : The Sewer
b $D191 Room data : The Cave
b $D1BC Room block graphics
D $D1BC #UDGTABLE { #UDGARRAY1,$47,,1;$D1BC-$D203-8(rbg0) } TABLE#
b $D204 Room block graphics
D $D204 #UDGTABLE { #UDGARRAY1,$47,,1;$D204-$D333-8(rbg1) } TABLE#
b $D334 Room block graphics
D $D334 #UDGTABLE { #UDGARRAY1,$47,,1;$D334-$D35B-8(rbg2) } TABLE#
b $D35C Room block graphics
D $D35C #UDGTABLE { #UDGARRAY1,$47,,1;$D35C-$D3E3-8(rbg3) } TABLE#
b $D3E4 Room block graphics
D $D3E4 #UDGTABLE { #UDGARRAY1,$47,,1;$D3E4-$D423-8(rbg4) } TABLE#
b $D424 Room block graphics
D $D424 #UDGTABLE { #UDGARRAY1,$47,,1;$D424-$D49B-8(rbg5) } TABLE#
b $D49C Room block graphics
D $D49C #UDGTABLE { #UDGARRAY1,$47,,1;$D49C-$D513-8(rbg6) } TABLE#
b $D514 Room block graphics
D $D514 #UDGTABLE { #UDGARRAY1,$47,,1;$D514-$D5DB-8(rbg7) } TABLE#
b $D5DC Room block graphics
D $D5DC #UDGTABLE { #UDGARRAY1,$47,,1;$D5DC-$D5FB-8(rbg8) } TABLE#
b $D5FC Room block graphics
D $D5FC #UDGTABLE { #UDGARRAY1,$47,,1;$D5FC-$D6BB-8(rbg9) } TABLE#
b $D6BC Room block graphics
D $D6BC #UDGTABLE { #UDGARRAY1,$47,,1;$D6BC-$D72B-8(rbgA) } TABLE#
b $D72C Room block graphics
D $D72C #UDGTABLE { #UDGARRAY1,$47,,1;$D72C-$D7BB-8(rbgB) } TABLE#
b $D7BC Room block graphics
D $D7BC #UDGTABLE { #UDGARRAY1,$47,,1;$D7BC-$D873-8(rbgC) } TABLE#
b $D874 Room block graphics
D $D874 #UDGTABLE { #UDGARRAY1,$47,,1;$D874-$D91B-8(rbgD) } TABLE#
b $D91C Room block graphics
D $D91C #UDGTABLE { #UDGARRAY1,$47,,1;$D91C-$D983-8(rbgE) } TABLE#
b $D984 Room block graphics
D $D984 #UDGTABLE { #UDGARRAY1,$47,,1;$D984-$D9E3-8(rbgF) } TABLE#
b $D9E4 Room block graphics
D $D9E4 #UDGTABLE { #UDGARRAY1,$47,,1;$D9E4-$DA9B-8(rbgG) } TABLE#
b $DA9C Room block graphics
D $DA9C #UDGTABLE { #UDGARRAY1,$47,,1;$DA9C-$DB63-8(rbgH) } TABLE#
b $DB64 Room block graphics
D $DB64 #UDGTABLE { #UDGARRAY1,$47,,1;$DB64-$DBAB-8(rbgI) } TABLE#
b $DBAC Room block graphics
D $DBAC #UDGTABLE { #UDGARRAY1,$47,,1;$DBAC-$DC23-8(rbgJ) } TABLE#
b $DC24 Room block graphics
D $DC24 #UDGTABLE { #UDGARRAY1,$47,,1;$DC24-$DCBB-8(rbgK) } TABLE#
b $DCBC Room block graphics
D $DCBC #UDGTABLE { #UDGARRAY1,$47,,1;$DCBC-$DCEB-8(rbgL) } TABLE#
b $DCEC Room block graphics
D $DCEC #UDGTABLE { #UDGARRAY1,$47,,1;$DCEC-$DD0B-8(rbgM) } TABLE#
b $DD0C Room block graphics
D $DD0C #UDGTABLE { #UDGARRAY1,$47,,1;$DD0C-$DD53-8(rbgN) } TABLE#
b $DD54 Room block graphics
D $DD54 #UDGTABLE { #UDGARRAY1,$47,,1;$DD54-$DDD3-8(rbgO) } TABLE#
b $DDD4 Room block graphics
D $DDD4 #UDGTABLE { #UDGARRAY1,$47,,1;$DDD4-$DE13-8(rbgP) } TABLE#
b $DE14 Room block graphics
D $DE14 #UDGTABLE { #UDGARRAY1,$47,,1;$DE14-$DEDB-8(rbgQ) } TABLE#
b $DEDC Room block graphics
D $DEDC #UDGTABLE { #UDGARRAY1,$47,,1;$DEDC-$DF43-8(rbgR) } TABLE#
b $DF44 Room block graphics
D $DF44 #UDGTABLE { #UDGARRAY1,$47,,1;$DF44-$DFAC-8(rbgS) } TABLE#
b $DFAC Room block graphics
D $DFAC #UDGTABLE { #UDGARRAY1,$47,,1;$DFAC-$DFCB-8(rbgT) } TABLE#
b $DFCC Room block graphics
D $DFCC #UDGTABLE { #UDGARRAY1,$47,,1;$DFCC-$DFDB-8(rbgU) } TABLE#
b $DFDC Room block graphics
D $DFDC #UDGTABLE { #UDGARRAY1,$47,,1;$DFDC-$DFEB-8(rbgV) } TABLE#
b $DFEC Room block graphics
D $DFEC #UDGTABLE { #UDGARRAY1,$47,,1;$DFEC-$E06B-8(rbgW) } TABLE#
b $E06C Room block graphics
D $E06C #UDGTABLE { #UDGARRAY1,$47,,1;$E06C-$E0DB-8(rbgX) } TABLE#
b $E0DC Room block graphics (character set)
D $E0DC #UDGTABLE { #UDGARRAY1,$47,,1;$E0DC-$E2FB-8(rbgY) } TABLE#
c $E2FC Play a footstep sound effect
c $E329 Check for collision detection
c $E33F The character has collided with something. Decrease endurance.
c $E36D Update endurance display
D $E33F The amount to decrease by is set in F26E.
D $E33F Herbert is 2. The shark in the sewer is 64!
c $E3D3 Generate a sound effect
R $E3D3 B - pitch
R $E3D3 DE - duration
c $E3EC Generate a part of a sound effect
R $E3EC B - pitch
c $E3FD Do a full refresh of the top status bar
c $E41D Print a character's inventory
c $E468 Display an item's description.
D $E468 Print the description of an item. If the control code F4+flag
D $E468 is found, use the first or the second description depending on
D $E468 whether or not that flag is set.
t $E484 THE PLUNGER
t $E490 THE LETTER\n"A"
t $E49E BOOK TWO
t $E4A7 THE SAND
t $E4B0 THE BATTERY\n(CHARGED|FLAT)
t $E4CD THE LETTER\n"K"
t $E4DB THE CEMENT
t $E4E6 BOOK THREE
t $E4F1 THE TROWEL
t $E4FC THE MATCHES
t $E508 THE CRACKED\nINSULATOR
t $E51F BOOK ONE
t $E528 THE MONKEY\nNUTS
t $E539 THE MONEY
t $E543 SUPERGLUE
t $E54D THE CHEWING\nGUM
t $E55E THE BUCKET\n(FULL|EMPTY)
t $E578 THE JUMP LEADS
t $E588 THE BUNSEN\nBURNER
t $E59B THE LETTER\n"B"
t $E5A9 GAS MASK
t $E5B2 THE PARCEL\n(STAMPED|UNSTAMPED)
t $E5D3 THE FUSE\n(REWIRED|BLOWN)
t $E5EE THE MEAT
t $E5F7 THE MONKEY\nWRENCH
t $E60A SCREWDRIVER
t $E616 THE LETTER\n\"E"
t $E624 THE HOOK\n(WORKING|BROKEN)
t $E640 THE PATCH
t $E64A THE PIPE\n(PATCHED|LEAKING)
t $E667 THE LETTER\n"R"
t $E675 THE OIL\nCAN(FULL|EMPTY)
t $E690 THE FUSE\nWIRE
t $E69F THE GOOD\nINSULATOR
t $E6B3 THE BOTTLE\n(FULL|EMPTY)
t $E6CD THE RED\nHERRING
t $E6DE THE TEST\n\TUBE
t $E6ED THE CAN OF\nBEANS
t $E6FF THE RUBBER\nSTAMP
t $E711 THE PLIERS
t $E71C THE WHISTLE
w $E728 Lookup table for strings
c $E77A Clear the inventory display, so new text can go on
c $E79B See if a player wants to swap character, and do so if they can
w $E7E9 Jump table for pattern matching in rooms
w $E7F9 Jump table for actions in rooms
b $E80F Action data : Town Square
D $E80F IF AT(48,60) AND AM(4) AND HAS(18) AND HAS(0) THEN EARN(0) : SET(8)
D $E80F IF AT(48,98) AND HAS(10) AND SET(8) THEN EARN(2) : SET(2)
D $E80F IF AT(48,60) AND NOT HAS(18) THEN CHASE
D $E80F IF AT(48,60) AND NOT HAS(0) THEN CHASE
b $E83C Action data : Stamp Street
D $E83C IF AT(E0,90) THEN SPACE
b $E843 Action data : Post Office
D $E843 IF AT OBJ(0) THEN SWAP
D $E843 IF HAS(15) and HAS(26) AND AM(2) AND AT(18,98) THEN EARN(9) : SET(2)
b $E858 Action data : Market Street
b $E859 Action data : The Super Market
D $E859 IF AM(5) AND AT OBJ(0) THEN EARN(1C) : SWAP
D $E859 IF AT OBJ(1) THEN SWAP
D $E859 IF AT(F0,98) AND HAS(1F) AND SET(7) AND AM(3) THEN EARN(5) : SET(C)
b $E877 Action data : The Park
D $E877 IF AT OBJ(0) THEN SWAP
b $E87D Action data : Wobbly Walk
b $E87E Action data : Rubble Road
b $E87F Action data : Wall Street
D $E87F IF AM(3) AND AT OBJ(0) THEN SWAP
D $E87F IF AM(3) AND IS OBJ(0,4) AND ISSET(6) THEN EARN(1E)
D $E87F IF AT OBJ(1) THEN EARN(1F) : SWAP
D $E87F IF AM(1) AND HAS(8) AND HAS(6) AND AT(80,98) THEN EARN(D) : SET(9) : WALL(0C,0C,0F) : WALL(0C,0C,13)
b $E8B0 Action data : Pete Street
D $E8B0 IF AM(1) AND HAS(10) AND ISSET(4) AND HAS(3) AND AT OBJ(0) THEN : EARN(C) : RESET(4) : SWAPFOR(3)
D $E8B0 IF AT(F0,98) THEN OUT
b $E8C9 Action data : The Work Shed
D $E8C9 IF AT OBJ(0) THEN SWAP
D $E8C9 IF AT OBJ(1) THEN SWAP
D $E8C9 IF AT OBJ(2) THEN SWAP
D $E8C9 IF IS OBJ(0,1D) AND HAS(1C) AND HAS(1F) AND AT(78,98) AND AM(4) THEN EARN(7) : SET(5)
D $E8C9 IF IS OBJ(0,1B) AND HAS(E) AND AT(78,98) AND AM(1) THEN EARN(8) : SET(3)
b $E8FB Action data : School Lane
D $E8FB IF NOT HAS(19) AND AT OBJ(0) THEN CHASE
D $E8FB IF NOT HAS(21) AND OBJ(0) IS NOT(21) AND AT OBJ(0) THEN CHASE
D $E8FB IF AM(5) AND HAS(19) AND HAS(21) AND ISSET(D) AND AT OBJ(0) THEN EARN(4) : SWAPFOR(21) : SET(B)
b $E91F Action data : The School
D $E91F IF AT OBJ(0) THEN SWAP
b $E925 Action data : Baker Street
D $E925 IF AT(F0,98) THEN OUT
b $E92C Action data : The Bakers
D $E92C IF AT OBJ(0) THEN SWAP
b $E932 Action data : The Pub
D $E932 IF AM(3) AND HAS(22) AND ISSET(0) AND AT OBJ(0) THEN EARN(E) : SWAPFOR(22)
b $E941 Action data : Motor Way
b $E942 Action data : The Laboratory
D $E942 IF AT OBJ(0) THEN SWAP
D $E942 IF AT OBJ(1) THEN SWAP
D $E942 IF AM(3) AND ISSET(A) AND IS OBJ(0,12) AND ISOBJ(1,22) AND HAS(9) AND AT(60,98) THEN EARN(3) : SET(0)
b $E962 Action data : The Garage
D $E962 IF AT OBJ(0) THEN SWAP
D $E962 IF AT(D8,98) AND HAS(0D) AND HAS(1F) THEN EARN(17) : SET(7)
D $E962 IF ISSET(B) AND AT(3C,98) AND HAS(4) AND HAS(11) AND AM(5) THEN EARN(B) : SET(6) 
b $E986 Action data : Reference Road 
D $E986 IF AT(08,90) THEN SPACE
D $E986 IF AT(0,98) THEN OUT
b $E993 Action data : The Library
D $E993 IF AM(2) AND HAS(B) AND AT OBJ(0) THEN SWAP
D $E993 IF AM(2) AND HAS(2) AND IS OBJ(0,B) AND AT OBJ(1) THEN EARN(10) : SWAP
D $E993 IF AM(2) AND HAS(7) AND IS OBJ(0,B) AND IS OBJ(1,2) AND AT OBJ(2) THEN EARN(11) : SWAPFOR(7)
b $E9BD Action data : Penny Lane
b $E9BE Action data : The Bank
D $E9BE IF AT OBJ(0) THEN SWAP
D $E9BE IF AT(EC,98) AND AM(2) AND HAS(13) THEN EARN(12) : SAFE
D $E9BE IF AT(EC,98) AND AM(3) AND HAS(1E) THEN EARN(13) : SAFE
D $E9BE IF AT(EC,98) AND AM(4) AND HAS(1A) THEN EARN(14) : SAFE
D $E9BE IF AT(EC,98) AND AM(5) AND HAS(1) THEN EARN(15) : SAFE
D $E9BE IF AT(EC,98) AND AM(1) AND HAS(5) THEN EARN(16) : EARN(1) : SAFE
D $E9BE IF AT(EC,98) AND AM(2) AND NOT HAS(13) THEN CHASE
D $E9BE IF AT(EC,98) AND AM(3) AND NOT HAS(1E) THEN CHASE
D $E9BE IF AT(EC,98) AND AM(4) AND NOT HAS(1A) THEN CHASE
D $E9BE IF AT(EC,98) AND AM(5) AND NOT HAS(1) THEN CHASE
D $E9BE IF AT(EC,98) AND AM(1) AND NOT HAS(5) THEN CHASE
b $EA34 Action data : Wally's House
D $EA34 IF AT OBJ(0) THEN SWAP
b $EA3A Action data : Meat Street
b $EA3B Action data : The Butcher's
D $EA3B IF AT OBJ(0) THEN SWAP
D $EA3B IF IS OBJ(0,16) AND SET(1) AND SET(B) AND AT OBJ(1) THEN SWAP
D $EA3B IF HAS(16) AND HAS(20) AND AM(5) THEN EARN(6) : SET(1)
b $EA59 Action data : Trunk Road
D $EA59 IF AT(0,98) THEN OUT
b $EA60 Action data : The Zoo
D $EA60 IF AT OBJ(0) THEN EARN(18) : SWAP
D $EA60 IF NOT IS OBJ(0,C) AND NOT HAS(C) THEN CHASE
b $EA70 Action data : Rail Road
b $EA71 Action data : The Station
D $EA71 IF AT OBJ(0) THEN SWAP
b $EA77 Action data : The Docks
D $EA77 IF IS OBJ(1,1B) AND ISSET(3) AND AM(2) AND AT OBJ(0) THEN SWAP : EARN(A)
D $EA77 IS IS OBJ(1,1B) AND ISSET(3) THEN EARN(19)
D $EA77 IF AT OBJ(0) THEN SWAP
b $EA94 Action data : The Sewer
D $EA94 IF IS OBJ(0,17) THEN EARN(1A)
D $EA94 IF AT OBJ(0) THEN SWAP
b $EAA1 Action data : The Cave
D $EAA1 IF AM(4) AND AT OBJ(0) THEN SWAP
D $EAA1 IF IS OBJ(0,1D) AND ISSET(5) THEN EARN(F) : SET(A)
D $EAA1 IF HAS(1E) THEN EARN(1B)
D $EAA1 IF AT OBJ(1) THEN SWAP
c $EABF Process logic for the current room
c $EAE3 A condition does not match. Skip to the ENDIF (F6) character.
R $EAE3 HL On exit, holds the address for the next room logic byte
c $EAEB A condition matches. Process any actions in it.
c $EB01 Action 0 : SWAP. An item can be collected. Swap it for the oldest item.
c $EB0F Action 1 : SWAPFOR. An item can be collected. Swap it for a specific item.
R $EB0F HL Points to the object ID that should be swapped
g $EB54
c $EB55 See if the player is touching any collectable item
c $EB79 Action 6 : WALL. The wall is or can be built. Patch the logic in Wall Street for it.
R $EB79 HL The data for this action (graphic, x, y)
c $EB95 Pattern 0 AT OBJ(x) : Match if at an item
R $EB95 HL : Points to the room's object ID to test for
c $EBC4 Pattern 4 AT(x,y) : Match if at co-ordinate x,y
c $EBE2 Pattern 5 AM(x) : Match if we are a character (bitfield)
c $EBED Pattern 1 HAS(x) : Match if item xx held
c $EBFE Pattern 6 NOT HAS(x) : Match if item xx NOT held
b $EC0F Bottle is full
b $EC10 Fuse is rewired
b $EC11 Parcel is stamped
b $EC12 Hook is working
b $EC13 Bucket is full
b $EC14 Pipe is patched
b $EC15 Battery is charged
b $EC16 Oil can is full
b $EC17 Fountain is repaired
b $EC18 Wall is built
b $EC19 Gas is repaired
b $EC1A Electricity is repaired
b $EC1B Trolley is moving
b $EC1C Asteroids game has been won
c $EC1D Get a game status flag and return it in A, setting the zero flag appropriately.
R $EC1D A flag number to get
c $EC2B Pattern 3 OBJ(x,y) : Match if room object x is y
c $EC34 Pattern 7 NOT OBJ(x,y) : Match if room object x is not y
c $EC3D Check if the item in a room matches a certain object ID and sets the zero flag if it is
R $EC3D HL Buffer containing the nth object number and the target ID
c $EC4A Set a game flag to a value
R $EC4A HL Points to the value to use and the flag to set
b $EC5C Lookup table for how much money stuff earns. ID, amount % 100, amount / 100
B $EC5C,$60,3
c $ECBC Action 5 EARN(x). Pay the current character amount in offset xx
b $ECF5 The next "reward" screen to print, 0 = morning, 1 = lunch, 2 = tea
b $ECF6 Table of amount of money needed to get morning, lunch and tea breaks
D $ECF6 £600 - morning tea, £1700 - lunch, £3300 - tea
b $ECFC Total amount of money that can be earned
b $ECFE Total amount of money currently earned (x / 100), (x % 100)
w $ED00 String lookup tables for morning tea, lunch and tea
b $ED06 Movement table : Laboratory / Reward screens
c $ED13 Room logic : The Laboratory
c $ED2A See if we've reached a break, and display a message if so
c $ED8A Set up moving objects in the Laboratory
c $EDA3 Action 2 SET(x) : Set flag xx
c $EDA8 Action 3 RESET(x) : Reset flag xx
c $EDAC Action 4 SET(x,y) : Set flag xx to yy
c $EDB3 Pattern 2 SET(x) : Match if flag x set
b $EDBE List of characters that should bring each letter
b $EDC5 Number of combination letters completed + 1
c $EDC6 Action 8 SAFE. The safe has been touched with a combination letter. Process it now.
c $EDF7 Action 7 SPACE. Play the "asteroids" phone box game
c $EEA2 Update the sprite buffers at 6B00 and FE00
c $EEC1 Refresh the current room
w $EEF3 Jump table for custom room logic
c $EF35 Update the current position of moving objects
R $EF35 IX = pointer to a buffer containing current x, current y, movement in x, movement in y
R $EF35 BC = pointer to bounds (both x and y for bidirectional movement)
c $EF91 Animate the fountain in the town square if it is repaired
c $EFC7 Action 9 CHASE. Drop down to the "shark chase" game
c $F047 Refresh a moving object into the graphics buffer
c $F057 Chase : Drop the player down to ground level
b $F0B7 Chase : Room data
b $F0BE Chase : The amount of frames left to move the player on this control action
b $F0BF Chase : The next direction control the player should use to move (0 or 1)
c $F0C0 Chase : Check for player movement
b $F104 Movement table : Jumping jack
b $F10A Bounds table : Jumping jack
c $F10E See if the jumping jack needs to be on screen, and if so, move it
b $F158 The extremeties of the screen for the "out of town" sequence
b $F15A The direction to face movable objects in the "out of town" screen
w $F15B The number of miles walked out of town
b $F15D Room data : Out of town
c $F177 Action A OUT. Go to the "out of town" screen
c $F202 Print the current miles "out of town"
c $F233 Print a digit for the miles "out of town"
b $F243 Movement table : The Post Office
b $F2F7 Bounds table : The Post Office
c $F24B Room logic : The Post Office.
b $F26E The amount to decrease endurance by in a collision
b $F26F Animination state : various
b $F270 Movement table : Herbert
c $F277 Move Herbert
b $F2F7 Bounds table : Full left / right on screen
b $F2FD Movement table : The Pub
b $F2FB Bounds table : The Pub
c $F309 Room logic : The Pub
b $F327 Movement table : The Zoo
b $F330 Bounds table : The Zoo
c $F334 Room logic : The Zoo
b $F375 Movement table : The Docks
c $F37D Room logic : The Docks
b $F3A0 The animation state for the shark in the Sewer
b $F3A1 Bounds table : The Sewer
b $F3A3 Movement table : The Sewer
c $F3AB Room logic : The Sewer
b $F3FD Bounds table : The Bakers
b $F401 Movement table : The Bakers
c $F409 Room logic : The Bakers
c $F43C Room logic : Wall Street
b $F491 Movement table : The Work Shed
c $F49D Room logic : The Work Shed
b $F4D2 The animation state for the flame in Motor Way
c $F4D3 Room logic : Motor Way
D $F4D3 Check the pipe is patched, and display the flame if not
b $F4FF Movement table : The Super Market
c $F503 Room logic : The Super Market
c $F54F Room logic : The Cave
D $F54F If the pipe is not patched and the gas mask is not carried, start
D $F54F dropping endurance as the room is full of gas!
b $F571 The animation state for the water in the Town Square fountain
c $F572 Room logic : Town Square
D $F572 Check the fountain's repaired
b $F5BE Movement table : School Lane
b $F5CA Bounds table : Multiple purpose
b $F5CE Bounds table 2 : School Lane
g $F5D2 School Lane data
g $F5D3 School lane data
c $F5F1 Room logic : School Lane
b $F64B Table of direction to switch to in The Park
b $F653 Movement table : The Park
c $F674 Room logic : The Park
b $F6D1 Table containing x position and item number to print for bank letters
b $F6DB Flag set if letters need to be printed in the bank
b $F6DC Movement table : The Bank
c $F6EC Room logic : The Bank
b $F73A Movement table : Wally's House
c $F746 Room logic : Wally's House
c $F773 Room logic : The School
b $F7DE Location of moving desk in the school (57-5B)
b $F7DF Time until the moving school desk switches
b $F7E0
b $F7E9 The food table (not current room). Format is room, x co-ord, y co-ord, object number
b $F7FE The food table (current room). Format is room, x co-ord, y co-ord, object number
w $F812 Pointer to the next food table entry
c $F814 See if any food is in the current room, and display it if so
b $F879 Initial states of lightning bolts in the "asteroids" game
B $F879,$3C,5
b $F8B5 Bounds table : The School
c $F8B9 Asteroids : Check for collision with lightning.
c $F93A Asteroids : Check for player's movement
c $F9A4 Asteroids : Calculate player's position on screen
R $F9A4 HL On exit, holds the address for the player's position
b $F9B2 Asteroids : Positions of objects on screen
c $F9C4 Asteroids : Generate a "hit lightning" sound
b $F9F0 Asteroids : Movement table?
b $F9F4 Number of asteroids left to hit to win the game (starts at 14)
c $F9F5 Asteroids : Check for firing missile and animate accordingly
c $FAE7 Asteroids : Play a note of the "won" sound effect
g $FAEF
c $FAF0 Asteroids : Move the lightning bolts around
s $FB2A Unused
s $FD00
g $FE00 Copy of attributes for main playing area