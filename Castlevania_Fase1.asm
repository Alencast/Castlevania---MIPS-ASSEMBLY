.text
main:
	lui $4, 0x1001
	ori $5, 0x270013
	addi $6, $0, 8192 # Quantidade de pixels na tela
	jal funcaoCenario
	
	lui $4, 0x1001
	ori $5, 0xfffffff
	jal Estrelas

	lui $4, 0x1001
	add $5 $0 $0
	jal Lua
	
	lui $4, 0x1001
	add $5 $0 $0
	jal árvore1
	
	lui $4, 0x1001
	add $5 $0 $0
	jal torreCastelo
	
	lui $4, 0x1001
	add $5 $0 $0
	jal castelo
	
	lui $4, 0x1001
	add $5 $0 $0
	jal escadaria
	
	lui $4, 0x1001
	add $5 $0 $0
	jal PilaresTorre
	
	lui $4, 0x1001
	add $5 $0 $0
	jal SombrasTorre
	
	lui $4, 0x1001
	add $5 $0 $0
	jal PilaresCastelo
	
	lui $4, 0x1001
	add $5 $0 $0
	jal CriaçãoChão
	
	lui $4, 0x1001
	add $5 $0 $0
	jal portão
	
	lui $4, 0x1001
	add $5 $0 $0
	add $6, $0, $0
	jal desenharNPC
	
	#lui $4, 0x1001
	#add $5 $0 $0
	#add $6 $0 $0
	#add $7 $0 $0
	#jal desenharNPC



# Criação do Cenário 1
#========================================
funcaoCenario:
	addi $22 $4 32768
	
# Laço para geração de cenário, preencherá todos os pixels	
Cenário: 
	beq $6, $0, fimCenário
	
	sw $5, 0($4)
	sw $5 0($22)
	addi $6, $6, -1
	addi $4, $4, 4
	addi $22 $22 4
	j Cenário
	
fimCenário:
	jr $31

# Criação de estrelas
#========================================
Estrelas:
	addi $22 $4 32768
	
	sw $5, 2700($4)
	sw $5, 2920($4)
	sw $5, 3004($4)
	sw $5, 4380($4)
	sw $5, 5328($4)
	sw $5, 7720($4)
	sw $5, 8680($4)
	sw $5, 11200($4)
	sw $5, 12020($4)
	sw $5, 12108($4)
	sw $5, 13300($4)
	sw $5, 17020($4)
	sw $5, 17840($4)
	sw $5, 17720($4)
	sw $5, 20720($4)
	sw $5, 22060($4)
	
	sw $5, 2700($4)
	sw $5, 2920($4)
	sw $5, 3004($4)
	sw $5, 4380($4)
	sw $5, 5328($4)
	sw $5, 7720($4)
	sw $5, 8680($4)
	sw $5, 11200($4)
	sw $5, 12020($4)
	sw $5, 12108($4)
	sw $5, 13300($4)
	sw $5, 17020($4)
	sw $5, 17840($4)
	sw $5, 17720($4)
	sw $5, 20720($4)
	sw $5, 22060($4)
fimEstrela:
	jr $31
	
# Fazendo a lua (PIXEL POR PIXEL)
#========================================
# Comecei fazendo as bordas, os "blocos" de código que estão maiores
# São os que preenchem a lua

# Parte de cima da Lua
Lua:
	#ori $14, 0x000000 para fazer borda
	ori $5, 0xd1001f
	
	sw $5, 6252($4)
	sw $5, 6256($4)
	sw $5, 6260($4)
	sw $5, 6264($4)
	sw $5, 6268($4)
	
	sw $5, 6756($4)
	sw $5, 6760($4)
	sw $5, 6764($4)
	sw $5, 6768($4)
	sw $5, 6772($4)
	sw $5, 6776($4)
	sw $5, 6780($4)
	sw $5, 6784($4)
	sw $5, 6788($4)

	sw $5, 7268($4)
	sw $5, 7272($4)
	sw $5, 7276($4)
	sw $5, 7280($4)
	sw $5, 7284($4)
	sw $5, 7288($4)
	sw $5, 7292($4)
	sw $5, 7296($4)
	sw $5, 7300($4)
	sw $5, 7304($4)
	
	sw $5, 7772($4)
	sw $5, 7776($4)
	sw $5, 7780($4)
	sw $5, 7784($4)
	sw $5, 7788($4)
	sw $5, 7792($4)
	sw $5, 7796($4)
	sw $5, 7800($4)
	sw $5, 7804($4)
	sw $5, 7808($4)
	sw $5, 7812($4)
	sw $5, 7816($4)
	sw $5, 7820($4)
	sw $5, 8284($4)
	sw $5, 8288($4)
	sw $5, 8292($4)
	sw $5, 8296($4)
	sw $5, 8300($4)
	sw $5, 8304($4)
	sw $5, 8308($4)
	sw $5, 8312($4)
	sw $5, 8316($4)
	sw $5, 8320($4)
	sw $5, 8324($4)
	sw $5, 8328($4)
	sw $5, 8332($4)
	
