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
	sw $10, 17840($8)
	sw $10, 17720($8)
	
	sw $10, 20720($8)
	sw $10, 22060($8)
	
	

# Criação do castelo
#========================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 10600     # Define o deslocamento inicial da torre
	ori $10, $0, 0xFF404040  # Define a cor cinza escuro
	addi $11, $0, 18       # Variável de controle da largura da torre
	addi $12, $0, 36       # Altura da torre

torre1altura: 
	beq $12, $0, fimTorre1altura
	addi $11, $0, 18       # Reinicia a largura da linha

torre1largura:
	beq $11, $0, fimTorre1largura
	sw $10, 0($8)          # Escreve no endereço apontado por $8
	addi $8, $8, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre1largura

fimTorre1largura:
	sub $8, $8, 72         # Retorna ao início da linha atual
	addi $8, $8, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre1altura

fimTorre1altura:










#torre2
#============================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 17840     # Define o deslocamento inicial da torre
	ori $10, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 24     # Reinicia a largura da linha

torre2largura:
	beq $11, $0, fimTorre2largura
	sw $10, 0($8)          # Escreve no endereço apontado por $8
	addi $8, $8, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre2largura

fimTorre2largura:
	sub $8, $8, 96         # Retorna ao início da linha atual
	addi $8, $8, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre2altura

fimTorre2altura:

#escadaria
#============================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 17840     # Define o deslocamento inicial da torre
	ori $10, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre3altura: 
	beq $12, $0, fimTorre3altura
	addi $11, $0, 24     # Reinicia a largura da linha

torre3largura:
	beq $11, $0, fimTorre3largura
	sw $10, 0($8)          # Escreve no endereço apontado por $8
	addi $8, $8, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre3largura

fimTorre3largura:
	sub $8, $8, 88         # Retorna ao início da linha atual
	addi $8, $8, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre3altura

fimTorre3altura:

#fim da escada











	
	
	



	
	
	
	
	
