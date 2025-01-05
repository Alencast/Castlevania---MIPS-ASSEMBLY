.text
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
	addi $11, $0, 18    # Variável de controle da largura da torre
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
	addi $11, $0, 24   # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 24   # Reinicia a largura da linha

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
	ori $13, 0xD1001F
	#ori $14, 0x000000 para fazer borda
	
	sw $13, 6252($8)
	sw $13, 6256($8)
	sw $13, 6260($8)
	sw $13, 6264($8)
	sw $13, 6268($8)
	
	sw $13, 6756($8)
	sw $13, 6760($8)

	sw $13, 6764($8)
	sw $13, 6768($8)
	sw $13, 6772($8)
	sw $13, 6776($8)
	sw $13, 6780($8)

	sw $13, 6784($8)
	sw $13, 6788($8)


	sw $13, 7268($8)
	sw $13, 7272($8)
	sw $13, 7276($8)
	sw $13, 7280($8)
	sw $13, 7284($8)
	sw $13, 7288($8)
	sw $13, 7292($8)
	sw $13, 7296($8)
	sw $13, 7300($8)
	sw $13, 7304($8)
	
	sw $13, 7772($8)
	sw $13, 7776($8)
	sw $13, 7780($8)
	sw $13, 7784($8)
	sw $13, 7788($8)
	sw $13, 7792($8)
	sw $13, 7796($8)
	sw $13, 7800($8)
	sw $13, 7804($8)
	sw $13, 7808($8)
	sw $13, 7812($8)
	sw $13, 7816($8)
	sw $13, 7820($8)
	sw $13, 8284($8)
	sw $13, 8288($8)
	sw $13, 8292($8)
	sw $13, 8296($8)
	sw $13, 8300($8)
	sw $13, 8304($8)
	sw $13, 8308($8)
	sw $13, 8312($8)
	sw $13, 8316($8)
	sw $13, 8320($8)
	sw $13, 8324($8)
	sw $13, 8328($8)
	sw $13, 8332($8)

# Laterais da lua
	sw $13, 8792($8)
	sw $13, 8796($8)
	sw $13, 8800($8)
	sw $13, 8804($8)
	sw $13, 8808($8)
	sw $13, 8812($8)
	sw $13, 8816($8)
	sw $13, 8820($8)
	sw $13, 8824($8)
	sw $13, 8828($8)
	sw $13, 8832($8)
	sw $13, 8836($8)
	sw $13, 8840($8)
	sw $13, 8844($8)
	sw $13, 8848($8)

	sw $13, 9304($8)
	sw $13, 9308($8)
	sw $13, 9312($8)
	sw $13, 9316($8)
	sw $13, 9320($8)
	sw $13, 9324($8)
	sw $13, 9328($8)
	sw $13, 9332($8)
	sw $13, 9336($8)
	sw $13, 9340($8)
	sw $13, 9344($8)
	sw $13, 9348($8)
	sw $13, 9352($8)
	sw $13, 9356($8)	
	sw $13, 9360($8)
	
	sw $13, 9816($8)
	sw $13, 9820($8)
	sw $13, 9824($8)
	sw $13, 9828($8)
	sw $13, 9832($8)
	sw $13, 9836($8)
	sw $13, 9840($8)
	sw $13, 9844($8)
	sw $13, 9848($8)
	sw $13, 9852($8)
	sw $13, 9856($8)
	sw $13, 9860($8)
	sw $13, 9864($8)
	sw $13, 9868($8)
	sw $13, 9872($8)
	
	sw $13, 10328($8)
	sw $13, 10332($8)
	sw $13, 10336($8)
	sw $13, 10340($8)
	sw $13, 10344($8)
	sw $13, 10348($8)
	sw $13, 10352($8)
	sw $13, 10356($8)
	sw $13, 10360($8)
	sw $13, 10364($8)
	sw $13, 10368($8)
	sw $13, 10372($8)
	sw $13, 10376($8)
	sw $13, 10380($8)
	sw $13, 10384($8)
	
	sw $13, 10840($8)
	sw $13, 10844($8)
	sw $13, 10848($8)
	sw $13, 10852($8)
	sw $13, 10856($8)
	sw $13, 10860($8)
	sw $13, 10864($8)
	sw $13, 10868($8)
	sw $13, 10872($8)
	sw $13, 10876($8)
	sw $13, 10880($8)
	sw $13, 10884($8)
	sw $13, 10888($8)
	sw $13, 10892($8)
	sw $13, 10896($8)
	