# Laterais da lua
	sw $5, 8792($4)
	sw $5, 8796($4)
	sw $5, 8800($4)
	sw $5, 8804($4)
	sw $5, 8808($4)
	sw $5, 8812($4)
	sw $5, 8816($4)
	sw $5, 8820($4)
	sw $5, 8824($4)
	sw $5, 8828($4)
	sw $5, 8832($4)
	sw $5, 8836($4)
	sw $5, 8840($4)
	sw $5, 8844($4)
	sw $5, 8848($4)
	
	sw $5, 9304($4)
	sw $5, 9308($4)
	sw $5, 9312($4)
	sw $5, 9316($4)
	sw $5, 9320($4)
	sw $5, 9324($4)
	sw $5, 9328($4)
	sw $5, 9332($4)
	sw $5, 9336($4)
	sw $5, 9340($4)
	sw $5, 9344($4)
	sw $5, 9348($4)
	sw $5, 9352($4)
	sw $5, 9356($4)	
	sw $5, 9360($4)
	
	sw $5, 9816($4)
	sw $5, 9820($4)
	sw $5, 9824($4)
	sw $5, 9828($4)
	sw $5, 9832($4)
	sw $5, 9836($4)
	sw $5, 9840($4)
	sw $5, 9844($4)
	sw $5, 9848($4)
	sw $5, 9852($4)
	sw $5, 9856($4)
	sw $5, 9860($4)
	sw $5, 9864($4)
	sw $5, 9868($4)
	sw $5, 9872($4)
	
	sw $5, 10328($4)
	sw $5, 10332($4)
	sw $5, 10336($4)
	sw $5, 10340($4)
	sw $5, 10344($4)
	sw $5, 10348($4)
	sw $5, 10352($4)
	sw $5, 10356($4)
	sw $5, 10360($4)
	sw $5, 10364($4)
	sw $5, 10368($4)
	sw $5, 10372($4)
	sw $5, 10376($4)
	sw $5, 10380($4)
	sw $5, 10384($4)

	sw $5, 10840($4)
	sw $5, 10844($4)
	sw $5, 10848($4)
	sw $5, 10852($4)
	sw $5, 10856($4)
	sw $5, 10860($4)
	sw $5, 10864($4)
	sw $5, 10868($4)
	sw $5, 10872($4)
	sw $5, 10876($4)
	sw $5, 10880($4)
	sw $5, 10884($4)
	sw $5, 10888($4)
	sw $5, 10892($4)
	sw $5, 10896($4)

