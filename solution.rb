def decode_char(char)
  morse = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  morse[char]
end

puts decode_char('.-')

def decode_word(word)
  letters = word.split
  decoded_word = ''
  letters.each { |letter| decoded_word += decode_char(letter) }
  decoded_word += ' '
end

puts decode_word('-- -.--')

def decode(morse_code)
  words = morse_code.split('  ')
  decoded_morse = ''
  words.each { |word| decoded_morse += decode_word(word) }
  decoded_morse
end

puts decode('-- -.--   -. .- -- .')
puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
