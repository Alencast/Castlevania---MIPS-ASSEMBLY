.text
main:

	lui $4, 0x1001
	ori $5, 0x270013
	addi $6, $0, 8192 # Quantidade de pixels na tela
	jal funcaoCenario

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLava1

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoDetalhesVermelhos

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLava2

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoDetalhandoLaranja

	lui $4, 0x1001
	add $5 $0 $0
	jal Lava3
	
	lui $4, 0x1001
	add $5 $0 $0
	jal detalhandoAmarelo
	
	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoCruz

	lui $4, 0x1001
	add $5 $0 $0
	jal pontasDaCruz

	lui $4, 0x1001
	add $5 $0 $0
	jal quadradoCruz

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoTeto
	
	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoChão

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoTijoloTeto

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoTijoloTeto2
	
	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLinha

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLinha2

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoTijoloChão1

	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoTijoloChão2
	
	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLinhas
	
	lui $4, 0x1001
	add $5 $0 $0
	jal funcaoLinhas2
	
	lui $3, 0x1001
	addi $3 $3 24068
	add $16, $0 $0
	jal desenharBelmont
	
	lui $14 0x1001
	addi $14 $14 25404
	jal desenharNPC
	jal player
	
	addi $2, $0, 10
	syscall
	
	
	
# Laço para geração de cenário, preencherá todos os pixels
funcaoCenario:	
	addi $22 $4 32768
Cenário: 
	
	beq $6, $0, fimCenário	
	
	sw $5, 0($4)
	sw $5 0($22)
	addi $6, $6, -1
	addi $4, $4, 4
	addi $22, $22, 4
	j Cenário
	
fimCenário:
	jr $31

# ==============================
# Criação da lava 1

funcaoLava1:
	addi $22 $4 32768
Lava1:
	lui $4, 0x1001
	ori $5, 0xcb1900
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste:
	beq $13, $0, fimLava1
	beq $12, $0, fimLava1
	
	sw $5, 168($4)
	sw $5, 172($4)
	sw $5, 176($4)
	sw $5, 180($4)
	sw $5, 184($4)

	sw $5, 296($4)
	sw $5, 300($4)
	sw $5, 304($4)
	sw $5, 308($4)
	sw $5, 312($4)

	addi $4, $4, 512
	addi $11, $11, -1
	addi $13, $13, -1
	addi $22, $22, 4
	j teste


fimLava1:
	jr $31

# ================================
funcaoDetalhesVermelhos:
	addi $22 $4 32768

DetalhesVermelho:
	
	ori $5, 0xcb1900
	sw $5, 4260($4)
	sw $5, 4256($4)
	sw $5, 4252($4)
	sw $5, 4248($4)
	sw $5, 4764($4)
	sw $5, 4768($4)
	sw $5, 4772($4)
	sw $5, 5284($4)
	sw $5, 5796($4)
	sw $5, 6308($4)
	sw $5, 28308($4)
	sw $5, 28312($4)
	sw $5, 28316($4)
	sw $5, 28320($4)
	sw $5, 28324($4)
	sw $5, 27804($4)
	sw $5, 27808($4)
	sw $5, 27812($4)
	sw $5, 27296($4)
	sw $5, 27300($4)
	sw $5, 26788($4)
	
	sw $5, 4284($4)
	sw $5, 4288($4)
	sw $5, 4292($4)
	sw $5, 4296($4)
	sw $5, 4280($4)
	sw $5, 4276($4)
	sw $5, 4280($4)  # Aqui somou 8 porque era 4 menor
	sw $5, 4792($4)
	sw $5, 4796($4)
	sw $5, 4800($4)
	sw $5, 4804($4)
	sw $5, 5308($4)
	sw $5, 5820($4)
	sw $5, 6332($4)
	sw $5, 28336($4)
	sw $5, 28340($4)
	sw $5, 28344($4)
	sw $5, 28348($4)
	sw $5, 28352($4)
	sw $5, 28356($4)
	sw $5, 28360($4)
	sw $5, 28364($4)
	sw $5, 27832($4)
	sw $5, 27836($4)
	sw $5, 27840($4)
	sw $5, 27844($4)
	sw $5, 27324($4)
	sw $5, 27328($4)
	sw $5, 26812($4)
	
	sw $5, 4388($4)
	sw $5, 4384($4)
	sw $5, 4380($4)
	sw $5, 4376($4)
	sw $5, 4892($4)
	sw $5, 4896($4)
	sw $5, 4900($4)
	sw $5, 5412($4)
	sw $5, 5924($4)
	sw $5, 6436($4)
	sw $5, 28436($4)
	sw $5, 28440($4)
	sw $5, 28444($4)
	sw $5, 28448($4)
	sw $5, 28452($4)
	sw $5, 27932($4)
	sw $5, 27936($4)
	sw $5, 27940($4)
	sw $5, 27424($4)
	sw $5, 27428($4)
	sw $5, 26916($4)

	sw $5, 4412($4)
	sw $5, 4416($4)
	sw $5, 4420($4)
	sw $5, 4424($4)
	sw $5, 4408($4)
	sw $5, 4404($4)
	sw $5, 4408($4)
	sw $5, 4920($4)
	sw $5, 4924($4)
	sw $5, 4928($4)
	sw $5, 4932($4)
	sw $5, 5436($4)
	sw $5, 5948($4)
	sw $5, 6460($4)
	sw $5, 28464($4)
	sw $5, 28468($4)
	sw $5, 28472($4)
	sw $5, 28476($4)
	sw $5, 28480($4)
	sw $5, 28484($4)
	sw $5, 28488($4)
	sw $5, 28492($4)
	sw $5, 27960($4)
	sw $5, 27964($4)
	sw $5, 27968($4)
	sw $5, 27972($4)
	sw $5, 27452($4)
	sw $5, 27456($4)
	sw $5, 26940($4)	
	
	addi $22, $22, 4
	jr $31

