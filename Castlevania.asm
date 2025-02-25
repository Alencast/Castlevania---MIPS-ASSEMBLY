.text
init:
	#j init_nivel_2
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
	
main:
	# $4 registrador de parametro
	# $2 registrador de retorno
	# $22, $23, $24, $25 = registradores de operacoes da main
	
	lui $3, 0x1001 # $3 vai guardar a posicao do personagem
	addi $3 $3 24068
	add $16, $0 $0
	jal desenharBelmont
	
	lui $14 0x1001 # $14 vai guardar a posicao do mob
	addi $14 $14 25404
	jal desenharNPC
	
	lui $17, 0xffff # $17 vai guardar a habilitacao do teclado
      addi $7, $0, 'a' # $7 vai guardar a letra 'a'
      addi $8, $0, 'd' # $8 vai guardar a letra 'd'
      addi $9, $0, 'w' # $9 vai guardar a letra 'w'
      addi $10, $0, 32 # 10 vai guardar o espaco
      
for2:       	
      lw $18, 0($17) # $18 vai guardar a verificacao do teclado
      beq $18, $0, cont
      lw $18, 4($17)
      
      beq $18, $10, bater
      beq $18, $7, esq
      beq $18, $8, dir
      beq $18, $9, cima
     
      j cont
      



bater:
	add $4 $3 $0
	jal animacao_bater
	
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
	
	#jal timer
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
	
	#jal timer
      j cont  
      
      
      
      
      
      
cima:  
	li $27 2
laco_cima_principal:
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
	
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	addi $4 $3 20
	jal conferir_mudar_nivel
	bne $2 $0 init_nivel_2
	
	addi $27 $27 -1
	bnez $27 laco_cima_principal

	#addi $27, $0, 2	
	
	
	
	
	
baixo:  
	li $27 4
laco_baixo_principal:
	
	addi $3 $3 2048 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 -2048 # pode mudar
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
	
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	addi $4 $3 20
	jal conferir_mudar_nivel
	bne $2 $0 init_nivel_2
	
	addi $27, $27, -1
	bnez $27 laco_baixo_principal
      #j baixo
      j cont
      
      
      
      
                 
cont: 
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	addi $4 $3 20
	jal conferir_mudar_nivel
	bne $2 $0 init_nivel_2
	
	j for2
	
#=========================================
init_nivel_2:
	lui $4, 0x1001
	ori $5, 0x270013
	addi $6, $0, 8192 # Quantidade de pixels na tela
	jal funcaoCenario_2

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
	
main_nivel_2:
	lui $3, 0x1001
	addi $3 $3 24068
	add $16, $0 $0
	jal desenharBelmont
	
	lui $14 0x1001
	addi $14 $14 25404
	jal desenharNPC
	
	lui $17, 0xffff # $17 vai guardar a habilitacao do teclado
      addi $7, $0, 'a' # $7 vai guardar a letra 'a'
      addi $8, $0, 'd' # $8 vai guardar a letra 'd'
      addi $9, $0, 'w' # $9 vai guardar a letra 'w'
      addi $10, $0, 32 # 10 vai guardar o espaco
      
for2_nivel_2:       	
      lw $18, 0($17) # $18 vai guardar a verificacao do teclado
      beq $18, $0, cont_nivel_2
      lw $18, 4($17)
      
      beq $18, $10, bater_nivel_2
      beq $18, $7, esq_nivel_2
      beq $18, $8, dir_nivel_2
      beq $18, $9, cima_nivel_2
     
      j cont_nivel_2
      



bater_nivel_2:
	add $4 $3 $0
	jal animacao_bater_nivel_2
	
	j cont_nivel_2
      
      
      
      
esq_nivel_2:  
	addi $3 $3 -8 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 24 # pode mudar
	li $22 9 # pode mudar
laco_esq_1_nivel_2:
	li $23 2 # pode mudar
