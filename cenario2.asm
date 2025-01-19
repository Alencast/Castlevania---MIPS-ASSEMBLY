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
	ori $10, 0xff6300
	
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
DetalhesdaLava:
	lui $8, 0x1001
	
	sw $10, 152($8)
	sw $10, 156($8)
	sw $10, 160($8)
	sw $10, 164($8)
	
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