# ==============================
# Criação da lava 2
funcaoLava2:
	addi $22 $4 32768
Lava2:
	
	ori $5, 0xff6300
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste2:
	beq $13, $0, fimLava2
	beq $12, $0, fimLava2
	
	sw $5, 172($4)
	sw $5, 176($4)
	sw $5, 180($4)
	
	sw $5, 300($4)
	sw $5, 304($4)
	sw $5, 308($4)
	
	addi $4, $4, 512
	addi $11, $11, -1
	addi $13, $13, -1
	addi $22, $22, 4
	j teste2

fimLava2:
	jr $31

funcaoDetalhandoLaranja:
	addi $22 $4 32768

detalhandoLaranja:
	ori $5, 0xff6300
	
	sw $5, 4260($4)
	sw $5, 4264($4)
	sw $5, 4776($4)
	sw $5, 5288($4)
	sw $5, 5800($4)
	
	sw $5, 4280($4)
	sw $5, 4792($4)
	sw $5, 5304($4)

	sw $5, 28344($4)
	sw $5, 28344($4)
	sw $5, 28348($4)
	sw $5, 27832($4)
	sw $5, 27320($4)
	
	sw $5, 28472($4)
	sw $5, 28472($4)
	sw $5, 28476($4)
	sw $5, 27960($4)
	sw $5, 27448($4)

	sw $5, 4388($4)
	sw $5, 4392($4)
	sw $5, 4904($4)
	sw $5, 5416($4)
	sw $5, 5928($4)

	sw $5, 4408($4)
	sw $5, 4920($4)
	sw $5, 5432($4)

	addi $22, $22, 4
	jr $31 


# ==============================
# Criação da lava 3


Lava3:
	addi $22 $4 32768
	
	ori $5, 0xffb100
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste3:
	beq $13, $0, fimLava3
	beq $12, $0, fimLava3
	
	sw $5, 176($4)
	
	sw $5, 304($4)
	
	addi $4, $4, 512
	addi $11, $11, -1
	addi $13, $13, -1
	addi $22, $22, 4
	j teste3

fimLava3:
	jr $31

