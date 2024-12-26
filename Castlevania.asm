.text
main:

# Criação do Cenário 1
#========================================

	lui $8, 0x1001
	ori $9, 0x090014 # Cor do Fundo
	
	addi $20, $0, 524288 # Quantidade de pixels na tela
	
# Laço para geração de cenário, preencherá todos os pixels	
Cenário: 
	beq $20, $0, fimCenário
	
	sw $9, 0($8)
	addi $20, $20, -1
	addi $8, $8, 4
	j Cenário
	
fimCenário:
	
# Criação do Chão
#========================================

	lui $8, 0x1001
	ori $10, 0xA7A7A7

	addi $21, $0, 1024
Chão:	
	beq $21, $0, fimChão
	
	sw $10, 28672($8)
	addi $21, $21, -1
	addi $8, $8, 4
	j Chão

fimChão:

# Criação de estrelas
#========================================

	lui $8, 0x1001
	ori $10, 0xffffffff
	
	sw $10, 2700($8)
	sw $10, 2920($8)
	sw $10, 5328($8)
	sw $10, 7720($8)
	sw $10, 12020($8)
	sw $10, 17020($8)
	sw $10, 17720($8)
	sw $10, 20720($8)
	sw $10, 22060($8)
	
	addi $2, $0, 10
	syscall
