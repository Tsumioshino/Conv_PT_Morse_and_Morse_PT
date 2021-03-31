#- [recomendação] nao usar estruturas de dados 
#- [prazo] entregar até 23:59, formato de planilha que vcs ja conhecem
#- [atividade] faça dois programas que traduzam textos. no primeiro programa, o usuário insere um texto em portugues e esse texto é traduzido para código morse. no segundo programa, é feito o inverso; o usuário passa o texto em código morse e este texto é traduzido para portugues. Tabela de código morse:
print 'Insira o texto, em português, para ser convertido para código morse: ' 
digite_text = gets.strip.upcase #TEXTO EM BR
text_in_morse = '' #TEXTO EM MORSE
count = 0 #PARA O WHILE
converted_text = '' #TEXTO EM BR MAS ADAPTADO PARA O MORSE LER CORRETAMENTE 
while digite_text.length > count 
  if digite_text[count] == ' ' #PARA CADA LETRA DO TEXTO BR, SE FOR UM ESPAÇO
    converted_text += digite_text[count] #COLOQUE O ESPAÇO NA STRING
    count += 1 #AUMENTE O CONTADOR PARA ITERAR NA PRÓXIMA LETRA E NÃO DAR LOOP INFINITO
  else
    converted_text += digite_text[count] #COLOQUE A LETRA NA STRING
    converted_text += ' ' #COLOCA UM ESPAÇO PARA QUE O A LETRA ANTES DESSE ESPAÇO SEJA LIDA ISOLADAMENTE PRO MORSE
    count += 1 # //
  end
end
for letter in converted_text.each_char do #LÊ A STRING CHAR POR CHAR E CONVERTE PARA MORSE
  if letter == 'A'
    text_in_morse += '.-'
  elsif letter == 'B'
    text_in_morse += '-...'
  elsif letter == 'C'
    text_in_morse += '-.-.'
  elsif letter == 'D'
    text_in_morse += '-..'
  elsif letter == 'E'
    text_in_morse += '.'
  elsif letter == 'F'
    text_in_morse += '..-.'
  elsif letter == 'G'
    text_in_morse += '--.'
  elsif letter == 'H'
    text_in_morse += '....'
  elsif letter == 'I'
    text_in_morse += '..'
  elsif letter == 'J'
    text_in_morse += '.---'
  elsif letter == 'K'
    text_in_morse += '-.-'
  elsif letter == 'L'
    text_in_morse += '.-..'
  elsif letter == 'M'
    text_in_morse += '--'
  elsif letter == 'N'
    text_in_morse += '-.'
  elsif letter == 'O'
    text_in_morse += '---'
  elsif letter == 'P'
    text_in_morse += '.--.'
  elsif letter == 'Q'
    text_in_morse += '--.-'
  elsif letter == 'R'
    text_in_morse += '.-.'
  elsif letter == 'S'
    text_in_morse += '...'
  elsif letter == 'T'
    text_in_morse += '-'
  elsif letter == 'U'
    text_in_morse += '..-'
  elsif letter == 'V'
    text_in_morse += '...-'
  elsif letter == 'W'
    text_in_morse += '.--'
  elsif letter == 'X'
    text_in_morse += '-..-'
  elsif letter == 'Y'
    text_in_morse += '-.--'
  elsif letter == 'Z'
    text_in_morse += '--..'
  elsif letter == '0'
    text_in_morse += '-----'
  elsif letter == '1'
    text_in_morse += '.----'
  elsif letter == '2'
    text_in_morse += '..---'
  elsif letter == '3'
    text_in_morse += '...--'
  elsif letter == '4'
    text_in_morse += '....-'
  elsif letter == '5'
    text_in_morse += '.....'
  elsif letter == '6'
    text_in_morse += '-....'
  elsif letter == '7'
    text_in_morse += '--...'
  elsif letter == '8'
    text_in_morse += '---..'
  elsif letter == '9'
    text_in_morse += '----.'
  elsif letter == ' '
    text_in_morse += ' '
  elsif letter == '.'
    text_in_morse += '.-.-.-'
  elsif letter == ','
    text_in_morse += '--..--'
  elsif letter == '?'
    text_in_morse += '..--..'
  elsif letter == '='
    text_in_morse += '-...-'
  else
    print 'Caractere inválido inserido no texto!(ಠ_ಠ)Finalizando o programa...'
    exit(1)
  end
