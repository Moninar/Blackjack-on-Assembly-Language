   	.data
obj:	.struct
vft:	.word	0
x:	.byte	0
y:	.byte	0
w:	.byte	0
h:	.byte	0
	.data

obj_vft:	.struct
Name:	.word	0
Draw:	.word	0
	.data

card:	.struct obj
pip:	.word	0
suit:	.byte	0
pipmap:	.word	0
image:	.word	0
flag:	.byte	1	# 0 means this card is discarded; 1 means this card is facedowned; 3 means this card is faceuped 
num:	.word	0	# the real counting number of this card
	.data

mouse:		.struct 0xa0000018
flags:		.byte 0
mask:		.byte 0
		.half 0
		.word 0
move:		.word 0,0
down:		.word 0,0
up:		.word 0,0
wheel:		.word 0,0
wheeldown:		.word 0,0
wheelup:		.word 0,0
	.data
#################################### start --- table values ###################################
table:	.ascii	"\fлллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"л Dealer points: 0  ллллллллллллллллллллллллллллллллллллллллллллллллллллЩЭЭЭЭЭЛл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллШЭЭЭЭЭМл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"л Player points: 0  лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"ллллллллллллллллллллллллллллллллл You win: 0    лллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"ллллллллллллкФФФФФФФФФФПллллкФФФФФФФФФФПллллкФФФФФФФФФФПллллкФФФФФФФФФФПлллллллл"
	.ascii	"л bet ллллллГ   10     ГллллГ   ++++   ГллллГ   ----   ГллллГ   deal   Глллллллл"
	.ascii	"ллллллллллллРФФФФФФФФФФйллллРФФФФФФФФФФйллллРФФФФФФФФФФйллллРФФФФФФФФФФйлллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллл Your balance: 99999        лллллллллллллллллллллллллл"
	.asciiz	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"

tablePlay:
	.ascii	"ллллллллллллллллллллллллллллллллл Your bet: 0   лллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"ллллллллллллкФФФФФФФФФФФФФФФФФФФФПллллллллллллкФФФФФФФФФФФФФФФФФФФФПлллллллллллл"
	.ascii	"ллллллллллллГ      h  i  t       ГллллллллллллГ     s t a n d      Глллллллллллл"
	.asciiz	"ллллллллллллРФФФФФФФФФФФФФФФФФФФФйллллллллллллРФФФФФФФФФФФФФФФФФФФФйлллллллллллл"

tableDeal:
	.ascii	"ллллллллллллллллллллллллллллллллл You win: 0    лллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"ллллллллллллкФФФФФФФФФФПллллкФФФФФФФФФФПллллкФФФФФФФФФФПллллкФФФФФФФФФФПлллллллл"
	.ascii	"л bet ллллллГ   10     ГллллГ   ++++   ГллллГ   ----   ГллллГ   deal   Глллллллл"
	.asciiz	"ллллллллллллРФФФФФФФФФФйллллРФФФФФФФФФФйллллРФФФФФФФФФФйллллРФФФФФФФФФФйлллллллл"

tableCLean:
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"л Dealer points: 0  ллллллллллллллллллллллллллллллллллллллллллллллллллллЩЭЭЭЭЭЛл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллКБББББКл"
	.ascii	"ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллШЭЭЭЭЭМл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"л Player points: 0  лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.ascii	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"
	.asciiz	"лллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл"

YouWin:	.asciiz	" You win: 0    "
YouLose:	.asciiz	" You lose: 0    "

tranX	=	0
tranY	=	17

button:	.struct
startX:	.byte	0
startY:	.byte	0
endX:	.byte	0
endY:	.byte	0
flag:	.word	0		# flag == 1 means show, flag == 0 means hidden
	.data

refresh:	.struct
x:	.byte	0
y:	.byte	0
data:	.word	0
clear:	.space	0
	.data

	.align	2
btnAdd:	.byte	28,19,40,21
	.word	1		
btnSub:	.byte	44,19,56,21
	.word	1
btnDeal:	.byte	60,19,72,21
	.word	1
