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
	jal arvore1
	
	lui $4, 0x1001
	add $5 $0 $0
	add $6 $0 $0
	jal tronco
	
	lui $4, 0x1001
	add $5 $0 $0
	jal torreCastelo
	
	lui $4, 0x1001
	add $5 $0 $0
	add $6, $0, $0
	add $7, $0, $0
	jal castelo
	
	#lui $4, 0x1001
	#add $5 $0 $0
	#jal escadaria
	
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
	jal CriacaoChao
	
	lui $4, 0x1001
	add $5 $0 $0
	jal portao
	
	#lui $4, 0x1001
	#add $5 $0 $0
	#add $6, $0, $0
	#add $7 $0 $0
	#jal NPC
	
	#lui $4, 0x1001
	#add $5 $0 $0
	#add $6, $0, $0
	#add $7 $0 $0
	#add $8 $0 $0
	#add $9, $0, $0
	#add $10, $0, $0
	#jal desenharBelmont
	
	#lui $4, 0x1001
	#add $5 $0 $0
	#add $6 $0 $0
	#add $7 $0 $0
	#jal NPC
	
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


# Criação do Cenário 1
#========================================
funcaoCenario:
	addi $22 $4 32768
	
# Laço para geração de cenário, preencherá todos os pixels	
Cenario: 
	beq $6, $0, fimCenario
	
	sw $5, 0($4)
	sw $5 0($22)
	addi $6, $6, -1
	addi $4, $4, 4
	addi $22 $22 4
	j Cenario
	
fimCenario:
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
	sw $5, 17036($4)
	sw $5, 14264($4)
	sw $5, 17720($4)
	sw $5, 20720($4)
	sw $5, 22060($4)
	
	sw $5, 2700($22)
	sw $5, 2920($22)
	sw $5, 3004($22)
	sw $5, 4380($22)
	sw $5, 5328($22)
	sw $5, 7720($22)
	sw $5, 8680($22)
	sw $5, 11200($22)
	sw $5, 12020($22)
	sw $5, 12108($22)
	sw $5, 13300($22)
	sw $5, 17036($22)
	sw $5, 14264($22)
	sw $5, 17720($22)
	sw $5, 20720($22)
	sw $5, 22060($22)

	
	
	#sw $5, 2700($4)
	#sw $5, 2920($4)
	#sw $5, 3004($4)
	#sw $5, 4380($4)
	#sw $5, 5328($4)
	#sw $5, 7720($4)
	#sw $5, 8680($4)
	#sw $5, 11200($4)
	#sw $5, 12020($4)
	#sw $5, 12108($4)
	#sw $5, 13300($4)
	##sw $5, 17020($4)
	#sw $5, 17840($4)
	#sw $5, 17720($4)
	#sw $5, 20720($4)
	#sw $5, 22060($4)
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
arvore1:
	ori $5, 0x000000
	addi $22 $4 32768
	
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
	
	sw $5, 11888($22)
	sw $5, 11376($22)
	sw $5, 10864($22)
	sw $5, 10860($22)
	sw $5, 10348($22)
	sw $5, 10344($22)
	sw $5, 11892($22)
	sw $5, 11896($22)
	sw $5, 11384($22)
	sw $5, 11388($22)
	sw $5, 10876($22)
	sw $5, 10364($22)
	sw $5, 10880($22)
	sw $5, 10372($22)
	sw $5, 10376($22)
	sw $5, 9864($22)
	sw $5, 9352($22)
	sw $5, 9852($22)
	sw $5, 9848($22)
	sw $5, 9336($22)

	sw $5, 12404($22)
	sw $5, 12408($22)
	sw $5, 12916($22)
	sw $5, 12920($22)
	sw $5, 13428($22)
	sw $5, 13432($22)

	


# TRONCO
tronco:
	addi $4, $4, 13940
	addi $22 $4 32768
	
	ori $5, 0x000000
	
	addi $6, $0, 30

pintandoTronco:
	beq $6, $0, fimTronco
	
	sw $5, 0($4)
	sw $5, 4($4)
	sw $5, 0($22)
	sw $5, 4($22)
	addi $6, $6, -1
	addi $4, $4, 512
	addi $22, $22, 512
	j pintandoTronco
	
fimTronco:
	jr $31
	
	
	
# ================================
# Castelo
torreCastelo:
	    # Endereço base do bitmap display
	addi $4, $4, 10600     # Define o deslocamento inicial da torre
	addi $22 $4 32768
	ori $5, $0, 0xFF404040 # Define a cor cinza escuro
	addi $11, $0, 18       # Variável de controle da largura da torre
	addi $13, $0, 36       # Altura da torre

torre1altura: 
	beq $13, $0, fimTorre1altura
	addi $11, $0, 18       # Reinicia a largura da linha

torre1largura:
	beq $11, $0, fimTorre1largura
	sw $5, 0($4)           # Escreve no endereço apontado por $4
	sw $5, 0($22)
	addi $4, $4, 4         # Avança para o próximo pixel
	addi $22, $22, 4
	addi $11, $11, -1      # Decrementa a largura
	j torre1largura

