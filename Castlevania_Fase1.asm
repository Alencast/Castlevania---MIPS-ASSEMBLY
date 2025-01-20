.text
main:

# Criação do Cenário 1
#========================================

	lui $8, 0x1001
	addi $22 $8 32768
	ori $9, 0x270013 # Cor do Fundo
	
	addi $20, $0, 8192 # Quantidade de pixels na tela
	
# Laço para geração de cenário, preencherá todos os pixels	
Cenário: 
	beq $20, $0, fimCenário
	
	sw $9, 0($8)
	sw $9 0($22)
	addi $20, $20, -1
	addi $8, $8, 4
	addi $22 $22 4
	j Cenário
	
fimCenário:

# Criação de estrelas
#========================================

	lui $8, 0x1001
	addi $22 $8 32768
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

# Fazendo a lua (PIXEL POR PIXEL)
#========================================
# Comecei fazendo as bordas, os "blocos" de código que estão maiores
# São os que preenchem a lua

# Parte de cima da Lua
	lui $8, 0x1001
	ori $11, 0xD1001F
	#ori $14, 0x000000 para fazer borda
	
	sw $11, 6252($8)
	sw $11, 6256($8)
	sw $11, 6260($8)
	sw $11, 6264($8)
	sw $11, 6268($8)
	
	sw $11, 6756($8)
	sw $11, 6760($8)

	sw $11, 6764($8)
	sw $11, 6768($8)
	sw $11, 6772($8)
	sw $11, 6776($8)
	sw $11, 6780($8)
	
	sw $11, 6784($8)
	sw $11, 6788($8)

	sw $11, 7268($8)
	sw $11, 7272($8)
	sw $11, 7276($8)
	sw $11, 7280($8)
	sw $11, 7284($8)
	sw $11, 7288($8)
	sw $11, 7292($8)
	sw $11, 7296($8)
	sw $11, 7300($8)
	sw $11, 7304($8)
	
	sw $11, 7772($8)
	sw $11, 7776($8)
	sw $11, 7780($8)
	sw $11, 7784($8)
	sw $11, 7788($8)
	sw $11, 7792($8)
	sw $11, 7796($8)
	sw $11, 7800($8)
	sw $11, 7804($8)
	sw $11, 7808($8)
	sw $11, 7812($8)
	sw $11, 7816($8)
	sw $11, 7820($8)
	sw $11, 8284($8)
	sw $11, 8288($8)
	sw $11, 8292($8)
	sw $11, 8296($8)
	sw $11, 8300($8)
	sw $11, 8304($8)
	sw $11, 8308($8)
	sw $11, 8312($8)
	sw $11, 8316($8)
	sw $11, 8320($8)
	sw $11, 8324($8)
	sw $11, 8328($8)
	sw $11, 8332($8)
	
# Laterais da lua
	sw $11, 8792($8)
	sw $11, 8796($8)
	sw $11, 8800($8)
	sw $11, 8804($8)
	sw $11, 8808($8)
	sw $11, 8812($8)
	sw $11, 8816($8)
	sw $11, 8820($8)
	sw $11, 8824($8)
	sw $11, 8828($8)
	sw $11, 8832($8)
	sw $11, 8836($8)
	sw $11, 8840($8)
	sw $11, 8844($8)
	sw $11, 8848($8)
	
	sw $11, 9304($8)
	sw $11, 9308($8)
	sw $11, 9312($8)
	sw $11, 9316($8)
	sw $11, 9320($8)
	sw $11, 9324($8)
	sw $11, 9328($8)
	sw $11, 9332($8)
	sw $11, 9336($8)
	sw $11, 9340($8)
	sw $11, 9344($8)
	sw $11, 9348($8)
	sw $11, 9352($8)
	sw $11, 9356($8)	
	sw $11, 9360($8)
	
	sw $11, 9816($8)
	sw $11, 9820($8)
	sw $11, 9824($8)
	sw $11, 9828($8)
	sw $11, 9832($8)
	sw $11, 9836($8)
	sw $11, 9840($8)
	sw $11, 9844($8)
	sw $11, 9848($8)
	sw $11, 9852($8)
	sw $11, 9856($8)
	sw $11, 9860($8)
	sw $11, 9864($8)
	sw $11, 9868($8)
	sw $11, 9872($8)
	
	sw $11, 10328($8)
	sw $11, 10332($8)
	sw $11, 10336($8)
	sw $11, 10340($8)
	sw $11, 10344($8)
	sw $11, 10348($8)
	sw $11, 10352($8)
	sw $11, 10356($8)
	sw $11, 10360($8)
	sw $11, 10364($8)
	sw $11, 10368($8)
	sw $11, 10372($8)
	sw $11, 10376($8)
	sw $11, 10380($8)
	sw $11, 10384($8)

	sw $11, 10840($8)
	sw $11, 10844($8)
	sw $11, 10848($8)
	sw $11, 10852($8)
	sw $11, 10856($8)
	sw $11, 10860($8)
	sw $11, 10864($8)
	sw $11, 10868($8)
	sw $11, 10872($8)
	sw $11, 10876($8)
	sw $11, 10880($8)
	sw $11, 10884($8)
	sw $11, 10888($8)
	sw $11, 10892($8)
	sw $11, 10896($8)