btnBit:	.byte	12,19,34,21
	.word	0
btnStand:	.byte	46,19,68,21
	.word	0
	.align	2
Balance:
	.byte	41,23	
	.word	99999
	.asciiz	"            \b\b\b\b\b\b\b\b\b\b\b\b"
	.align	2
Bet:	.byte	16,20
	.word	10
	.asciiz	"    \b\b\b\b"
	.align	2
Cbet:	.byte	44,17
	.word	10
	.asciiz	"   \b\b\b"
	.align	2
Win:	.byte	33,17
	.word	0
	.asciiz	" You win:     \b\b\b\b"
	.align	2
Lose:	.byte	32,17
	.word	0
	.asciiz	" You lose:     \b\b\b\b"
	.align	2
DlrPoints:	
	.byte	17,1
	.word	0
	.asciiz	"  \b\b"
	.align	2
PlyrPoints:
	.byte	17,9
	.word	0
	.asciiz	"  \b\b"
	.align	2
############################## end --- table values ##################################

############################## start --- card values ######################################
SCREENW	=	80
SCREENH	=	25
SBLANK	=	219	# == 'л'
CLEANWHOLE	=	12	# == \f

SPACE	=	0x20	# == <sp>
cardW	=	7
cardH	=	5

DECK	=	52
PIP	=	13
STARTX	=	0
STARTY	=	0
OFFSETX	=	5
OFFSETY	=	6
SUITS	=	4
MASK	=	0b11111111
PIPMAP	=	0b01000000
centerx	=	36
centery	=	10
DECKX	=	SCREENW-cardW
DECKY	=	0
DlrOffsetY	=	3	# Dealer cards offset from top
PlyrOffsetY	=	11	# Player cards offset from top
DlrOffsetX:	.word	1
PlyrOffsetX:	.word	1
Cindex:	.word	0	# the index of cards, Cindex == (the ith card) % (the number of cards)

pipmaps:	
	.word	0x0800,0x080008,0x080808,0x140014,0x140814,0x141414,0x142A14
	.word	0x2A142A,0x2A2A2A,0x142A142A,0x142A2A2A,0x2A2A2A2A,0x14552A55
pips:	.word	'A,'2,'3,'4,'5,'6,'7,'8,'9,'0<<8+'1,'J,'Q,'K
suits:	.byte	3,4,5,6	# '','','',''
realNums:	.word	11,2,3,4,5,6,7,8,9,10,10,10,10

DlrAs:	.word	0
PlyrAs:	.word	0

card_image:	.space	cardH-1

# difficulty	=	1
difficulty:	.word	0
difficulty_max	=	9
# arr_len	=	4*DECK*difficulty
arr_len:	.word	0
# tot_cards	=	DECK*difficulty
tot_cards	.word	0
# arr_pointers:	.space	arr_len
arr_pointers:	.word	0	# == an address of the array of cards

lfsr	=	1234
taps	=	0xd0000001u

facedown:	
	.asciiz	"кФФФФФП"
	.asciiz	"ГБББББГ"
	.asciiz	"ГБББББГ"
	.asciiz	"ГБББББГ"
	.asciiz	"РФФФФФй"

needDifficulty:	.asciiz	"\fPlease enter the difficulty level to play this game(0-9): "
read_space:	.byte	0

hiddenCard:	.word	0	# this is an address of a card in play table from Dealer

time	=	5000000
POINTNUM	=	21
############################## end --- card values ######################################
	.code
main:	
	la	$a0,needDifficulty
	syscall	$print_string
	syscall	$read_int
	blez	$v0,main	# if input number is less than 1, then branch main
	bgt	$v0,difficulty_max,main	# if input number is greater than 9, then branch main
	la	$a0,difficulty
	sw	$v0,($a0)	# difficulty
	la	$a0,tot_cards
	mul	$v0,$v0,52	# == DECK * difficulty
	sw	$v0,($a0)	# tot_cards
	la	$a0,arr_len
	sll	$v0,$v0,2
	sw	$v0,($a0)	# arr_len
	mov	$a0,$v0
	syscall	$malloc
	la	$a0,arr_pointers
	sw	$v0,($a0)	# arr_pointers

	jal	init_cards
	jal	Shuffle

	la	$a0,table
	syscall	$print_string