detalhandoAmarelo:
	addi $22 $4 32768
	
	ori $5, 0xff6300
	
	sw $5, 7344($4)
	sw $5, 7856($4)
	sw $5, 8368($4)
	sw $5, 8880($4)
	sw $5, 9392($4)
	sw $5, 9904($4)
	sw $5, 10416($4)
	sw $5, 10928($4)
	
	sw $5, 12972($4)
	sw $5, 12976($4)
	
	sw $5, 13488($4)
	sw $5, 14000($4)
	sw $5, 14512($4)
	sw $5, 15024($4)
	sw $5, 15536($4)
	sw $5, 16048($4)
	sw $5, 16560($4)
	sw $5, 17072($4)
	sw $5, 17584($4)
	
	sw $5, 7472($4)
	sw $5, 7984($4)
	sw $5, 8496($4)
	sw $5, 9008($4)
	sw $5, 9520($4)
	sw $5, 10032($4)
	sw $5, 10544($4)
	sw $5, 11056($4)

	sw $5, 13100($4)
	sw $5, 13104($4)

	sw $5, 13616($4)
	sw $5, 14128($4)
	sw $5, 14640($4)
	sw $5, 15152($4)
	sw $5, 15664($4)
	sw $5, 16176($4)
	sw $5, 16688($4)
	sw $5, 17200($4)
	addi $22, $22, 4
	jr $31


	
# ====================================
# Colocando efeitos

	#lui $8, 0x1001
	#ori $11, 0x

	
	
# Criação do Chão
#========================================
funcaoChão:
	addi $22 $4 32768

	
	ori $5, 0xFF303030
	addi $21, $0, 1024
Chão:	
	beq $21, $0, fimChão
	
	sw $5, 28672($4)
	addi $21, $21, -1
	addi $4, $4, 4
	j Chão

fimChão:
	jr $31
	
	

funcaoTeto:
	
	addi $21, $0, 1024
	ori $5, 0xFF303030
teto:
	beq $21, $0, fimTeto
	sw $5, 0($4)
	addi $21, $21, -1
	addi $4, $4, 4
	j teto
fimTeto:
	jr $31

# ================================= 
# "Tijolos do Teto"
funcaoTijoloTeto:
	
	ori $5, 0x7b7b7b
	
	addi $20, $0, 12 # Altura
	
tijoloTet1:
	beq $20, $0, fimTet1
	
	sw $5, 64($4) # Onde começa
	
	addi $20, $20, -1
	addi $4, $4, 128 # Distância entre os pixels

	j tijoloTet1

fimTet1:
	jr $31

funcaoTijoloTeto2:

	ori $5, 0x7b7b7b
	addi $20, $0, 12 # Altura
	
tijoloTet2:

	beq $20, $0, fimTet2
	
	sw $5, 2084($4) # Onde começa
	
	addi $20, $20, -1
	addi $4, $4, 128 # Distância entre os pixels

	j tijoloTet2

fimTet2:
	jr $31

funcaoLinha:
	ori $5, 0x7b7b7b
	
	addi $20, $20, 128
testeLin:
	beq $20, $0, fimL1
	
	sw $5, 1536($4)
	addi $4, $4, 4 
	addi $20, $20, -1
	j testeLin
	
fimL1:
	jr $31

funcaoLinha2:

	ori $5, 0x7b7b7b	
	addi $20, $20, 128
testeLin2:
	beq $20, $0, fimL2
	
	sw $5, 3584($4)
	addi $4, $4, 4 
	addi $20, $20, -1
	j testeLin2
	
fimL2:
	jr $31

# ================================= 
# "Tijolos do Chão"

funcaoTijoloChão1:

	
	ori $5, 0x7b7b7b
	
	addi $20, $0, 12 # Altura
	
tijoloChão1:
	beq $20, $0, fimChão1
	
	sw $5, 28736($4) # Onde começa
	
	addi $20, $20, -1
	addi $4, $4, 128 # Distância entre os pixels

	j tijoloChão1

fimChão1:
	jr $31

funcaoTijoloChão2:

	ori $5, 0x7b7b7b
	addi $20, $0, 12 # Altura
	
tijoloChão2:
	beq $20, $0, fimChão2
	
	sw $5, 30808($4) # Onde começa
	
	addi $20, $20, -1
	addi $4, $4, 128 # Distância entre os pixels

	j tijoloChão2

fimChão2:
	jr $31

funcaoLinhas:
	
	ori $5, 0x7b7b7b	
	addi $20, $20, 128
testeLinha:
	beq $20, $0, fimLinha
	
	sw $5, 30208($4)
	addi $4, $4, 4 
	addi $20, $20, -1
	j testeLinha
	