# Parte de baixo da lua
	sw $5, 11356($4)
	sw $5, 11360($4)
	sw $5, 11364($4)
	sw $5, 11368($4)
	sw $5, 11372($4)
	sw $5, 11376($4)
	sw $5, 11380($4)
	sw $5, 11384($4)
	sw $5, 11388($4)
	sw $5, 11392($4)
	sw $5, 11396($4)
	sw $5, 11400($4)
	sw $5, 11404($4)
	sw $5, 11868($4)
	sw $5, 11872($4)
	sw $5, 11876($4)
	sw $5, 11880($4)
	sw $5, 11884($4)
	sw $5, 11888($4)
	sw $5, 11892($4)
	sw $5, 11896($4)
	sw $5, 11900($4)
	sw $5, 11904($4)
	sw $5, 11908($4)
	sw $5, 11912($4)
	sw $5, 11916($4)
		
	sw $5, 12384($4)
	sw $5, 12388($4)
	sw $5, 12392($4)
	sw $5, 12396($4)
	sw $5, 12400($4)
	sw $5, 12404($4)
	sw $5, 12408($4)
	sw $5, 12412($4)
	sw $5, 12416($4)
	sw $5, 12420($4)
	sw $5, 12424($4)
	sw $5, 12900($4)
	sw $5, 12904($4)
	sw $5, 12908($4)
	sw $5, 12912($4)
	sw $5, 12916($4)
	sw $5, 12920($4)
	sw $5, 12924($4)
	sw $5, 12928($4)
	sw $5, 12932($4)

	sw $5, 13436($4)
	sw $5, 13432($4)
	sw $5, 13428($4)
	sw $5, 13424($4)
	sw $5, 13420($4)
 	
 	jr $31

# ====================================
# Grande árvore
árvore1:
	ori $5, 0x000000
	
	sw $5, 11888($4)
	sw $5, 11376($4)
	sw $5, 10864($4)
	sw $5, 10860($4)
	sw $5, 10348($4)
	sw $5, 10344($4)
	sw $5, 11892($4)
	sw $5, 11896($4)
	sw $5, 11384($4)
	sw $5, 11388($4)
	sw $5, 10876($4)
	sw $5, 10364($4)
	sw $5, 10880($4)
	sw $5, 10372($4)
	sw $5, 10376($4)
	sw $5, 9864($4)
	sw $5, 9352($4)
	sw $5, 9852($4)
	sw $5, 9848($4)
	sw $5, 9336($4)
	
	sw $5, 12404($4)
	sw $5, 12408($4)
	sw $5, 12916($4)
	sw $5, 12920($4)
	sw $5, 13428($4)
	sw $5, 13432($4)
	sw $5, 13940($4)
	sw $5, 13944($4)
	sw $5, 14452($4)
	sw $5, 14456($4)
	sw $5, 14964($4)
	sw $5, 14968($4)
	sw $5, 15476($4)
	sw $5, 15480($4)
	sw $5, 15988($4)
	sw $5, 15992($4)
	sw $5, 16500($4)
	sw $5, 16504($4)
	sw $5, 17012($4)
	sw $5, 17016($4)
	
	sw $5, 14476($4)
	sw $5, 14988($4)
	sw $5, 15496($4)
	sw $5, 15500($4)
	sw $5, 15504($4)
	sw $5, 16004($4)
	sw $5, 16512($4)
	sw $5, 16516($4)
	sw $5, 17020($4)
	sw $5, 17024($4)
	
	sw $5, 17524($4)
	sw $5, 17528($4)
	sw $5, 18036($4)
	sw $5, 18040($4)
	sw $5, 18548($4)
	sw $5, 18552($4)
	sw $5, 19060($4)
	sw $5, 19064($4)
	sw $5, 19572($4)
	sw $5, 19576($4)
	sw $5, 20084($4)
	sw $5, 20088($4)
	sw $5, 20596($4)
	sw $5, 20600($4)
	sw $5, 21108($4)
	sw $5, 21112($4)
	sw $5, 21620($4)
	sw $5, 21624($4)
	sw $5, 22132($4)
	sw $5, 22136($4)
	sw $5, 22644($4)
	sw $5, 22648($4)
	sw $5, 23156($4)
	sw $5, 23160($4)
	sw $5, 23668($4)
	sw $5, 23672($4)
	sw $5, 24180($4)
	sw $5, 24184($4)
	sw $5, 24696($4)

	jr $31
	
# ================================
# Castelo
torreCastelo:
	    # Endereço base do bitmap display
	addi $4, $4, 10600     # Define o deslocamento inicial da torre
	ori $5, $0, 0xFF404040 # Define a cor cinza escuro
	addi $11, $0, 18       # Variável de controle da largura da torre
	addi $13, $0, 36       # Altura da torre

torre1altura: 
	beq $13, $0, fimTorre1altura
	addi $11, $0, 18       # Reinicia a largura da linha

torre1largura:
	beq $11, $0, fimTorre1largura
	sw $5, 0($4)           # Escreve no endereço apontado por $4
	addi $4, $4, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre1largura