# Parte de baixo da lua
	sw $11, 11356($8)
	sw $11, 11360($8)
	sw $11, 11364($8)
	sw $11, 11368($8)
	sw $11, 11372($8)
	sw $11, 11376($8)
	sw $11, 11380($8)
	sw $11, 11384($8)
	sw $11, 11388($8)
	sw $11, 11392($8)
	sw $11, 11396($8)
	sw $11, 11400($8)
	sw $11, 11404($8)
	sw $11, 11868($8)
	sw $11, 11872($8)
	sw $11, 11876($8)
	sw $11, 11880($8)
	sw $11, 11884($8)
	sw $11, 11888($8)
	sw $11, 11892($8)
	sw $11, 11896($8)
	sw $11, 11900($8)
	sw $11, 11904($8)
	sw $11, 11908($8)
	sw $11, 11912($8)
	sw $11, 11916($8)
		
	sw $11, 12384($8)
	sw $11, 12388($8)
	sw $11, 12392($8)
	sw $11, 12396($8)
	sw $11, 12400($8)
	sw $11, 12404($8)
	sw $11, 12408($8)
	sw $11, 12412($8)
	sw $11, 12416($8)
	sw $11, 12420($8)
	sw $11, 12424($8)
	sw $11, 12900($8)
	sw $11, 12904($8)
	sw $11, 12908($8)
	sw $11, 12912($8)
	sw $11, 12916($8)
	sw $11, 12920($8)
	sw $11, 12924($8)
	sw $11, 12928($8)
	sw $11, 12932($8)

	sw $11, 13436($8)
	sw $11, 13432($8)
	sw $11, 13428($8)
	sw $11, 13424($8)
	sw $11, 13420($8)
	
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


# Criação do castelo
#========================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 10600     # Define o deslocamento inicial da torre
	ori $12, $0, 0xFF404040  # Define a cor cinza escuro
	addi $11, $0, 18    # Variável de controle da largura da torre
	addi $13, $0, 36       # Altura da torre

torre1altura: 
	beq $13, $0, fimTorre1altura
	addi $11, $0, 18       # Reinicia a largura da linha

torre1largura:
	beq $11, $0, fimTorre1largura
	sw $12, 0($8)          # Escreve no endereço apontado por $8
	addi $8, $8, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre1largura

fimTorre1largura:
	sub $8, $8, 72         # Retorna ao início da linha atual
	addi $8, $8, 512       # Salta para a próxima linha
	addi $13, $13, -1      # Decrementa a altura
	j torre1altura

fimTorre1altura:

# Criação da Torre
#========================================

	lui $8, 0x1001         # Endereço base do bitmap display
	addi $8, $8, 17840     # Define o deslocamento inicial da torre
	ori $13, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24   # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 24   # Reinicia a largura da linha

torre2largura:
	beq $11, $0, fimTorre2largura
	sw $13, 0($8)          # Escreve no endereço apontado por $8
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
	ori $13, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # Variável de controle da largura da torre
	addi $12, $0, 21      # Altura da torre 17840

torre3altura: 
	beq $12, $0, fimTorre3altura
	addi $11, $0, 24     # Reinicia a largura da linha

torre3largura:
	beq $11, $0, fimTorre3largura
	sw $13, 0($8)          # Escreve no endereço apontado por $8
	addi $8, $8, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre3largura

fimTorre3largura:
	sub $8, $8, 88         # Retorna ao início da linha atual
	addi $8, $8, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre3altura

fimTorre3altura:

# Detalhando a torre:
#========================================
DetalhesTorre:

# Pilares
	lui $8, 0x1001
	ori $12, 0xFF404040
	ori $15, 0x242323

	
	
	sw $12, 9564($8)
	sw $12, 9568($8)
	sw $12, 9572($8)
	sw $12, 9604($8)
	sw $12, 9608($8)
	sw $12, 9612($8)
	sw $12, 9648($8)
	sw $12, 9652($8)
	sw $12, 9656($8)
	sw $12, 10076($8)
	sw $12, 10080($8)
	sw $12, 10084($8)
	sw $12, 10116($8)
	sw $12, 10120($8)
	sw $12, 10124($8)
	sw $12, 10160($8)
	sw $12, 10164($8)
	sw $12, 10168($8)
	sw $12, 10588($8)
	sw $12, 10592($8)
	sw $12, 10596($8)
	sw $12, 10672($8)
	sw $12, 10676($8)
	sw $12, 10680($8)
	sw $12, 11100($8)
	sw $12, 11104($8)
	sw $12, 11108($8)
	sw $12, 11184($8)
	sw $12, 11188($8)
	sw $12, 11192($8)
	sw $12, 11612($8)
	sw $12, 11616($8)
	sw $12, 11620($8)
	sw $12, 11696($8)
	sw $12, 11700($8)
	sw $12, 11704($8)
	
# Sombras
	sw $15, 13172($8)
	sw $15, 13176($8)
	sw $15, 13180($8)
	
	sw $15, 19348($8)
	sw $15, 19352($8)
	sw $15, 19356($8)
	
	sw $15, 25460($8)
	sw $15, 25464($8)
	sw $15, 25468($8)
	
# Pilares 2
	sw $13, 16832($8)
	sw $13, 16836($8)
	sw $13, 16856($8)
	sw $13, 16860($8)
	sw $13, 16880($8)
	sw $13, 16884($8)
	sw $13, 17392($8)
	sw $13, 17396($8)
	sw $13, 17368($8)
	sw $13, 17372($8)
	sw $13, 17344($8)
	sw $13, 17348($8)

# Criação do Chão
#========================================

	lui $8, 0x1001
	ori $14, 0x122E00

	addi $21, $0, 1024
Chão:	
	beq $21, $0, fimChão
	
	sw $14, 28672($8)
	addi $21, $21, -1
	addi $8, $8, 4
	j Chão

fimChão:

# Portão do Castelo
#========================================

portão:
	lui $8, 0x1001
	ori $16, 0x2b2929
	
	#sw $16, 25552($8)
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
	
	#sw $16, 25576($8)
	sw $16, 26088($8)
	sw $16, 26600($8)
	sw $16, 27112($8)
	sw $16, 27624($8)
	sw $16, 28136($8)
	sw $16, 28648($8)
	
# ============================================
# Fazendo o primeiro NPC
	
NPC:
	lui $8, 0x1001
	addi $8 $8 25404
	
	sw $10 0($8)
	
	ori $17, 0x3cc28a

	#sw $10, 25404($8) #PIXEL BASEADO
	#sw $9, 25268($8) # Destino
	addi $12, $0, 34
	
deslocDir:
	beq $12, $0, fimDeslocDir
	
	sw $10 -4($8)
	lw $25 32768($8)
	sw $25 0($8)
	
	
	#sw $10, 25404($8)
	#sw $10, -4($8)
	#lw $9, 32768($8)
	addi $8, $8, -4
	sw $9, 25404($8)
	jal timer
	
	addi $12, $12, -1
	j deslocDir
	
fimDeslocDir:
	addi $12, $0, 34
DeslocEsq:
	beq $12, $0, fimDeslocEsq
	
	sw $10 4($8)
	lw $25 32768($8)
	sw $25 0($8)
	
	#sw $10, 25404($8)
	#sw $10, -4($8)
	#lw $9, 32768($8)
	addi $8, $8, 4
	sw $9, 25404($8)
	jal timer
	
	addi $12, $12, -1
	j DeslocEsq

fimDeslocEsq:
	addi $2, $0, 10
	syscall
	
	
# ================================================
# Timer
timer: 
	sw $16, 0($29)
       addi $29, $29, -4
       addi $16, $0, 10000
forT:  beq $16, $0, fimT
       nop
       nop
       addi $16, $16, -1      
       j forT                  
fimT:  addi $29, $29, 4                                                    
       lw $16, 0($29)          
       jr $31
	#sw $10, 25404($8) llalalalalal
	
	#sw $10, 28476($8)
	#sw $10, 28340($8)
	#136 pixels de distancia
	
# REGISTRADORES DAS CORES 

#$9 Cor do fundo
#$10 Estrelas
#$11 Lua
#$12 Torre
#$13 Castelo/Escadaria
#$14 Chão
#$15 Sombras da torre
#$16 Portão
#$17 Chamas do esqueleto
#$19 Árvore