clickLoop:	
	la	$a0,mouse.flags
	addi	$a1,$0,1
	syscall	$IO_read		# get the mouse flags
	andi	$v0,$v0,0b100		# get the mouse up flag
	beqz	$v0,clickLoop

	la	$t9,mouse.up
	addi	$a0,$t9,0
	addi	$a1,$0,4
	syscall	$IO_read		#read register to clear flag

	andi	$a0,$v0,0xffff		
	mov	$t0,$a0			# t0 == mouseX
	srl	$a0,$v0,16		
	mov	$t1,$a0			# t1 == mouseY
	
	addi	$sp,$sp,-12
	sw	$t0,($sp)		# ($sp) == mouseX
	sw	$t1,4($sp)		# 4($sp) == mouseY
					# 8($sp) == $v0 which is the flag meaning whether
					# the click in the button or not
clickDeal:	
	la	$s0,btnDeal		# first check if this button is available
	lw	$a0,button.flag($s0)
	beqz	$a0,clickAdd

	jal	clickBtnOrNot
	lw	$v0,8($sp)
	beqz	$v0,clickAdd

	addi	$a0,$0,0			# clean the previous cards on the table
	addi	$a1,$0,0
	syscall	$xy
	la	$a0,tableCLean
	syscall	$print_string

	li	$a0,tranX			# change button available
	li	$a1,tranY
	syscall	$xy
	la	$a0,tablePlay
	syscall	$print_string
	la	$s0,Cbet
	jal	clear_Value_Area
	lw	$a0,refresh.data($s0)
	syscall	$print_int	

	la	$s0,Bet			# input Cbet value
	lw	$a0,refresh.data($s0)
	la	$s0,Cbet
	sw	$a0,refresh.data($s0)
	jal	clear_Value_Area
	la	$s0,Bet
	lw	$a0,refresh.data($s0)	
	syscall	$print_int

	jal	changeAllFlags	# change button flag, let it never work

	li	$v0,0b00
	jal	PlayCards

	li	$v0,0b00
	jal	PlayCards

	li	$v0,0b10
	jal	PlayCards

	li	$v0,0b11
	jal	PlayCards	
	
	b	nextLoop
clickAdd:
	la	$s0,btnAdd
	lw	$a0,button.flag($s0)
	beqz	$a0,clickSub

	jal	clickBtnOrNot
	lw	$v0,8($sp)
	beqz	$v0,clickSub
	la	$s0,Bet
	jal	clear_Value_Area
	lw	$a0,refresh.data($s0)
	addi	$a0,$a0,1
	blt	$a0,100,1f
	addi	$a0,$0,100
1:	sw	$a0,refresh.data($s0)
	la	$s0,Cbet
	sw	$a0,refresh.data($s0)
	syscall	$print_int
	b	nextLoop
clickSub:
	la	$s0,btnSub
	lw	$a0,button.flag($s0)
	beqz	$a0,clickHit
	
	jal	clickBtnOrNot
	lw	$v0,8($sp)
	beqz	$v0,clickHit
	la	$s0,Bet
	jal	clear_Value_Area
	lw	$a0,refresh.data($s0)
	addi	$a0,$a0,-1
	bgt	$a0,1,2f
	addi	$a0,$0,1
2:	sw	$a0,refresh.data($s0)
	la	$s0,Cbet
	sw	$a0,refresh.data($s0)
	syscall	$print_int