fimLinha:
	jr $31

	
funcaoLinhas2:
	
	ori $5, 0x7b7b7b
	addi $20, $20, 128

testeLinha2:

	beq $20, $0, fimLinha2
	
	sw $5, 32256($4)
	addi $4, $4, 4 
	addi $20, $20, -1
	j testeLinha2
	
fimLinha2:
	jr $31

# Criação da Cruz
#================================
funcaoCruz:
	addi $22 $4 32768
cruz1:
	ori $6, 0xFFFFD700
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
testecruz:
	beq $13, $0, fimCruz
	beq $12, $0, fimCruz
	
	sw $6, 10472($4)
	sw $6, 10476($4)
	sw $6, 10480($4)
	sw $6, 10484($4)
	sw $6, 10488($4)
	sw $6, 10492($4)

	addi $4, $4, 512
	addi $11, $11, -1
	addi $13, $13, -1
	addi $22, $22, 4
	j testecruz

fimCruz:
	jr $31

#pontas da cruz
pontasDaCruz:
	addi $22 $4 32768
	ori $5, $0, 0xFFFFD700
	sw $5, 10468($4)
	sw $5, 10496($4)
	
	sw $5, 14020($4)
	sw $5, 14052($4)
	sw $5, 14080($4)
	sw $5, 14108($4)
	sw $5, 17180($4)
	sw $5, 17152($4)
	sw $5, 17124($4)
	sw $5, 17092($4)

# cruz

	sw $5, 14528($4)	
	sw $5, 14532($4)
	sw $5, 14536($4)
	sw $5, 14540($4)
	sw $5, 14544($4)
	sw $5, 14548($4)
	sw $5, 14552($4)
	sw $5, 14556($4)
	sw $5, 14560($4)
	sw $5, 14564($4)
	sw $5, 14592($4)
	sw $5, 14596($4)
	sw $5, 14600($4)
	sw $5, 14604($4)
	sw $5, 14608($4)
	sw $5, 14612($4)
	sw $5, 14616($4)
	sw $5, 14620($4)
	sw $5, 14624($4)

	sw $5, 15040($4)
	sw $5, 15044($4)
	sw $5, 15048($4)
	sw $5, 15052($4)
	sw $5, 15056($4)
	sw $5, 15060($4)
	sw $5, 15064($4)
	sw $5, 15068($4)
	sw $5, 15072($4)
	sw $5, 15076($4)
	sw $5, 15104($4)
	sw $5, 15108($4)
	sw $5, 15112($4)
	sw $5, 15116($4)
	sw $5, 15120($4)
	sw $5, 15124($4)
	sw $5, 15128($4)
	sw $5, 15132($4)
	sw $5, 15136($4)

	sw $5, 15552($4)
	sw $5, 15556($4)
	sw $5, 15560($4)
	sw $5, 15564($4)
	sw $5, 15568($4)
	sw $5, 15572($4)
	sw $5, 15576($4)
	sw $5, 15580($4)
	sw $5, 15584($4)
	sw $5, 15588($4)
	sw $5, 15616($4)
	sw $5, 15620($4)
	sw $5, 15624($4)
	sw $5, 15628($4)
	sw $5, 15632($4)
	sw $5, 15636($4)
	sw $5, 15640($4)
	sw $5, 15644($4)
	sw $5, 15648($4)

	sw $5, 16064($4)
	sw $5, 16068($4)
	sw $5, 16072($4)
	sw $5, 16076($4)
	sw $5, 16080($4)
	sw $5, 16084($4)
	sw $5, 16088($4)
	sw $5, 16092($4)
	sw $5, 16096($4)
	sw $5, 16100($4)
	sw $5, 16128($4)
	sw $5, 16132($4)
	sw $5, 16136($4)
	sw $5, 16140($4)
	sw $5, 16144($4)
	sw $5, 16148($4)
	sw $5, 16152($4)
	sw $5, 16156($4)
	sw $5, 16160($4)

	sw $5, 16576($4)
	sw $5, 16580($4)
	sw $5, 16584($4)
	sw $5, 16588($4)
	sw $5, 16592($4)
	sw $5, 16596($4)
	sw $5, 16600($4)
	sw $5, 16604($4)
	sw $5, 16608($4)
	sw $5, 16612($4)
	sw $5, 16640($4)
	sw $5, 16644($4)
	sw $5, 16648($4)
	sw $5, 16652($4)
	sw $5, 16656($4)
	sw $5, 16660($4)
	sw $5, 16664($4)
	sw $5, 16668($4)
	sw $5, 16672($4)

	addi $22, $22, 4

	
	jr $31 