# Parte de baixo da lua
	sw $13, 11356($8)
	sw $13, 11360($8)
	sw $13, 11364($8)
	sw $13, 11368($8)
	sw $13, 11372($8)
	sw $13, 11376($8)
	sw $13, 11380($8)
	sw $13, 11384($8)
	sw $13, 11388($8)
	sw $13, 11392($8)
	sw $13, 11396($8)
	sw $13, 11400($8)
	sw $13, 11404($8)
	sw $13, 11868($8)
	sw $13, 11872($8)
	sw $13, 11876($8)
	sw $13, 11880($8)
	sw $13, 11884($8)
	sw $13, 11888($8)
	sw $13, 11892($8)
	sw $13, 11896($8)
	sw $13, 11900($8)
	sw $13, 11904($8)
	sw $13, 11908($8)
	sw $13, 11912($8)
	sw $13, 11916($8)
		
	sw $13, 12384($8)
	sw $13, 12388($8)
	sw $13, 12392($8)
	sw $13, 12396($8)
	sw $13, 12400($8)
	sw $13, 12404($8)
	sw $13, 12408($8)
	sw $13, 12412($8)
	sw $13, 12416($8)
	sw $13, 12420($8)
	sw $13, 12424($8)
	sw $13, 12900($8)
	sw $13, 12904($8)
	sw $13, 12908($8)
	sw $13, 12912($8)
	sw $13, 12916($8)
	sw $13, 12920($8)
	sw $13, 12924($8)
	sw $13, 12928($8)
	sw $13, 12932($8)

	sw $13, 13436($8)
	sw $13, 13432($8)
	sw $13, 13428($8)
	sw $13, 13424($8)
	sw $13, 13420($8)

# Detalhando a torre:
#========================================
DetalhesTorre:

# Pilares
	lui $8, 0x1001
	ori $14, 0xFF404040
	ori $17, 0x242323
	ori $18, 0xFF707070
	
	sw $14, 9564($8)
	sw $14, 9568($8)
	sw $14, 9572($8)
	sw $14, 9604($8)
	sw $14, 9608($8)
	sw $14, 9612($8)
	sw $14, 9648($8)
	sw $14, 9652($8)
	sw $14, 9656($8)
	sw $14, 10076($8)
	sw $14, 10080($8)
	sw $14, 10084($8)
	sw $14, 10116($8)
	sw $14, 10120($8)
	sw $14, 10124($8)
	sw $14, 10160($8)
	sw $14, 10164($8)
	sw $14, 10168($8)
	sw $14, 10588($8)
	sw $14, 10592($8)
	sw $14, 10596($8)
	sw $14, 10672($8)
	sw $14, 10676($8)
	sw $14, 10680($8)
	sw $14, 11100($8)
	sw $14, 11104($8)
	sw $14, 11108($8)
	sw $14, 11184($8)
	sw $14, 11188($8)
	sw $14, 11192($8)
	sw $14, 11612($8)
	sw $14, 11616($8)
	sw $14, 11620($8)
	sw $14, 11696($8)
	sw $14, 11700($8)
	sw $14, 11704($8)
	
# Sombras
	sw $17, 13172($8)
	sw $17, 13176($8)
	sw $17, 13180($8)
	
# Pilares 2
	sw $18, 16832($8)
	sw $18, 16836($8)
	sw $18, 16856($8)
	sw $18, 16860($8)
	sw $18, 16880($8)
	sw $18, 16884($8)
	sw $18, 17392($8)
	sw $18, 17396($8)
	sw $18, 17368($8)
	sw $18, 17372($8)
	sw $18, 17344($8)
	sw $18, 17348($8)
	
	sw $17, 19348($8)
	sw $17, 19352($8)
	sw $17, 19356($8)
	
	sw $17, 25460($8)
	sw $17, 25464($8)
	sw $17, 25468($8)
	
	
# Corrigindo chão
#========================================
Chão2:
	lui $8, 0x1001	
	ori $15, 0x122E00
	
	sw $15, 28672($8)
	sw $15, 28676($8)
	sw $15, 28680($8)
	sw $15, 28684($8)
	
# Portão do Castelo
#========================================