clickHit:
	la	$s0,btnBit
	lw	$a0,button.flag($s0)
	beqz	$a0,clickStand	

	jal	clickBtnOrNot	
	lw	$v0,8($sp)
	beqz	$v0,clickStand
	
	addi	$v0,$0,0b00
	jal	PlayCards
	la	$s0,PlyrPoints
	lw	$a0,refresh.data($s0)
	blt	$a0,POINTNUM,clickStand

	la	$s0,hiddenCard
	lw	$s0,($s0)

	addi	$sp,$sp,-4
	sw	$a0,($sp)
	jal	card.Draw			# faceup dealer's hiddenCard
	lw	$a0,($sp)
	addi	$sp,$sp,4	
	
	addi	$sp,$sp,-4
	sw	$a0,($sp)
	la	$s0,hiddenCard
	lw	$s0,($s0)
	lw	$t0,card.num($s0)
	la	$s0,DlrPoints
	lw	$t1,refresh.data($s0)
	add	$t0,$t0,$t1
	sw	$t0,refresh.data($s0)
	jal	clear_Value_Area
	la	$s0,DlrPoints
	lw	$a0,refresh.data($s0)
	syscall	$print_int		
	lw	$a0,($sp)
	addi	$sp,$sp,4

	la	$s0,Cbet			# sum up win
	lw	$t0,refresh.data($s0)
	beq	$a0,POINTNUM,playerWin
playerLose:
	la	$s0,Lose
	sw	$t0,refresh.data($s0)
	mul	$t0,$t0,-1
playerWin:
	la	$s0,Win
	sw	$t0,refresh.data($s0)
	
	b	virtualClickStand	

clickStand:
	la	$s0,btnStand
	lw	$a0,button.flag($s0)
	beqz	$a0,nextLoop	

	jal	clickBtnOrNot	
	lw	$v0,8($sp)
	beqz	$v0,nextLoop	

	la	$s0,hiddenCard
	lw	$s0,($s0)

	addi	$sp,$sp,-4
	sw	$a0,($sp)
	jal	card.Draw			# faceup dealer's hiddenCard
	lw	$a0,($sp)
	addi	$sp,$sp,4	
	
	addi	$sp,$sp,-4
	sw	$a0,($sp)
	la	$s0,hiddenCard
	lw	$s0,($s0)
	lw	$t0,card.num($s0)
	la	$s0,DlrPoints
	lw	$t1,refresh.data($s0)
	add	$t0,$t0,$t1
	sw	$t0,refresh.data($s0)
	jal	clear_Value_Area
	la	$s0,DlrPoints
	lw	$a0,refresh.data($s0)
	syscall	$print_int
	mov	$a2,$a0	
	lw	$a0,($sp)
	addi	$sp,$sp,4

	la	$s0,PlyrPoints
	lw	$a1,refresh.data($s0)
	la	$s0,Cbet
	lw	$t0,refresh.data($s0)
	bgt	$a1,POINTNUM,playerLose
	beq	$a1,POINTNUM,playerWin
	bgt	$a2,$a1,playerLose

		
1:	addi	$v0,$0,0b10
	jal	PlayCards
	la	$s0,DlrPoints
	lw	$a0,refresh.data($s0)
	la	$s0,PlyrPoints
	lw	$a1,refresh.data($s0)
	ble	$a0,$a1,1b
	la	$s0,Cbet
	lw	$t0,refresh.data($s0)
	bgt	$a0,POINTNUM,playerWin
	b	playerLose

virtualClickStand:
	li	$a0,tranX			# change button available
	li	$a1,tranY
	syscall	$xy
	la	$a0,tableDeal
	syscall	$print_string	

	jal	changeAllFlags

	addi	$a1,$0,1			# initialize card locations
	la	$a0,DlrOffsetX
	sw	$a1,($a0)	
	la	$a0,PlyrOffsetX
	sw	$a1,($a0)

	la	$s0,PlyrPoints		# initialize player's and dealer's sums of cards
#	jal	clear_Value_Area
	addi	$a0,$0,0
	sw	$a0,refresh.data($s0)
#	syscall	$print_int
	la	$s0,DlrPoints
#	jal	clear_Value_Area
	addi	$a0,$0,0
	sw	$a0,refresh.data($s0)
#	syscall	$print_int

	la	$s0,Bet			# initialize bet number of 10
	addi	$a0,$0,10
	sw	$a0,refresh.data($s0)

	la	$s0,DlrAs		# initialize DlrAs and PlyrAs to 0
	sw	$0,($s0)
	la	$s0,PlyrAs
	sw	$0,($s0)

	la	$s0,Win			# show win num
	lw	$a0,refresh.data($s0)
	bgtz	$a0,next_showWin
	la	$s0,Lose