#quadrado vermelho no meio da cruz
#========================================
quadradoCruz:
	addi $22 $4 32768
	
	ori $5, $0, 0xFF0000

	sw $5, 15080($4)
	sw $5, 15084($4)
	sw $5, 15088($4)
	sw $5, 15092($4)
	sw $5, 15096($4)
	sw $5, 15100($4)

	sw $5, 15592($4)
	sw $5, 15596($4)
	sw $5, 15600($4)
	sw $5, 15604($4)
	sw $5, 15608($4)
	sw $5, 15612($4)

	sw $5, 15592($4)
	sw $5, 16104($4)
	sw $5, 16108($4)
	sw $5, 16112($4)
	sw $5, 16116($4)
	sw $5, 16120($4)
	sw $5, 16124($4)
	
	jr $31
# =============================================
	
# ================================================
# Desenhando o Richter Belmont
desenharBelmont:
	sw $5, 0($29)
	addi $29, $29, -4
	sw $6, 0($29)
	addi $29, $29, -4
	sw $7, 0($29)
	addi $29, $29, -4
	sw $8, 0($29)
	addi $29, $29, -4
	sw $9, 0($29)
	addi $29, $29, -4
	sw $10, 0($29)
	addi $29, $29, -4
	sw $22, 0($29)
	addi $29, $29, -4
	sw $23, 0($29)
	addi $29, $29, -4
	sw $24, 0($29)
	addi $29, $29, -4
	sw $25, 0($29)
	addi $29, $29, -4
	
	ori $25 $0 0xff00ff
	li $22 9
laco_desenharBelmont_1:
	li $23 6
laco_desenharBelmont_2:
	sw $25 0($3)

	addi $3 $3 4
	addi $23 $23 -1
	bnez $23 laco_desenharBelmont_2
	
	addi $3 $3 -24
	addi $3 $3 512
	add $22 $22 -1
	bnez $22 laco_desenharBelmont_1
	
	addi $3 $3 -4608
	
	ori $5 $0 0xFFFFFFF
	ori $6 $0 0x3E2B1F
	ori $7 $0 0xF1C27D
	ori $8 $0 0x0000CD 
	ori $9 $0 0x505050
	ori $10 $0 0x7d3100
	
	# cabelo
	sw $6, 1028($3)
	sw $6, 8($3)
	sw $6, 12($3)
	sw $6, 16($3)

	# faixa de cabeca
	sw $5, 1024($3)
	sw $5, 516($3)
	sw $5, 520($3)
	sw $5, 524($3)
	sw $5, 528($3)

	# pele
	sw $7, 1032($3)
	sw $7, 1036($3)
	sw $7, 1040($3)
	sw $7, 2052($3)
	sw $7, 2564($3)
	sw $7, 2568($3)
	sw $7, 2064($3)
	sw $7, 2576($3)
	sw $7, 2580($3)

	# camisa
	sw $8, 1540($3)
	sw $8, 1544($3)
	sw $8, 1544($3)
	sw $8, 1548($3)
	sw $8, 1552($3)
	
	sw $8, 2056($3)
	sw $8, 2060($3)
	sw $8, 2572($3)

	# calca
	sw $8, 3072($3)
	sw $8, 3584($3)
	sw $8, 3076($3)
	
	sw $9, 3080($3)
	sw $9, 3084($3)
	sw $9, 3088($3)
	
	sw $9, 3592($3)
	sw $9, 3600($3)
	
	# sapatos
	sw $10, 4104($3)
	sw $10, 4112($3)
	sw $10, 4116($3)
	
	ori $25 $0 0xff00ff
	li $22 9
laco_desenharBelmont_3:
	li $23 6
laco_desenharBelmont_4:
	lw $24 0($3)
	bne $24 $25 continuacao_desenharBelmont
	
	lw $24 32768($3)
	sw $24 0($3)
	