laco_esq_2_nivel_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_esq_2_nivel_2
	
	addi $24 $24 -8 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_esq_1_nivel_2
	
	#jal timer
      j cont_nivel_2 
      
       
        
          
     
dir_nivel_2:	
	addi $3 $3 8 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 -8 # pode mudar
	li $22 9 # pode mudar
laco_dir_1_nivel_2:
	li $23 2 # pode mudar
laco_dir_2_nivel_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_dir_2_nivel_2
	
	addi $24 $24 -8 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_dir_1_nivel_2
	
	#jal timer
      j cont_nivel_2 
      
      
      
      
      
      
cima_nivel_2:  
	li $27 2
laco_cima_principal_nivel_2:
	addi $3 $3 -4096 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 4608 # pode mudar
	li $22 8 # pode mudar
laco_cima_1_nivel_2:
	li $23 7 # pode mudar
laco_cima_2_nivel_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_cima_2_nivel_2
	
	addi $24 $24 -28 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_cima_1_nivel_2
	
	add $4 $21 $0
	jal andar_npc_nivel_2
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	addi $27 $27 -1
	bnez $27 laco_cima_principal_nivel_2

	#addi $27, $0, 2	
	
	
	
	
	
baixo_nivel_2:  
	li $27 4
laco_baixo_principal_nivel_2:
	
	addi $3 $3 2048 # pode mudar
	jal desenharBelmont
	
	addi $24 $3 -2048 # pode mudar
	li $22 4 # pode mudar
laco_baixo_1_nivel_2:
	li $23 7 # pode mudar
laco_baixo_2_nivel_2:
	lw $25 32768($24)
	sw $25 0($24)

	addi $24 $24 4
	addi $23 $23 -1
	bnez $23 laco_baixo_2_nivel_2
	
	addi $24 $24 -28 # pode mudar
	addi $24 $24 512
	add $22 $22 -1
	bnez $22 laco_baixo_1_nivel_2
	
	add $4 $21 $0
	jal andar_npc_nivel_2
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	addi $27, $27, -1
	bnez $27 laco_baixo_principal_nivel_2
      #j baixo
      j cont_nivel_2
      
      
      
      
                 
cont_nivel_2: 
	add $4 $21 $0
	jal andar_npc_nivel_2
	add $21 $2 $0
	
	add $4 $3 $0
	jal conferir_colisao_player
	
	j for2_nivel_2
	

# CriaÃ§Ã£o do CenÃ¡rio 1
#========================================
funcaoCenario:
	addi $22 $4 32768
	
# LaÃ§o para geraÃ§Ã£o de cenÃ¡rio, preencherÃ¡ todos os pixels	
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

# CriaÃ§Ã£o de estrelas
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
# Comecei fazendo as bordas, os "blocos" de cÃ³digo que estÃ£o maiores
# SÃ£o os que preenchem a lua

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
# Grande Ã¡rvore
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
	    # EndereÃ§o base do bitmap display
	addi $4, $4, 10600     # Define o deslocamento inicial da torre
	addi $22 $4 32768
	ori $5, $0, 0xFF404040 # Define a cor cinza escuro
	addi $11, $0, 18       # VariÃ¡vel de controle da largura da torre
	addi $13, $0, 36       # Altura da torre

torre1altura: 
	beq $13, $0, fimTorre1altura
	addi $11, $0, 18       # Reinicia a largura da linha

torre1largura:
	beq $11, $0, fimTorre1largura
	sw $5, 0($4)           # Escreve no endereÃ§o apontado por $4
	sw $5, 0($22)
	addi $4, $4, 4         # AvanÃ§a para o prÃ³ximo pixel
	addi $22, $22, 4
	addi $11, $11, -1      # Decrementa a largura
	j torre1largura

fimTorre1largura:
	sub $4, $4, 72         # Retorna ao inÃ­cio da linha atual
	sub $22, $22, 72
	addi $4, $4, 512       # Salta para a prÃ³xima linha
	addi $22, $22, 512
	addi $13, $13, -1      # Decrementa a altura
	j torre1altura