next_showWin:
	jal	clear_Value_Area
	lw	$a0,refresh.data($s0)
	syscall	$print_int

	la	$s0,Win			# show valued balance
	lw	$a0,refresh.data($s0)
	la	$s0,Balance		
	lw	$a1,refresh.data($s0)
	add	$a0,$a1,$a0
	sw	$a0,refresh.data($s0)
	addi	$sp,$sp,-4
	sw	$a0,($sp)
	jal	clear_Value_Area
	lw	$a0,($sp)
	addi	$sp,$sp,4
	syscall	$print_int	

nextLoop:
	addi	$sp,$sp,12
	b	clickLoop

	syscall	$exit

######################################################
# if total is over 21, treat A valued cards as 1
# based on the number of A valued cards
# param v0(0b10 or 0b11 means Dealer, 0b00 or 0b01 means player)
######################################################
checkAs:
	addi	$sp,$sp,-4
	sw	$ra,($sp)
	andi	$a0,$v0,0b10
	bnez	$a0,1f
	la	$t0,PlyrPoints
	la	$t1,PlyrAs
	b	2f
1:	la	$t0,DlrPoints
	la	$t1,DlrAs
2:	lw	$a0,refresh.data($t0)
	lw	$a1,($t1)
3:	ble	$a0,POINTNUM,exit_checkAs
	ble	$a1,$0,exit_checkAs
	addi	$a0,$a0,-10
	addi	$a1,$a1,-1
	sw	$a0,refresh.data($t0)
	sw	$a1,($t1)
	b	3b
exit_checkAs:
	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra

######################################################
# play cards and record the sum of card nums
# param v0, means status (dealer or player, faceup or facedown)
######################################################
PlayCards:
	addi	$sp,$sp,-16
	sw	$ra,($sp)
	la	$a0,arr_pointers
	lw	$a0,($a0)
	la	$a1,Cindex
	lw	$a1,($a1)
	sll	$a1,$a1,2
	add	$a0,$a0,$a1
	lw	$s0,($a0)
	lw	$t0,card.num($s0)
	bne	$t0,11,1f
	andi	$a0,$v0,0b10
	bnez	$a0,2f
	la	$a0,PlyrAs
	b	3f
2:	la	$a0,DlrAs
3:	lw	$a1,($a0)
	addi	$a1,$a1,1
	sw	$a1,($a0)

1:	sw	$t0,4($sp)
	sw	$v0,8($sp)
	sw	$s0,12($sp)

	jal	receiveCards

	lw	$t0,4($sp)
	lw	$v0,8($sp)
	lw	$v1,12($sp)

	andi	$t1,$v0,0b10
	bnez	$t1,addToDealer	
addToPlayer:
	la	$s0,PlyrPoints
	b	next_PlayCards
addToDealer:
	la	$s0,DlrPoints
next_PlayCards:
	addi	$sp,$sp,-4
	sw	$v0,($sp)
	jal	clear_Value_Area
	lw	$v0,($sp)
	addi	$sp,$sp,4
	lw	$a0,refresh.data($s0)
	andi	$t1,$v0,0b1
	beqz	$t1,next_addNum
	addi	$t0,$0,0
	la	$t1,hiddenCard
	sw	$v1,($t1)
next_addNum:
	add	$a0,$a0,$t0
	sw	$a0,refresh.data($s0)

	jal	checkAs
	lw	$a0,refresh.data($s0)
	syscall	$print_int

	lw	$ra,($sp)
	addi	$sp,$sp,16
	jr	$ra

######################################################
# change all the flags of buttons
######################################################
changeAllFlags:	
	addi	$sp,$sp,-4
	sw	$ra,($sp)

	la	$s0,btnAdd		
	jal	changeFlag
	la	$s0,btnSub
	jal	changeFlag
	la	$s0,btnDeal
	jal	changeFlag
	la	$s0,btnBit
	jal	changeFlag
	la	$s0,btnStand
	jal	changeFlag

	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra

######################################################
# change the flag of button, 1 -> 0, 0 -> 1
######################################################
changeFlag:
	lw	$a0,button.flag($s0)
	xori	$a0,$a0,0b1
	sw	$a0,button.flag($s0)
	jr	$ra

######################################################
# after each event, clear value areas, like
# balance, bet, Cbet, win, dealer points, player points
######################################################
clear_Value_Area:
	lb	$a0,refresh.x($s0)
	lb	$a1,refresh.y($s0)
	syscall	$xy
	addi	$a0,$s0,refresh.clear
	syscall	$print_string
	jr	$ra	

######################################################
# if the mouse clicks the button s0 or not
# parameter s0, pointing to this button area
# return v0
# if v0 == 0, means not in the button area, else is in
######################################################
clickBtnOrNot:
	lw	$t0,($sp)
	lw	$t1,4($sp)
	lb	$a0,button.startX($s0)
	sge	$a0,$t0,$a0
	lb	$a1,button.endX($s0)
	sle	$a1,$t0,$a1
	and	$v0,$a0,$a1
	beqz	$v0,clickBtnOrNotQuit
	lb	$a0,button.startY($s0)
	sge	$a0,$t1,$a0
	lb	$a1,button.endY($s0)
	sle	$a1,$t1,$a1
	and	$v0,$a0,$a1
clickBtnOrNotQuit:
	sw	$v0,8($sp)
	jr	$ra

######################################################
# receive a card
# param v0: 0b00,0b01,0b10,0b11
# 0b00 == player&faceup, 0b01 == player&facedown
# 0b10 == dealer&faceup, 0b11	== dealer&facedown
######################################################	
receiveCards:
	addi	$sp,$sp,-4
	sw	$ra,($sp)		
#	syscall	$read_char
#	bne	$v0,SPACE,receiveCards
	
	la	$t0,Cindex	# t0 == index of a deck
	lw	$t0,($t0)
	la	$t1,arr_pointers	
	lw	$t1,($t1)		# t1 == arr_pointers
	sll	$t2,$t0,2
	add	$t1,$t1,$t2

	lw	$s0,($t1)

	andi	$t2,$v0,0b10
	bnez	$t2,Deal_Dealer
Deal_Player:
	la	$t2,PlyrOffsetX
	lw	$a0,($t2)
	addi	$t3,$a0,OFFSETX
	sw	$t3,($t2)
	addi	$a1,$0,PlyrOffsetY
	andi	$a2,$v0,0b1
	jal	Deal
	b	next_PoD
Deal_Dealer:
	la	$t2,DlrOffsetX
	lw	$a0,($t2)
	addi	$t3,$a0,OFFSETX
	sw	$t3,($t2)
	addi	$a1,$0,DlrOffsetY
	andi	$a2,$v0,0b1
	jal	Deal

next_PoD:	
	la	$t2,Cindex
	lw	$t0,($t2)
	addi	$t0,$t0,1
	sw	$t0,($t2)

	la	$t9,tot_cards	# t9 == tot_cards
	lw	$t9,($t9)

	beq	$t0,$t9,2f
	b	exit_receiveCards
2:	jal	Shuffle
	la	$t2,Cindex
	sw	$0,($t2)
exit_receiveCards:
	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra

######################################################
# deal the card s0
# param a0 -> x, a1 -> y, a2 -> flag
######################################################
Deal:	
	addi	$sp,$sp,-4
	sw	$ra,($sp)
#	li	$a0,centerx
#	li	$a1,centery
	sb	$a0,obj.x($s0)
	sb	$a1,obj.y($s0)
	sb	$a2,card.flag($s0)
	jal	card.Draw_facedown

	lb	$a2,card.flag($s0)
	bnez	$a2,next_Deal

	li	$a0,time
1:	addi	$a0,$a0,-1
	bnez	$a0,1b
	
	jal	card.Draw
next_Deal:
	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra	