continuacao_desenharBelmont:
	addi $3 $3 4
	addi $23 $23 -1
	bnez $23 laco_desenharBelmont_4
	
	addi $3 $3 -24
	addi $3 $3 512
	add $22 $22 -1
	bnez $22 laco_desenharBelmont_3
	
	addi $3 $3 -4608

	addi $29, $29, 4                                                     
	lw $25, 0($29) 
	addi $29, $29, 4                                                     
	lw $24, 0($29) 
	addi $29, $29, 4                                                     
	lw $23, 0($29) 
	addi $29, $29, 4                                                     
	lw $22, 0($29) 
	addi $29, $29, 4                                                     
	lw $10, 0($29) 
	addi $29, $29, 4                                                     
	lw $9, 0($29) 
	addi $29, $29, 4                                                     
	lw $8, 0($29) 
	addi $29, $29, 4                                                     
	lw $7, 0($29) 
	addi $29, $29, 4                                                     
	lw $6, 0($29) 
	addi $29, $29, 4                                                     
	lw $5, 0($29) 

	jr $31

	
# ===============================================
player:
      lui $17, 0xffff
      addi $20, $0, 32
      addi $7, $0, 'a'
      addi $8, $0, 'd'
      addi $9, $0, 'j'
      addi $10, $0, 'w'
      
for2:       	
      lw $18, 0($17)
      beq $18, $0, cont
      lw $19, 4($17)
      
      beq $19, $20, fim
      beq $19, $7, esq
      beq $19, $8, dir
      beq $19, $9, atk
      beq $19, $10, cima
     
      j cont
esq:  
	addi $3 $3 -8 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 24 # pode mudar
	li $22 9 # pode mudar
laco_esq_1:
	li $23 2 # pode mudar
laco_esq_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_esq_2
	
	addi $24 $24 -8 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_esq_1
	
	jal timer
      j cont  
     
dir:	
	addi $3 $3 8 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 -8 # pode mudar
	li $22 9 # pode mudar
laco_dir_1:
	li $23 2 # pode mudar
laco_dir_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_dir_2
	
	addi $24 $24 -8 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_dir_1
	
	jal timer
      j cont  
      
atk:  
	
                 
cont: 
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	j for2
fim:  
	jr $31

NPC:
	#lui $14, 0x1001   # Substituindo $4 -> $14
	#addi $14, $14, 25404

	#ori $15, 0xffffff  # Substituindo $5 -> $15
	#sw $15, 0($14)
	#addi $28, $0, 34   # Substituindo $12 -> $28
	
deslocDir:
	#beq $28, $0, fimDeslocDir
	#sw $15, -4($14)
	#addi $14, $14, -4
	#jal desenharNPC
	#sw $26, 25404($14)  # Substituindo $9 -> $26
	#lw $30, 32768($14)  # Substituindo $25 -> $30
	#sw $30, 20($14)
	#sw $30, 532($14)
	#sw $30, 1044($14)
	#sw $30, 1556($14)
	#jal timer
	#addi $28, $28, -1
	#j deslocDir
	
fimDeslocDir:
	#addi $28, $0, 34
	
DeslocEsq:
	#beq $28, $0, fimDeslocEsq
	#sw $15, 4($14)
	#addi $14, $14, 4
	#jal desenharNPC
	#lw $30, 32768($14)
	#sw $30, -4($14)
	#sw $30, 508($14)
	#sw $30, 1020($14)
	#sw $30, 1532($14)
	#sw $26, 25404($14)
	#jal timer
	
	#addi $28, $28, -1
	#j DeslocEsq

fimDeslocEsq:
	#j NPC
	
# registador de entrada: $4 quantas vezes o npc andou	
andar_npc: 
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4

	addi $8 $0 68
	div $4 $8
	mfhi $9
	addi $8 $0 34
	slt $9 $9 $8
	beq $9 $0 npc_direita
	
	addi $14 $14 -4
	jal desenharNPC
	
	addi $10 $14 20
	li $8 4
laco_npc_esquerda:
	
	lw $9 32768($10)
	sw $9 0($10)
	
	addi $10 $10 512
	addi $8 $8 -1
	bnez $8 laco_npc_esquerda
	
	jal timer
	
	addi $2 $4 1
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
npc_direita:

	addi $14 $14 4
	jal desenharNPC
	
	addi $10 $14 -4
	li $8 4