fimTorre1altura:

	jr $31

# ==============================
# Castelo de fato
castelo:
	# EndereÃ§o base do bitmap display
	addi $4, $4, 17840     # Define o deslocamento inicial da torre
	addi $22 $4 32768
	ori $5, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 20   # VariÃ¡vel de controle da largura da torre
	addi $12, $0, 22      # Altura da torre 17840

torre2altura: 
	beq $12, $0, fimTorre2altura
	addi $11, $0, 20   # Reinicia a largura da linha

torre2largura:
	beq $11, $0, fimTorre2largura
	sw $5, 0($4)          # Escreve no endereÃ§o apontado por $4
	sw $5, 0($22)
	addi $4, $4, 4         # AvanÃ§a para o prÃ³ximo pixel
	addi $22, $22, 4
	addi $11, $11, -1      # Decrementa a largura
	j torre2largura

fimTorre2largura:
	sub $4, $4, 80         # Retorna ao inÃ­cio da linha atual
	sub $22, $22, 80
	addi $4, $4, 512       # Salta para a prÃ³xima linha
	addi $22, $22, 512
	addi $12, $12, -1      # Decrementa a altura
	j torre2altura

fimTorre2altura:
	jr $31
	


fimCastelo:
	jr $31
	
# ====================================
# Escadaria
# CriaÃ§Ã£o da Escadaria
#========================================
escadaria:
        # EndereÃ§o base do bitmap display
	addi $4, $4, 17840     # Define o deslocamento inicial da torre
	ori $5, $0, 0xFF707070  # Define a cor cinza escuro
	addi $11, $0, 24    # VariÃ¡vel de controle da largura da torre
	addi $12, $0, 21      # Altura da torre 17840

torre3altura: 
	beq $12, $0, fimTorre3altura
	addi $11, $0, 24     # Reinicia a largura da linha

torre3largura:
	beq $11, $0, fimTorre3largura
	sw $5, 0($4)          # Escreve no endereÃ§o apontado por $4
	addi $4, $4, 4         # AvanÃ§a para o prÃ³ximo pixel
	addi $11, $11, -1      # Decrementa a largura
	j torre3largura

fimTorre3largura:
	sub $4, $4, 88         # Retorna ao inÃ­cio da linha atual
	addi $4, $4, 512       # Salta para a prÃ³xima linha
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
	
# CriaÃ§Ã£o do ChÃ£o
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
	
# PortÃ£o do Castelo
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
	
	
#=================================================
funcaoCenario_2:	
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
	
	add $8 $14 $0
	jal conferir_colisao_npc
	add $14 $2 $0
	
	add $2 $4 1
	add $2 $2 $0
	
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
	
	add $8 $14 $0
	jal conferir_colisao_npc
	add $14 $2 $0

	add $2 $4 1
	add $2 $2 $0
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)

	jr $31
	
#=======================================================
andar_npc_nivel_2: 
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
	beq $9 $0 npc_direita_nivel_2
	
	addi $14 $14 -4
	jal desenharNPC
	
	addi $10 $14 20
	li $8 4
laco_npc_esquerda_nivel_2:
	
	lw $9 32768($10)
	sw $9 0($10)
	
	addi $10 $10 512
	addi $8 $8 -1
	bnez $8 laco_npc_esquerda_nivel_2
	
	jal timer
	
	add $8 $14 $0
	jal conferir_colisao_npc_nivel_2
	add $14 $2 $0
	
	add $2 $4 1
	add $2 $2 $0
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
npc_direita_nivel_2:

	addi $14 $14 4
	jal desenharNPC
	
	addi $10 $14 -4
	li $8 4
laco_npc_direita_nivel_2:
	
	lw $9 32768($10)
	sw $9 0($10)
	
	addi $10 $10 512
	addi $8 $8 -1
	bnez $8 laco_npc_direita_nivel_2
	
	jal timer
	
	add $8 $14 $0
	jal conferir_colisao_npc_nivel_2
	add $14 $2 $0

	add $2 $4 1
	add $2 $2 $0
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)

	jr $31
	