fimTorre1largura:
	sub $4, $4, 72         # Retorna ao início da linha atual
	sub $22, $22, 72
	addi $4, $4, 512       # Salta para a próxima linha
	addi $22, $22, 512
	addi $13, $13, -1      # Decrementa a altura
	j torre1altura

fimTorre1altura:

	jr $31

# ==============================
# Castelo de fato
castelo:
	# Endereço base do bitmap display
	addi $4, $4, 17840     # Define o deslocamento inicial da torre
	addi $22 $4 32768
	ori $5, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 20   # Variável de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 20   # Reinicia a largura da linha

torre2largura:
	beq $11, $0, fimTorre2largura
	sw $5, 0($4)          # Escreve no endereço apontado por $4
	sw $5, 0($22)
	addi $4, $4, 4         # Avança para o próximo pixel
	addi $22, $22, 4
	addi $11, $11, -1      # Decrementa a largura
	j torre2largura

fimTorre2largura:
	sub $4, $4, 80         # Retorna ao início da linha atual
	sub $22, $22, 80
	addi $4, $4, 512       # Salta para a próxima linha
	addi $22, $22, 512
	addi $12, $12, -1      # Decrementa a altura
	j torre2altura

fimTorre2altura:
	jr $31
	


fimCastelo:
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
	addi $22 $4 32768
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
	
	sw $5, 13172($22)
	sw $5, 13176($22)
	sw $5, 13180($22)

	sw $5, 19348($22)
	sw $5, 19352($22)
	sw $5, 19356($22)

	sw $5, 25460($22)
	sw $5, 25464($22)
	sw $5, 25468($22)

	
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
CriacaoChao:
	ori $5, 0x122E00

	addi $21, $0, 1024
Chao:	
	beq $21, $0, fimChao
	
	sw $5, 28672($4)
	addi $21, $21, -1
	addi $4, $4, 4
	j Chao

fimChao:
	jr $31
	
# Portão do Castelo
#========================================

portao:
	addi $22 $4 32768
	ori $5, 0x2b2929
	
	sw $5, 24016($4)
	sw $5, 24020($4)
	sw $5, 24024($4)
	sw $5, 24028($4)
	sw $5, 24032($4)
	sw $5, 24036($4)
	
	sw $5, 24016($22)
	sw $5, 24020($22)
	sw $5, 24024($22)
	sw $5, 24028($22)
	sw $5, 24032($22)
	sw $5, 24036($22)


	#sw $5, 24524($4)
	
basePortao:
	addi $4, $4, 24520
	addi $22 $4 32768
	
	ori $5, 0x000000
	
	addi $6, $0, 9

pintandoPortao:
	beq $6, $0, fimPortao
	
	sw $5, 0($4)
	sw $5, 4($4)
	sw $5, 8($4)
	sw $5, 12($4)
	sw $5, 16($4)
	sw $5, 20($4)
	sw $5, 24($4)
	sw $5, 28($4)
	sw $5, 32($4)
	sw $5, 36($4)
	
	sw $5, 0($22)
	sw $5, 4($22)
	sw $5, 8($22)
	sw $5, 12($22)
	sw $5, 16($22)
	sw $5, 20($22)
	sw $5, 24($22)
	sw $5, 28($22)
	sw $5, 32($22)
	sw $5, 36($22)

	addi $6, $6, -1
	addi $4, $4, 512
	addi $22, $22, 512
	j pintandoPortao
	
fimPortao:
	jr $31

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
      #addi $9, $0, 's'
      addi $10, $0, 'w'
      
for2:       	
      lw $18, 0($17)
      beq $18, $0, cont
      lw $19, 4($17)
      
      beq $19, $20, fim
      beq $19, $7, esq
      beq $19, $8, dir
      #beq $19, $9, baixo2
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
      
cima:  
	addi $3 $3 -4096 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 4608 # pode mudar
	li $22 8 # pode mudar
laco_cima_1:
	li $23 7 # pode mudar
laco_cima_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_cima_2
	
	addi $24 $24 -28 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_cima_1

	jal timerPulo

	addi $27, $0, 2	
baixo:  
	beq $27, $0, cont
	
	addi $3 $3 2048 # pode mudar
	jal desenharBelmont
	
	addi $24 $4 -2048 # pode mudar
	li $22 4 # pode mudar
laco_baixo_1:
	li $23 7 # pode mudar
laco_baixo_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_baixo_2
	
	addi $24 $24 -28 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_baixo_1
	
	addi $27, $27, -1
      j baixo
                 
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
# Timer
timer: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 10000
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
       	
# ================================================
# Timer
timerPulo: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 50000
forT2:  
	beq $16, $0, fimT2
       	nop
       	nop
       	addi $16, $16, -1      
       	j forT2                  
fimT2:  
	addi $29, $29, 4                                                    
       	lw $16, 0($29)          
       	jr $31
