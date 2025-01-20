main:
# Criação do Cenário 1
#========================================

	lui $8, 0x1001
	ori $9, 0x270013 # Cor do Fundo
	
	addi $20, $0, 524288 # Quantidade de pixels na tela
	
# Laço para geração de cenário, preencherá todos os pixels	
Cenário: 
	beq $20, $0, fimCenário
	
	sw $9, 0($8)
	addi $20, $20, -1
	addi $8, $8, 4
	j Cenário
	
fimCenário:

# ==============================
# Criação da lava 1
Lava1:
	lui $8, 0x1001
	ori $10, 0xcb1900
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste:
	beq $13, $0, fimLava1
	beq $12, $0, fimLava1
	
	sw $10, 168($8)
	sw $10, 172($8)
	sw $10, 176($8)
	sw $10, 180($8)
	sw $10, 184($8)
	
	sw $10, 296($8)
	sw $10, 300($8)
	sw $10, 304($8)
	sw $10, 308($8)
	sw $10, 312($8)
	
	addi $8, $8, 512
	addi $11, $11, -1
	addi $13, $13, -1
	j teste

fimLava1:

# ================================
DetalhesVermelho:
	lui $8, 0x1001
	#ori $10, 0xcb1900
	
	sw $10, 4260($8)
	sw $10, 4256($8)
	sw $10, 4252($8)
	sw $10, 4248($8)
	sw $10, 4764($8)
	sw $10, 4768($8)
	sw $10, 4772($8)
	sw $10, 5284($8)
	sw $10, 5796($8)
	sw $10, 6308($8)
	sw $10, 28308($8)
	sw $10, 28312($8)
	sw $10, 28316($8)
	sw $10, 28320($8)
	sw $10, 28324($8)
	sw $10, 27804($8)
	sw $10, 27808($8)
	sw $10, 27812($8)
	sw $10, 27296($8)
	sw $10, 27300($8)
	sw $10, 26788($8)
	
	sw $10, 4284($8)
	sw $10, 4288($8)
	sw $10, 4292($8)
	sw $10, 4296($8)
	sw $10, 4280($8)
	sw $10, 4276($8)
	sw $10, 4280($8)  # Aqui somou 8 porque era 4 menor
	sw $10, 4792($8)
	sw $10, 4796($8)
	sw $10, 4800($8)
	sw $10, 4804($8)
	sw $10, 5308($8)
	sw $10, 5820($8)
	sw $10, 6332($8)
	sw $10, 28336($8)
	sw $10, 28340($8)
	sw $10, 28344($8)
	sw $10, 28348($8)
	sw $10, 28352($8)
	sw $10, 28356($8)
	sw $10, 28360($8)
	sw $10, 28364($8)
	sw $10, 27832($8)
	sw $10, 27836($8)
	sw $10, 27840($8)
	sw $10, 27844($8)
	sw $10, 27324($8)
	sw $10, 27328($8)
	sw $10, 26812($8)
	
	sw $10, 4388($8)
	sw $10, 4384($8)
	sw $10, 4380($8)
	sw $10, 4376($8)
	sw $10, 4892($8)
	sw $10, 4896($8)
	sw $10, 4900($8)
	sw $10, 5412($8)
	sw $10, 5924($8)
	sw $10, 6436($8)
	sw $10, 28436($8)
	sw $10, 28440($8)
	sw $10, 28444($8)
	sw $10, 28448($8)
	sw $10, 28452($8)
	sw $10, 27932($8)
	sw $10, 27936($8)
	sw $10, 27940($8)
	sw $10, 27424($8)
	sw $10, 27428($8)
	sw $10, 26916($8)

	sw $10, 4412($8)
	sw $10, 4416($8)
	sw $10, 4420($8)
	sw $10, 4424($8)
	sw $10, 4408($8)
	sw $10, 4404($8)
	sw $10, 4408($8)
	sw $10, 4920($8)
	sw $10, 4924($8)
	sw $10, 4928($8)
	sw $10, 4932($8)
	sw $10, 5436($8)
	sw $10, 5948($8)
	sw $10, 6460($8)
	sw $10, 28464($8)
	sw $10, 28468($8)
	sw $10, 28472($8)
	sw $10, 28476($8)
	sw $10, 28480($8)
	sw $10, 28484($8)
	sw $10, 28488($8)
	sw $10, 28492($8)
	sw $10, 27960($8)
	sw $10, 27964($8)
	sw $10, 27968($8)
	sw $10, 27972($8)
	sw $10, 27452($8)
	sw $10, 27456($8)
	sw $10, 26940($8)

# ==============================
# Criação da lava 2
Lava2:
	lui $8, 0x1001
	ori $15, 0xff6300
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste2:
	beq $13, $0, fimLava2
	beq $12, $0, fimLava2
	
	sw $15, 172($8)
	sw $15, 176($8)
	sw $15, 180($8)
	
	sw $15, 300($8)
	sw $15, 304($8)
	sw $15, 308($8)
	
	addi $8, $8, 512
	addi $11, $11, -1
	addi $13, $13, -1
	j teste2

fimLava2:

detalhandoLaranja:
	lui $8, 0x1001
	sw $15, 4260($8)
	sw $15, 4264($8)
	sw $15, 4776($8)
	sw $15, 5288($8)
	sw $15, 5800($8)
	
	sw $15, 4280($8)
	sw $15, 4792($8)
	sw $15, 5304($8)

	sw $15, 28344($8)
	sw $15, 28344($8)
	sw $15, 28348($8)
	sw $15, 27832($8)
	sw $15, 27320($8)
	
	sw $15, 28472($8)
	sw $15, 28472($8)
	sw $15, 28476($8)
	sw $15, 27960($8)
	sw $15, 27448($8)

	
	
	
	
	sw $15, 4388($8)
	sw $15, 4392($8)
	sw $15, 4904($8)
	sw $15, 5416($8)
	sw $15, 5928($8)

	sw $15, 4408($8)
	sw $15, 4920($8)
	sw $15, 5432($8)

# ==============================
# Criação da lava 2
Lava3:
	lui $8, 0x1001
	ori $16, 0xffb100
	
	addi $11, $0, 128
	addi $12, $0, 1920
	addi $13, $0, 256
teste3:
	beq $13, $0, fimLava3
	beq $12, $0, fimLava3
	
	sw $16, 176($8)
	
	sw $16, 304($8)
	
	addi $8, $8, 512
	addi $11, $11, -1
	addi $13, $13, -1
	j teste3

fimLava3:

detalhandoAmarelo:
	lui $8, 0x1001
	ori $15, 0xff6300
	
	sw $15, 7344($8)
	sw $15, 7856($8)
	sw $15, 8368($8)
	sw $15, 8880($8)
	sw $15, 9392($8)
	sw $15, 9904($8)
	sw $15, 10416($8)
	sw $15, 10928($8)
	
	sw $16, 12972($8)
	sw $15, 12976($8)
	
	sw $15, 13488($8)
	sw $15, 14000($8)
	sw $15, 14512($8)
	sw $15, 15024($8)
	sw $15, 15536($8)
	sw $15, 16048($8)
	sw $15, 16560($8)
	sw $15, 17072($8)
	sw $15, 17584($8)
	
	sw $15, 7472($8)
    	sw $15, 7984($8)
    	sw $15, 8496($8)
    	sw $15, 9008($8)
    	sw $15, 9520($8)
    	sw $15, 10032($8)
    	sw $15, 10544($8)
    	sw $15, 11056($8)

    	sw $16, 13100($8)
    	sw $15, 13104($8)

    	sw $15, 13616($8)
    	sw $15, 14128($8)
    	sw $15, 14640($8)
    	sw $15, 15152($8)
    	sw $15, 15664($8)
    	sw $15, 16176($8)
    	sw $15, 16688($8)
    	sw $15, 17200($8)

	
# ====================================
# Colocando efeitos

	#lui $8, 0x1001
	#ori $11, 0x

	
	
# Criação do Chão
#========================================
	lui $8, 0x1001
	ori $14, 0xFF303030
	addi $21, $0, 1024
Chão:	
	beq $21, $0, fimChão
	
	sw $14, 28672($8)
	addi $21, $21, -1
	addi $8, $8, 4
	j Chão

fimChão:
	lui $8, 0x1001
	#ori $11, 0xFF303030
	addi $21, $0, 1024
teto:
	beq $21, $0, fimTeto
	sw $14, 0($8)
	addi $21, $21, -1
	addi $8, $8, 4
	j teto
fimTeto:

# ================================= 
# "Tijolos do Teto"

	lui $8, 0x1001
	ori $17, 0x7b7b7b
	
	addi $20, $0, 12 # Altura
	
tijoloTet1:
	beq $20, $0, fimTet1
	
	sw $17, 64($8) # Onde começa
	
	addi $20, $20, -1
	addi $8, $8, 128 # Distância entre os pixels

	j tijoloTet1

fimTet1:
	addi $20, $0, 12 # Altura
	
tijoloTet2:
	beq $20, $0, fimTet2
	
	sw $17, 632($8) # Onde começa
	
	addi $20, $20, -1
	addi $8, $8, 128 # Distância entre os pixels

	j tijoloTet2

fimTet2:
	lui $8, 0x1001
	
	addi $20, $20, 128
testeLin:
	beq $20, $0, fimL1
	
	sw $17, 1536($8)
	addi $8, $8, 4 
	addi $20, $20, -1
	j testeLin
	
fimL1:
	lui $8, 0x1001
	
	addi $20, $20, 128
testeLin2:
	beq $20, $0, fimL2
	
	sw $17, 3584($8)
	addi $8, $8, 4 
	addi $20, $20, -1
	j testeLin2
	
fimL2:

# ================================= 
# "Tijolos do Chão"

	lui $8, 0x1001
	ori $17, 0x7b7b7b
	
	addi $20, $0, 12 # Altura
	
tijoloChão1:
	beq $20, $0, fimChão1
	
	sw $17, 28736($8) # Onde começa
	
	addi $20, $20, -1
	addi $8, $8, 128 # Distância entre os pixels

	j tijoloChão1

fimChão1:
	addi $20, $0, 12 # Altura
	
tijoloChão2:
	beq $20, $0, fimChão2
	
	sw $17, 29272($8) # Onde começa
	
	addi $20, $20, -1
	addi $8, $8, 128 # Distância entre os pixels

	j tijoloChão2

fimChão2:
	lui $8, 0x1001
	
	addi $20, $20, 128
testeLinha:
	beq $20, $0, fimLinha
	
	sw $17, 30208($8)
	addi $8, $8, 4 
	addi $20, $20, -1
	j testeLinha
	
fimLinha:
	lui $8, 0x1001
	
	addi $20, $20, 128
testeLinha2:
	beq $20, $0, fimLinha2
	
	sw $17, 32256($8)
	addi $8, $8, 4 
	addi $20, $20, -1
	j testeLinha2
	
fimLinha2:
	addi $2, $0, 10
	syscall