######################################################
# initialize every card
# give them specific type
######################################################
init_cards:
	la	$t9,arr_pointers	
	lw	$t9,($t9)	# t9 == an array of all cards
	addi	$sp,$sp,-4
	sw	$ra,($sp)

	
	la	$t8,difficulty
	lw	$t8,($t8)	# t8 == difficulty
3:	addi	$t8,$t8,-1
	li	$t3,STARTY	# t3 == offset corresponding to STARTY
	li	$t4,0	# t4 == the ith suit
2:	li	$t0,0	# t0 == index of cards
	li	$t1,STARTX	# t1 == offset corresponding to STARTX
	addi	$sp,$sp,-8
	sw	$t3,($sp)
	sw	$t4,4($sp)
	li	$a0,STARTX	# a0 == cardx
	li	$a1,DECKY	# a1 == cardy (mov	$a1,$t3) ==> a1 == y-center
1:	li	$a2,cardW	# a2 == cardw
	li	$a3,cardH	# a3 == cardh
	la	$s5,pips	# s5 == pip
	la	$s4,realNums	# s4 == card real number
	la	$s6,suits	# s6 == suit
	la	$s7,pipmaps	# s7 == pipmap
	
	li	$a0,DECKX	# (mov	$a0,$t1) ==> a0 == x-center
	addi	$t1,$t1,OFFSETX
	sll	$t2,$t0,2	# t2 == word offset, t0 == byte offset
	add	$s1,$s5,$t2
	lw	$s1,($s1)
	add	$s6,$s6,$t4
	lb	$s2,($s6)	# constantly choose a suit (first suit in suits)
	add	$s3,$s7,$t2
	lw	$s3,($s3)
	add	$s4,$s4,$t2	# get real card number
	lw	$s4,($s4)
	
	addi	$sp,$sp,-20
	sw	$t0,($sp)
	sw	$t1,4($sp)
	sw	$a0,8($sp)
	sw	$a1,12($sp)
	sw	$t9,16($sp)

	jal	card.card
	jal	card.getImage
#	jal	card.Draw

	lw	$t0,($sp)
	lw	$t1,4($sp)
	lw	$a0,8($sp)
	lw	$a1,12($sp)
	lw	$t9,16($sp)
	addi	$sp,$sp,20
	sw	$s0,($t9)
	addi	$t9,$t9,4
	addi	$t0,$t0,1
	blt	$t0,PIP,1b

	lw	$t3,($sp)
	lw	$t4,4($sp)
	addi	$sp,$sp,8
	addi	$t4,$t4,1
	addi	$t3,$t3,OFFSETY
	bne	$t4,SUITS,2b
	bnez	$t8,3b

	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra
	
######################################################
# initialize obj
######################################################
obj.obj:	
	sb	$a0,obj.x($s0)
	sb	$a1,obj.y($s0)
	sb	$a2,obj.w($s0)
	sb	$a3,obj.h($s0)
	jr	$ra

######################################################
# initialize card
######################################################
card.card:
	addi	$sp,$sp,-8
	sw	$ra,($sp)
	sw	$a0,4($sp)
	jal	card.new
	lw	$a0,4($sp)
	sw	$s1,card.pip($s0)
	sb	$s2,card.suit($s0)
	sw	$s3,card.pipmap($s0)
	sw	$s4,card.num($s0)
	jal	obj.obj
	lw	$ra,($sp)
	addi	$sp,$sp,8
	jr	$ra

######################################################
# dynamically allocate a card
######################################################
card.new:
	li	$a0,card
	syscall	$malloc
	mov	$s0,$v0
	jr	$ra

######################################################
# get card image
######################################################
card.getImage:
	addi	$a0,$s0,card.image
	lw	$a1,card.pipmap($s0)
	li	$t0,MASK	# t0 == MASK
	li	$t1,cardH	
	addi	$t1,$t1,-1	# t1 == cardH - 1 where suit represents
1:	and	$t2,$a1,$t0
	srl	$a1,$a1,8
	sb	$t2,($a0)
	addi	$a0,$a0,1
	addi	$t1,$t1,-1
	bgtz	$t1,1b
	jr	$ra	