fimTorre1largura:
	sub $4, $4, 72         # Retorna ao início da linha atual
	addi $4, $4, 512       # Salta para a próxima linha
	addi $13, $13, -1      # Decrementa a altura
	j torre1altura

fimTorre1altura:

	jr $31

# ==============================
# Castelo de fato
castelo:
	# Endereço base do bitmap display
	addi $4, $4, 17840     # Define o deslocamento inicial da torre
	ori $5, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24   # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 24   # Reinicia a largura da linha

torre2largura:
	beq $11, $0, fimTorre2largura
	sw $5, 0($4)          # Escreve no endereço apontado por $4
	addi $4, $4, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre2largura

fimTorre2largura:
	sub $4, $4, 96         # Retorna ao início da linha atual
	addi $4, $4, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre2altura

fimTorre2altura:
	jr $31
	
# ====================================
# Escadaria
# Criação da Escadaria
#========================================
escadaria:
        # Endereço base do bitmap display
	addi $4, $4, 17840     # Define o deslocamento inicial da torre
	ori $5, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # Variável de controle da largura da torre
	addi $12, $0, 21      # Altura da torre 17840

torre3altura: 
	beq $12, $0, fimTorre3altura
	addi $11, $0, 24     # Reinicia a largura da linha

torre3largura:
	beq $11, $0, fimTorre3largura
	sw $5, 0($4)          # Escreve no endereço apontado por $4
	addi $4, $4, 4         # Avança para o próximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre3largura

fimTorre3largura:
	sub $4, $4, 88         # Retorna ao início da linha atual
	addi $4, $4, 512       # Salta para a próxima linha
	addi $12, $12, -1      # Decrementa a altura
	j torre3altura

fimTorre3altura:
	jr $31
	
# ==================================================
# Pilares
PilaresTorre:
	ori $5, 0xFF404040
	

	sw $5, 9564($4)
	sw $5, 9568($4)
	sw $5, 9572($4)
	sw $5, 9604($4)
	sw $5, 9608($4)
	sw $5, 9612($4)
	sw $5, 9648($4)
	sw $5, 9652($4)
	sw $5, 9656($4)
	sw $5, 10076($4)
	sw $5, 10080($4)
	sw $5, 10084($4)
	sw $5, 10116($4)
	sw $5, 10120($4)
	sw $5, 10124($4)
	sw $5, 10160($4)
	sw $5, 10164($4)
	sw $5, 10168($4)
	sw $5, 10588($4)
	sw $5, 10592($4)
	sw $5, 10596($4)
	sw $5, 10672($4)
	sw $5, 10676($4)
	sw $5, 10680($4)
	sw $5, 11100($4)
	sw $5, 11104($4)
	sw $5, 11108($4)
	sw $5, 11184($4)
	sw $5, 11188($4)
	sw $5, 11192($4)
	sw $5, 11612($4)
	sw $5, 11616($4)
	sw $5, 11620($4)
	sw $5, 11696($4)
	sw $5, 11700($4)
	sw $5, 11704($4)

	jr $31
	
# ===========================================
# Sombras
SombrasTorre:
	ori $5, 0x242323
	
	sw $5, 13172($4)
	sw $5, 13176($4)
	sw $5, 13180($4)
	
	sw $5, 19348($4)
	sw $5, 19352($4)
	sw $5, 19356($4)
	
	sw $5, 25460($4)
	sw $5, 25464($4)
	sw $5, 25468($4)
	
	jr $31
	
# =========================================
# Pilares torres 2
PilaresCastelo:
	ori $5, 0xFF707070
	
	sw $5, 16832($4)
	sw $5, 16836($4)
	sw $5, 16856($4)
	sw $5, 16860($4)
	sw $5, 16880($4)
	sw $5, 16884($4)
	sw $5, 17392($4)
	sw $5, 17396($4)
	sw $5, 17368($4)
	sw $5, 17372($4)
	sw $5, 17344($4)
	sw $5, 17348($4)
	
	jr $31
	
# Criação do Chão
#========================================
CriaçãoChão:
	ori $5, 0x122E00

	addi $21, $0, 1024