#==================================================

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
	
	
#=================================================
animacao_bater:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	
	addi $8 $4 2584
	li $9 0xffffff00
	sw $9 0($8)
	
	li $9 0x743000
	li $10 7
laco_bater_indo:
	addi $8 $8 4
	
	sw $9 0($8)
	sw $9 4($8)
	
	addi $8 $8 4
	
	#jal timer
	
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	addi $10 $10 -1
	bnez $10 laco_bater_indo
	
	li $10 15
laco_bater_vindo:
	
	lw $9 32768($8)
	sw $9 0($8)
	
	#jal timer
	
	add $4 $21 $0
	jal andar_npc
	add $21 $2 $0
	
	addi $8 $8 -4
	addi $10 $10 -1
	bnez $10 laco_bater_vindo
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#=================================================
animacao_bater_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $8 0($29)
       	addi $29 $29 -4
       	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	
	addi $8 $4 2584
	li $9 0xffffff00
	sw $9 0($8)
	
	li $9 0x743000
	li $10 7
laco_bater_indo_nivel_2:
	addi $8 $8 4
	
	sw $9 0($8)
	sw $9 4($8)
	
	addi $8 $8 4
	
	#jal timer
	
	add $4 $21 $0
	jal andar_npc_nivel_2
	add $21 $2 $0
	
	addi $10 $10 -1
	bnez $10 laco_bater_indo_nivel_2
	
	li $10 15
laco_bater_vindo_nivel_2:
	
	lw $9 32768($8)
	sw $9 0($8)
	
	#jal timer
	
	add $4 $21 $0
	jal andar_npc_nivel_2
	add $21 $2 $0
	
	addi $8 $8 -4
	addi $10 $10 -1
	bnez $10 laco_bater_vindo_nivel_2
	
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
	
	
#=================================================
conferir_colisao_npc:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $14 0($29)
       	addi $29 $29 -4
       	
	addi $14 $8 -4
	li $9 0xffffff00
	li $10 0x743000
	
	li $11 4
laco_conferir_colisao_npc_1:
	lw $13 0($14)
	beq $13 $9 colidiu_chicote
	beq $13 $10 colidiu_chicote

	addi $14 $14 512
	addi $11 $11 -1
	bnez $11 laco_conferir_colisao_npc_1
	
	add $2 $8 $0

	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31

colidiu_chicote:
	add $14 $8 $0
	li $9 4
laco_apagar_npc1:
	li $10 5
laco_apagar_npc2:
	lw $11 32768($14)
	sw $11 0($14)
	
	addi $14 $14 4
	addi $10 $10 -1
	bnez $10 laco_apagar_npc2
	addi $14 $14 -20
	addi $14 $14 512
	addi $9 $9 -1
	bnez $9 laco_apagar_npc1
	
	addi $2 $8 65536
	
	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
#=================================================
conferir_colisao_npc_nivel_2:
	sw $31 0($29)
       	addi $29 $29 -4
	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	sw $12 0($29)
       	addi $29 $29 -4
       	sw $13 0($29)
       	addi $29 $29 -4
       	sw $14 0($29)
       	addi $29 $29 -4
       	
	addi $14 $8 -4
	li $9 0xffffff00
	li $10 0x743000
	
	li $11 4
laco_conferir_colisao_npc_1_nivel_2:
	lw $13 0($14)
	beq $13 $9 colidiu_chicote_nivel_2
	beq $13 $10 colidiu_chicote_nivel_2

	addi $14 $14 512
	addi $11 $11 -1
	bnez $11 laco_conferir_colisao_npc_1_nivel_2
	
	add $2 $8 $0

	addi $29 $29 4                                                    
       	lw $14 0($29)
	addi $29 $29 4                                                    
       	lw $13 0($29)
	addi $29 $29 4                                                    
       	lw $12 0($29)
	addi $29 $29 4                                                    
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31

