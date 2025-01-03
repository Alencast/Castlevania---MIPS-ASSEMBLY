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
	ori $10, 0x122E00

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
	ori $10, 0xfffffff
	
	sw $10, 2700($8)
	sw $10, 2920($8)
	sw $10, 3004($8)
	sw $10, 4380($8)
	sw $10, 5328($8)
	sw $10, 7720($8)
	sw $10, 8680($8)
	sw $10, 11200($8)
	sw $10, 12020($8)
	sw $10, 12108($8)
	sw $10, 13300($8)
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
	addi $11, $0, 18      # Variável de controle da largura da torre
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

# Criação da Torre
#========================================

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

# Criação da Escadaria
#========================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 17840     # Define o deslocamento inicial da torre
	ori $10, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # Variável de controle da largura da torre
	addi $12, $0, 21      # Altura da torre 17840

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

# Fazendo a lua (PIXEL POR PIXEL)
#========================================
# Comecei fazendo as bordas, os "blocos" de código que estão maiores
# São os que preenchem a lua

# Parte de cima da Lua
	lui $8, 0x1001
	ori $13, 0xD1001F # A cor está correta, mas a lua não fica vermelha
	
	sw $10, 6252($8)
	sw $10, 6256($8)
	sw $10, 6260($8)
	sw $10, 6264($8)
	sw $10, 6268($8)
	
	sw $10, 6756($8)
	sw $10, 6760($8)

	sw $10, 6764($8)
	sw $10, 6768($8)
	sw $10, 6772($8)
	sw $10, 6776($8)
	sw $10, 6780($8)
	
	sw $10, 6784($8)
	sw $10, 6788($8)


	sw $10, 7268($8)
	sw $10, 7272($8)
	sw $10, 7276($8)
	sw $10, 7280($8)
	sw $10, 7284($8)
	sw $10, 7288($8)
	sw $10, 7292($8)
	sw $10, 7296($8)
	sw $10, 7300($8)
	sw $10, 7304($8)
	
	sw $10, 7772($8)
	sw $10, 7776($8)
	sw $10, 7780($8)
	sw $10, 7784($8)
	sw $10, 7788($8)
	sw $10, 7792($8)
	sw $10, 7796($8)
	sw $10, 7800($8)
	sw $10, 7804($8)
	sw $10, 7808($8)
	sw $10, 7812($8)
	sw $10, 7816($8)
	sw $10, 7820($8)
	sw $10, 8284($8)
	sw $10, 8288($8)
	sw $10, 8292($8)
	sw $10, 8296($8)
	sw $10, 8300($8)
	sw $10, 8304($8)
	sw $10, 8308($8)
	sw $10, 8312($8)
	sw $10, 8316($8)
	sw $10, 8320($8)
	sw $10, 8324($8)
	sw $10, 8328($8)
	sw $10, 8332($8)
	
# Laterais da lua
	sw $10, 8792($8)
	sw $10, 8796($8)
	sw $10, 8800($8)
	sw $10, 8804($8)
	sw $10, 8808($8)
	sw $10, 8812($8)
	sw $10, 8816($8)
	sw $10, 8820($8)
	sw $10, 8824($8)
	sw $10, 8828($8)
	sw $10, 8832($8)
	sw $10, 8836($8)
	sw $10, 8840($8)
	sw $10, 8844($8)
	sw $10, 8848($8)
	
	sw $10, 9304($8)
	sw $10, 9308($8)
	sw $10, 9312($8)
	sw $10, 9316($8)
	sw $10, 9320($8)
	sw $10, 9324($8)
	sw $10, 9328($8)
	sw $10, 9332($8)
	sw $10, 9336($8)
	sw $10, 9340($8)
	sw $10, 9344($8)
	sw $10, 9348($8)
	sw $10, 9352($8)
	sw $10, 9356($8)	
	sw $10, 9360($8)
	
	sw $10, 9816($8)
	sw $10, 9820($8)
	sw $10, 9824($8)
	sw $10, 9828($8)
	sw $10, 9832($8)
	sw $10, 9836($8)
	sw $10, 9840($8)
	sw $10, 9844($8)
	sw $10, 9848($8)
	sw $10, 9852($8)
	sw $10, 9856($8)
	sw $10, 9860($8)
	sw $10, 9864($8)
	sw $10, 9868($8)
	sw $10, 9872($8)
	
	sw $10, 10328($8)
	sw $10, 10332($8)
	sw $10, 10336($8)
	sw $10, 10340($8)
	sw $10, 10344($8)
	sw $10, 10348($8)
	sw $10, 10352($8)
	sw $10, 10356($8)
	sw $10, 10360($8)
	sw $10, 10364($8)
	sw $10, 10368($8)
	sw $10, 10372($8)
	sw $10, 10376($8)
	sw $10, 10380($8)
	sw $10, 10384($8)
	
	sw $10, 10840($8)
	sw $10, 10844($8)
	sw $10, 10848($8)
	sw $10, 10852($8)
	sw $10, 10856($8)
	sw $10, 10860($8)
	sw $10, 10864($8)
	sw $10, 10868($8)
	sw $10, 10872($8)
	sw $10, 10876($8)
	sw $10, 10880($8)
	sw $10, 10884($8)
	sw $10, 10888($8)
	sw $10, 10892($8)
	sw $10, 10896($8)
	
# Parte de baixo da lua
	sw $10, 11356($8)
	sw $10, 11360($8)
	sw $10, 11364($8)
	sw $10, 11368($8)
	sw $10, 11372($8)
	sw $10, 11376($8)
	sw $10, 11380($8)
	sw $10, 11384($8)
	sw $10, 11388($8)
	sw $10, 11392($8)
	sw $10, 11396($8)
	sw $10, 11400($8)
	sw $10, 11404($8)
	sw $10, 11868($8)
	sw $10, 11872($8)
	sw $10, 11876($8)
	sw $10, 11880($8)
	sw $10, 11884($8)
	sw $10, 11888($8)
	sw $10, 11892($8)
	sw $10, 11896($8)
	sw $10, 11900($8)
	sw $10, 11904($8)
	sw $10, 11908($8)
	sw $10, 11912($8)
	sw $10, 11916($8)
		
	sw $10, 12384($8)
	sw $10, 12388($8)
	sw $10, 12392($8)
	sw $10, 12396($8)
	sw $10, 12400($8)
	sw $10, 12404($8)
	sw $10, 12408($8)
	sw $10, 12412($8)
	sw $10, 12416($8)
	sw $10, 12420($8)
	sw $10, 12424($8)
	sw $10, 12900($8)
	sw $10, 12904($8)
	sw $10, 12908($8)
	sw $10, 12912($8)
	sw $10, 12916($8)
	sw $10, 12920($8)
	sw $10, 12924($8)
	sw $10, 12928($8)
	sw $10, 12932($8)
	
	sw $10, 13436($8)
	sw $10, 13432($8)
	sw $10, 13428($8)
	sw $10, 13424($8)
	sw $10, 13420($8)