end
puts text_in_morse #TEXTO CONVERTIDO
puts '-'*25 #LINHA PARA SEPARAR O PROGRAMA
print "Insira o texto, em morse, para ser convertido para código morse: (lembre-se dos espaços para diferenciar cada letra!) " 
digite_text2 = gets.strip #TEXTO EM MORSE
digite_text2 += ' ' #ESSE ESPAÇO VAI SER IMPORTANTE PARA QUE NA LINHA 116 A ÚLTIMA LETRA DO TEXTO SEJA CONVERTIDA CORRETAMENTE
text_in_br = '' #TEXTO EM BR
morse = '' #VARIÁVEL PARA SALVAR O CARACTERE DO MORSE
trigger = 0 #PARA O WHILE E ITERAR SOBRE O TEXTO
while digite_text2.length > trigger do
  if digite_text2[trigger] == ' ' #SE NO CÓDIGO MORSE O ALGARISMO DESSA POSIÇÃO SER UM ESPAÇO
    if digite_text2[trigger - 1] == ' ' #SE ESSE CARACTERE FOR UM ESPAÇO E O ANTERIOR TAMBÉM, SIGNIFICA QUE TEM UM ESPAÇO PARA O TEXTO EM PORTUGUÊS
      text_in_br += ' ' #COLOCA O ESPAÇO PARA O TEXTO EM PT
      trigger += 1
    else #SE ESSE CARACTERE FOR UM ESPAÇO E O ANTERIOR NÃO FOR, SIGNIFICA QUE O ANTERIOR É O CÓDIGO MORSE PARA UMA LETRA EM PT
      if morse == '.-'
        text_in_br += 'A'
      elsif morse == '-...'
        text_in_br += 'B'
      elsif morse == '-.-.'
        text_in_br += 'C'
      elsif morse == '-..'
        text_in_br += 'D'
      elsif morse == '.'
        text_in_br += 'E'
      elsif morse == '..-.'
        text_in_br += 'F'
      elsif morse == '--.'
        text_in_br += 'G'
      elsif morse == '....'
        text_in_br += 'H'
      elsif morse == '..'
        text_in_br += 'I'
      elsif morse == '.---'
        text_in_br += 'J'
      elsif morse == '-.-'
        text_in_br += 'K'
      elsif morse == '.-..'
        text_in_br += 'L'
      elsif morse == '--'
        text_in_br += 'M'
      elsif morse == '-.'
        text_in_br += 'N'
      elsif morse == '---'
        text_in_br += 'O'
      elsif morse == '.--.'
        text_in_br += 'P'
      elsif morse == '--.-'
        text_in_br += 'Q'
      elsif morse == '.-.'
        text_in_br += 'R'
      elsif morse == '...'
        text_in_br += 'S'
      elsif morse == '-'
        text_in_br += 'T'
      elsif morse == '..-'
        text_in_br += 'U'
      elsif morse == '...-'
        text_in_br += 'V'
      elsif morse == '.--'
        text_in_br += 'W'
      elsif morse == '-..-'
        text_in_br += 'X'
      elsif morse == '-.--'
        text_in_br += 'Y'
      elsif morse == '--..'
        text_in_br += 'Z'
      elsif morse == '-----'
        text_in_br += '0'
      elsif morse == '.----'
        text_in_br += '1'
      elsif morse == '..---'
        text_in_br += '2'
      elsif morse == '...--'
        text_in_br += '3'
      elsif morse == '....-'
        text_in_br += '4'
      elsif morse == '.....'
        text_in_br += '5'
      elsif morse == '-....'
        text_in_br += '6'
      elsif morse == '--...'
        text_in_br += '7'
      elsif morse == '---..'
        text_in_br += '8'
      elsif morse == '----.'
        text_in_br += '9'
      elsif morse == '.-.-.-'
        text_in_br += '.'
      elsif morse == '--..--'
        text_in_br += ','
      elsif morse == '..--..'
        text_in_br += '?'
      elsif morse == '-...-'
        text_in_br += '='
      else
        print morse, 'Caractere inválido inserido no texto!(ಠ_ಠ)Finalizando o programa...'
        exit(1)
      end
      morse = '' #RESETA A VARIÁVEL MORSE PARA QUE UM NOVO CÓDIGO MORSE SEJA COLOCADO E, POSTERIORMENTE, CONVERTIDO PARA PT
      trigger += 1
    end
  else
    morse += digite_text2[trigger] #VAI CONCATENANDO OS CARACTERES MORSE (. E -) ATÉ QUE APAREÇA UM ESPAÇO E ELA SEJA RESETADA+
    trigger += 1
  end
end
print text_in_br