colidiu_chicote_nivel_2:
	add $14 $8 $0
	li $9 4
laco_apagar_npc1_nivel_2:
	li $10 5
laco_apagar_npc2_nivel_2:
	lw $11 32768($14)
	sw $11 0($14)
	
	addi $14 $14 4
	addi $10 $10 -1
	bnez $10 laco_apagar_npc2_nivel_2
	addi $14 $14 -20
	addi $14 $14 512
	addi $9 $9 -1
	bnez $9 laco_apagar_npc1_nivel_2
	
	li $4 'V'
	li $2 11
	syscall
	li $4 'O'
	li $2 11
	syscall
	li $4 'C'
	li $2 11
	syscall
	li $4 'E'
	li $2 11
	syscall
	li $4 ' '
	li $2 11
	syscall
	li $4 'G'
	li $2 11
	syscall
	li $4 'A'
	li $2 11
	syscall
	li $4 'N'
	li $2 11
	syscall
	li $4 'H'
	li $2 11
	syscall
	li $4 'O'
	li $2 11
	syscall
	li $4 'U'
	li $2 11
	syscall
	li $4 '\n'
	li $2 11
	syscall
	
	addi $2 $0 10
	syscall
	
#=================================================
conferir_colisao_player:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
	sw $9 0($29)
       	addi $29 $29 -4
       	sw $10 0($29)
       	addi $29 $29 -4
       	sw $11 0($29)
       	addi $29 $29 -4
       	
	li $10 0xffffff
	addi $8 $4 24
	li $9 9
laco_1:
	lw $11 0($8)
	
	beq $11 $10 player_morreu
	
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_1
	
	addi $8 $4 -4
	li $9 9
laco_2:
	lw $11 0($8)
	
	beq $11 $10 player_morreu
	
	addi $8 $8 512
	addi $9 $9 -1
	bnez $9 laco_2
	
	addi $8 $4 4608
	li $9 9
laco_3:
	lw $11 0($8)
	
	beq $11 $10 player_morreu
	
	addi $8 $8 4
	addi $9 $9 -1
	bnez $9 laco_3
	
	addi $29 $29 4                                                   
       	lw $11 0($29)
	addi $29 $29 4                                                    
       	lw $10 0($29)
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
player_morreu:
	li $4 'V'
	li $2 11
	syscall
	li $4 'O'
	li $2 11
	syscall
	li $4 'C'
	li $2 11
	syscall
	li $4 'E'
	li $2 11
	syscall
	li $4 ' '
	li $2 11
	syscall
	li $4 'P'
	li $2 11
	syscall
	li $4 'E'
	li $2 11
	syscall
	li $4 'R'
	li $2 11
	syscall
	li $4 'D'
	li $2 11
	syscall
	li $4 'E'
	li $2 11
	syscall
	li $4 'U'
	li $2 11
	syscall
	li $4 '\n'
	li $2 11
	syscall
	addi $2 $0 10
	syscall
	
#=================================================
conferir_mudar_nivel:
	sw $31 0($29)
       	addi $29 $29 -4
       	sw $8 0($29)
       	addi $29 $29 -4
	sw $9 0($29)
       	addi $29 $29 -4
       	
	lui $8 0x1001
	addi $8 $8 24528
	li $9 4
laco_laco_1:
	beq $4 $8 mudar_de_nivel
	
	addi $4 $4 512
	addi $9 $9 -1
	bnez $9 laco_laco_1
	
	add $2 $0 $0
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	
mudar_de_nivel:

	addi $2 $0 1
	
	addi $29 $29 4                                                    
       	lw $9 0($29)
       	addi $29 $29 4                                                    
       	lw $8 0($29)
       	addi $29 $29 4                                                    
       	lw $31 0($29)
	
	jr $31
	

# ================================================
# Timer
timer: 
	sw $16, 0($29)
       	addi $29, $29, -4
       	addi $16, $0, 70000
forT:  
	beq $16, $0, fimT
       	nop
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