portão:
	lui $8, 0x1001
	ori $16, 0x2b2929
	
	sw $16, 25552($8)
	sw $16, 25556($8)
	sw $16, 25560($8)
	sw $16, 25564($8)
	sw $16, 25568($8)
	sw $16, 25572($8)
	sw $16, 26064($8)
	sw $16, 26068($8)
	sw $16, 26072($8)
	sw $16, 26076($8)
	sw $16, 26080($8)
	sw $16, 26084($8)
	sw $16, 26576($8)
	sw $16, 26580($8)
	sw $16, 26584($8)
	sw $16, 26588($8)
	sw $16, 26592($8)
	sw $16, 26596($8)	
	sw $16, 27088($8)
	sw $16, 27092($8)
	sw $16, 27096($8)
	sw $16, 27100($8)
	sw $16, 27104($8)
	sw $16, 27108($8)
	sw $16, 27600($8)
	sw $16, 27604($8)
	sw $16, 27608($8)
	sw $16, 27612($8)
	sw $16, 27616($8)
	sw $16, 27620($8)
	sw $16, 28112($8)
	sw $16, 28116($8)
	sw $16, 28120($8)
	sw $16, 28124($8)
	sw $16, 28128($8)
	sw $16, 28132($8)
	sw $16, 28624($8)
	sw $16, 28628($8)
	sw $16, 28632($8)
	sw $16, 28636($8)
	sw $16, 28640($8)
	sw $16, 28644($8)
	
	sw $16, 25576($8)
	sw $16, 26088($8)
	sw $16, 26600($8)
	sw $16, 27112($8)
	sw $16, 27624($8)
	sw $16, 28136($8)
	sw $16, 28648($8)
	
árvore1:
	lui $8, 0x1001
	ori $19, 0x000000
	
	
	
	sw $19, 11888($8)
	sw $19, 11376($8)
	sw $19, 10864($8)
	sw $19, 10860($8)
	sw $19, 10348($8)
	sw $19, 10344($8)
	sw $19, 11892($8)
	sw $19, 11896($8)
	sw $19, 11384($8)
	sw $19, 11388($8)
	sw $19, 10876($8)
	sw $19, 10364($8)
	sw $19, 10880($8)
	sw $19, 10372($8)
	sw $19, 10376($8)
	sw $19, 9864($8)
	sw $19, 9352($8)
	sw $19, 9852($8)
	sw $19, 9848($8)
	sw $19, 9336($8)
	
	sw $19, 12404($8)
	sw $19, 12408($8)
	sw $19, 12916($8)
	sw $19, 12920($8)
	sw $19, 13428($8)
	sw $19, 13432($8)
	sw $19, 13940($8)
	sw $19, 13944($8)
	sw $19, 14452($8)
	sw $19, 14456($8)
	sw $19, 14964($8)
	sw $19, 14968($8)
	sw $19, 15476($8)
	sw $19, 15480($8)
	sw $19, 15988($8)
	sw $19, 15992($8)
	sw $19, 16500($8)
	sw $19, 16504($8)
	sw $19, 17012($8)
	sw $19, 17016($8)
	
	sw $19, 14476($8)
	sw $19, 14988($8)
	sw $19, 15496($8)
	sw $19, 15500($8)
	sw $19, 15504($8)
	sw $19, 16004($8)
	sw $19, 16512($8)
	sw $19, 16516($8)
	sw $19, 17020($8)
	sw $19, 17024($8)
	
	sw $19, 17524($8)
	sw $19, 17528($8)
	sw $19, 18036($8)
	sw $19, 18040($8)
	sw $19, 18548($8)
	sw $19, 18552($8)
	sw $19, 19060($8)
	sw $19, 19064($8)
	sw $19, 19572($8)
	sw $19, 19576($8)
	sw $19, 20084($8)
	sw $19, 20088($8)
	sw $19, 20596($8)
	sw $19, 20600($8)
	sw $19, 21108($8)
	sw $19, 21112($8)
	sw $19, 21620($8)
	sw $19, 21624($8)
	sw $19, 22132($8)
	sw $19, 22136($8)
	sw $19, 22644($8)
	sw $19, 22648($8)
	sw $19, 23156($8)
	sw $19, 23160($8)
	sw $19, 23668($8)
	sw $19, 23672($8)
	sw $19, 24180($8)
	sw $19, 24184($8)
	sw $19, 24696($8)
