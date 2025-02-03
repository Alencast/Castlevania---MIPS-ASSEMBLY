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
	
	lui $4, 0x1001
	add $5 $0 $0
	add $6, $0, $0
	add $7 $0 $0
	add $8 $0 $0
	add $9, $0, $0
	add $10, $0, $0
	jal belmont
	
	lui $4, 0x1001
	add $5 $0 $0
	add $6, $0, $0
	add $7, $0, $0
	jal NPC
	
	
	
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
belmont:
	
	ori $5, 0xFFFFFFF
	ori $6, 0x3E2B1F
	ori $7, 0xF1C27D
	ori $8, 0x0000CD 
	ori $9, 0x505050
	ori $10,0x7d3100
	# cabelo
	sw $6, 24072($4)
	sw $6, 24076($4)
	sw $6, 24080($4)
	sw $6, 25092($4)

	# faixa de cabeça
	sw $5, 25088($4)
	sw $5, 24580($4)
	sw $5, 24584($4)
	sw $5, 24588($4)
	sw $5, 24592($4)

	# pele
	sw $7, 25096($4)
	sw $7, 25100($4)
	sw $7, 25104($4)
	sw $7, 26116($4)
	sw $7, 26628($4)
	sw $7, 26632($4)
	sw $7, 26640($4)
	sw $7, 26128($4)
	sw $7, 26644($4)

	# camisa
	sw $8, 25604($4)
	sw $8, 25608($4)
	sw $8, 25612($4)
	sw $8, 25616($4)
	sw $8, 26120($4)
	sw $8, 26124($4)
	sw $8, 26636($4)
	sw $8, 27140($4)
	sw $8, 27136($4)
	sw $8, 27648($4)

	# calça
	sw $9, 27144($4)
	sw $9, 27148($4)
	sw $9, 27152($4)
	sw $9, 27656($4)
	sw $9, 27152($4)
	sw $9, 28180($4)
	sw $9, 27664($4)
	
	#sapatos
	sw $10, 28176($4)
	sw $10, 28180($4)
	sw $10, 28168($4)	
	
	jr $31
# ============================================
# Movimentação DO NPC
NPC:
	lui $4, 0x1001
	#addi $4, $4, 25404
	addi $4, $4, 25444

	#jal desenharNPC
	ori $5, 0xffffff
	sw $5, 0($4)
	addi $12, $0, 34
	
deslocDir:
	beq $12, $0, fimDeslocDir
	sw $5, -4($4)
	#lw $25, 32768($4)
	#sw $25, 0($4)
	addi $4, $4, -4
	jal desenharNPC
	sw $9, 25404($4)
	lw $25, 32788($4)
	sw $25, 20($4)
	sw $25 532($4)
	sw $25 1044($4)
	sw $25 1556($4)
	jal timer
	addi $12, $12, -1
	j deslocDir
fimDeslocDir:
	addi $12, $0, 34
DeslocEsq:
	beq $12, $0, fimDeslocEsq
	sw $5, 4($4)
	#lw $25, 32768($4)
	#sw $25, 0($4)
	addi $4, $4, 4
	jal desenharNPC
	lw $25, 32764($4)
	sw $25, -4($4)
	sw $25 508($4)
	sw $25 1020($4)
	sw $25 1532($4)
	sw $9, 25404($4)
	jal timer
	
	addi $12, $12, -1
	j DeslocEsq

fimDeslocEsq:
	j NPC
	
# =============================
# Função que desenha a caveira
desenharNPC:
	ori $5, 0xffffff
	ori $6, 0x000000
	ori $7, 0x270013
	
	sw $7 0($4)
	sw $5, 4($4)
	sw $5, 8($4)
	sw $5, 12($4)
	sw $7 16($4)
	
	sw $5, 512($4)
	sw $6, 516($4)
	sw $5, 520($4)
	sw $6, 524($4)
	sw $5 528($4)

	sw $5, 1024($4)
	sw $5, 1028($4)
	sw $5, 1032($4)
	sw $5, 1036($4)
	sw $5, 1040($4)
	
	sw $7 1536($4)
	sw $5, 1540($4)
	sw $7 1544($4)
	sw $5, 1548($4)
	sw $7 1552($4)

	#addi $4, $4, 25400
	#sw $5, 4($4)
	#sw $5, 8($4)
	#sw $5, 12($4)
	#sw $5, 512($4)
	
	#sw $5, 520($4)
	#sw $6, 524($4)
	#sw $5, 528($4)
	#sw $6, 516($4)
	
	#sw $5, 1024($4)
	#sw $5, 1028($4)
	#sw $5, 1032($4)
	#sw $5, 1036($4)
	#sw $5, 1040($4)
	
	#sw $5, 1540($4)
	#sw $5, 1548($4)
	
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