laco_npc_direita:
	
	lw $9 32768($10)
	sw $9 0($10)
	
	addi $10 $10 512
	addi $8 $8 -1
	bnez $8 laco_npc_direita
	
	jal timer

	addi $2 $4 1
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)

	jr $31
	
desenharNPC:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $15 0($29)
       	addi $29 $29 -4
       	sw $16 0($29)
       	addi $29 $29 -4
       	sw $21 0($29)
       	addi $29 $29 -4
       	
	li $15, 0xffffff  # Substituindo $5 -> $15
	li $16, 0x000000  # Substituindo $6 -> $16
	li $21, 0x270013  # Substituindo $7 -> $21
	
	sw $21, 0($14)
	sw $15, 4($14)
	sw $15, 8($14)
	sw $15, 12($14)
	sw $21, 16($14)
	
	sw $15, 512($14)
	sw $16, 516($14)
	sw $15, 520($14)
	sw $16, 524($14)
	sw $15, 528($14)

	sw $15, 1024($14)
	sw $15, 1028($14)
	sw $15, 1032($14)
	sw $15, 1036($14)
	sw $15, 1040($14)
	
	sw $21, 1536($14)
	sw $15, 1540($14)
	sw $21, 1544($14)
	sw $15, 1548($14)
	sw $21, 1552($14)

	addi $29 $29 4                                                    
       	lw $21 0($29)
	addi $29 $29 4                                                    
       	lw $16 0($29)
	addi $29 $29 4                                                    
       	lw $15 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)

	jr $31
	
	
	

	
	# ================================================
# Desenhando o Richter Belmont atk
belmontAtk:
	
	ori $5, 0xFFFFFFF
	ori $6, 0x3E2B1F
	ori $7, 0xF1C27D
	ori $8, 0x0000CD 
	ori $9, 0x505050
	ori $10,0x7d3100
	ori $11,0x743000 
	ori $12,0xFFFFFF00 
		
	# cabelo
	sw $6, 13320($4)
	sw $6, 13324($4)
	sw $6, 13328($4)
	sw $6, 14340($4)

	# faixa de cabeça
	sw $5, 14336($4)
	sw $5, 13828($4)
	sw $5, 13832($4)
	sw $5, 13836($4)
	sw $5, 13840($4)

	# pele
	sw $7, 14344($4)
	sw $7, 14348($4)
	sw $7, 14352($4)
	sw $7, 15364($4)
	sw $7, 15876($4)
	sw $7, 15880($4)
	sw $7, 15380($4)
	sw $7, 15384($4)
	sw $7, 15388($4)
	
	#chicote
	
	sw $12, 15392($4) 
	sw $11, 15396($4) 
	sw $11, 15400($4)
	sw $11, 15404($4)
	sw $11, 15408($4)
	sw $11, 15412($4)
	sw $11, 15416($4)
	sw $11, 15420($4)
	sw $11, 15424($4)
	sw $11, 15428($4)
	sw $11, 15432($4)

	# camisa
	sw $8, 14852($4)
	sw $8, 14856($4)
	sw $8, 14860($4)
	sw $8, 14864($4)
	sw $8, 15368($4)
	sw $8, 15372($4)
	sw $8, 15884($4)
	sw $8, 16388($4)
	sw $8, 16384($4)
	sw $8, 16896($4)
	sw $8, 15888($4)
	sw $8, 15376($4)

	# calça
	sw $9, 16392($4)
	sw $9, 16396($4)
	sw $9, 16400($4)
	sw $9, 16904($4)
	sw $9, 16400($4)
	sw $9, 16400($4)
	sw $9, 16912($4)
	
	#sapatos
	sw $10, 17424($4)
	sw $10, 17428($4)
	sw $10, 17416($4)
	
	jr $31

	
	



# ================================================
# Timer
timer: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 100000
forT:  
	beq $16, $0, fimT
       	nop
       	nop
       	addi $16, $16, -1      
       	j forT                  
fimT:  
	addi $29, $29, 4                                                    
       	lw $16, 0($29)          
       	jr $31