Chão:	
	beq $21, $0, fimChão
	
	sw $5, 28672($4)
	addi $21, $21, -1
	addi $4, $4, 4
	j Chão

fimChão:
	jr $31
	
# Portão do Castelo
#========================================

portão:
	ori $5, 0x2b2929
	
	#sw $5, 25552($4)
	sw $5, 25556($4)
	sw $5, 25560($4)
	sw $5, 25564($4)
	sw $5, 25568($4)
	sw $5, 25572($4)
	sw $5, 26064($4)
	sw $5, 26068($4)
	sw $5, 26072($4)
	sw $5, 26076($4)
	sw $5, 26080($4)
	sw $5, 26084($4)
	sw $5, 26576($4)
	sw $5, 26580($4)
	sw $5, 26584($4)
	sw $5, 26588($4)
	sw $5, 26592($4)
	sw $5, 26596($4)	
	sw $5, 27088($4)
	sw $5, 27092($4)
	sw $5, 27096($4)
	sw $5, 27100($4)
	sw $5, 27104($4)
	sw $5, 27108($4)
	sw $5, 27600($4)
	sw $5, 27604($4)
	sw $5, 27608($4)
	sw $5, 27612($4)
	sw $5, 27616($4)
	sw $5, 27620($4)
	sw $5, 28112($4)
	sw $5, 28116($4)
	sw $5, 28120($4)
	sw $5, 28124($4)
	sw $5, 28128($4)
	sw $5, 28132($4)
	sw $5, 28624($4)
	sw $5, 28628($4)
	sw $5, 28632($4)
	sw $5, 28636($4)
	sw $5, 28640($4)
	sw $5, 28644($4)
	
	#sw $5, 25576($4)
	sw $5, 26088($4)
	sw $5, 26600($4)
	sw $5, 27112($4)
	sw $5, 27624($4)
	sw $5, 28136($4)
	sw $5, 28648($4)
	


# ============================================
# Movimentação DO NPC
#NPC:
#	lui $4, 0x1001
#	addi $4, $4, 25404
#	ori $5, 0xffffff
#	sw $5, 0($4)
#	addi $12, $0, 34
#	
#deslocDir:
#	beq $12, $0, fimDeslocDir
#	sw $5, -4($4)
#	lw $25, 32768($4)
#	sw $25, 0($4)
#	addi $4, $4, -4
#	sw $9, 25404($4)
#	jal timer
#	addi $12, $12, -1
#	j deslocDir
#fimDeslocDir:
#	addi $12, $0, 34
#DeslocEsq:
#	beq $12, $0, fimDeslocEsq
#	sw $5, 4($4)
#	lw $25, 32768($4)
#	sw $25, 0($4)
#	addi $4, $4, 4
#	sw $9, 25404($4)
#	jal timer
#	
#	addi $12, $12, -1
#	j DeslocEsq
#
#fimDeslocEsq:
#	j NPC

# ============================================
# Fazendo o primeiro NPC

#desenharNPC:
#	ori $5, 0xffffff
#	ori $6, 0x3cc28a

	#sw $6, 24892($4)
	#sw $6, 24896($4)
	#sw $6, 24384($4)
	#sw $6, 24388($4)

	#sw $6, 25416($4)
	#sw $6, 25420($4)
	#sw $6, 24908($4)
	#sw $6, 24912($4)

	#sw $6, 26952($4)
	#sw $6, 26956($4)
	#sw $6, 26960($4)
	#sw $6, 26448($4)
	#sw $6, 26452($4)
# =============================
# Função que desenha a caveira
desenharNPC:
	ori $5, 0xffffff
	ori $6, 0x000000
	ori $7, 0x00ff88
	
	addi $4, $4, 25400
	sw $5, 4($4)
	sw $5, 8($4)
	sw $5, 12($4)
	sw $5, 512($4)
	
	sw $5, 520($4)
	sw $6, 524($4)
	sw $5, 528($4)
	sw $6, 532($4)
	
	sw $5, 1024($4)
	sw $5, 1028($4)
	sw $5, 1032($4)
	sw $5, 1036($4)
	sw $5, 1040($4)
	
	sw $5, 1540($4)
	sw $5, 1548($4)
	
	jr $31


# ================================================
# Timer
timer: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 200000
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