######################################################
# draw card to screen 
# card location is (x, y)
# first draw top line of the card
# then have a loop to draw the rest of the card
######################################################
card.Draw:	
	lb	$a0,obj.x($s0)
	lb	$a1,obj.y($s0)
	lb	$s6,obj.w($s0)
	lb	$s7,obj.h($s0)
	add	$s6,$a0,$s6	# s6 == right of card
	add	$s7,$a1,$s7	# s7 == bottom of card
	syscall	$xy
	lw	$a2,card.pip($s0)	# a2 == card pip
	addi	$s4,$a0,0	# s4 == card x when drawing the card
	addi	$s5,$a1,0	# s5 == card y when drawing the card
	
1:	andi	$a0,$a2,MASK
	syscall	$print_char
	srl	$a2,$a2,8
	addi	$s4,$s4,1
	bgtz	$a2,1b
	lb	$a0,card.suit($s0)
	syscall	$print_char
	addi	$s4,$s4,1
	li	$a0,SPACE
2:	syscall	$print_char
	addi	$s4,$s4,1
	bne	$s4,$s6,2b
	addi	$a1,$a1,1
	addi	$s5,$s5,1

	addi	$t0,$s0,card.image
1:	lb	$a0,obj.x($s0)
	syscall	$xy
	addi	$s4,$a0,0	
	lb	$t3,($t0)	# t0 == a image row
	li	$t1,PIPMAP	# t1 is a mask
2:	and	$t2,$t3,$t1
	sll	$t3,$t3,1
	beqz	$t2,print_space	
	lb	$a0,card.suit($s0)
	syscall	$print_char
	b	next_ss		
print_space:
	li	$a0,SPACE
	syscall	$print_char	
next_ss:	
	addi	$s4,$s4,1
	bne	$s4,$s6,2b
	addi	$a1,$a1,1
	addi	$s5,$s5,1
	addi	$t0,$t0,1
	bne	$s5,$s7,1b	
	jr	$ra

######################################################
# draw the facedown of a card
######################################################
card.Draw_facedown:
	addi	$sp,$sp,-4
	sw	$ra,($sp)
	la	$t0,facedown
	li	$t1,0
	lb	$t2,obj.x($s0)
	lb	$t3,obj.y($s0)
1:	mov	$a0,$t2
	mov	$a1,$t3
	syscall	$xy
	mov	$a0,$t0
	syscall	$print_string
	addi	$t0,$t0,8
	addi	$t3,$t3,1
	addi	$t1,$t1,1
	bne	$t1,cardH,1b
	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra

######################################################
# implement LFSR PRNG function
######################################################
LFSR:	
	andi	$t7,$t8,1
	srl	$t8,$t8,1
	beqz	$t7,lfsr_next
	xor	$t8,$t8,$t9
lfsr_next:	
	mov	$v0,$t8	# v0 == random number
	jr	$ra
	
######################################################
# shuffle cards
######################################################
Shuffle:	
	addi	$sp,$sp,-4
	sw	$ra,($sp)
	li	$t8,lfsr	# t8 == the initial number of LFSR, reserved as a keeping value for LFSR
	li	$t9,taps	# t9 == mask, reserved as a keeping value for LFSR
				# t7 == reserved as a temporary value for LFSR

	la	$a0,arr_pointers
	lw	$a0,($a0)
	la	$a1,tot_cards
	lw	$a1,($a1)

1:	jal	LFSR
	bgtz	$v0,Shuffle_next
	mul	$v0,$v0,-1
Shuffle_next:	
	div	$v0,$a1
	mfhi	$t0
	sll	$t0,$t0,2
	add	$t0,$a0,$t0
	lw	$t2,($t0)
	addi	$a1,$a1,-1
	sll	$t3,$a1,2
	add	$t3,$a0,$t3
	mov	$t1,$t3
	lw	$t3,($t3)
	sw	$t3,($t0)
	sw	$t2,($t1)
	bnez	$a1,1b

	lw	$ra,($sp)
	addi	$sp,$sp,4
	jr	$ra