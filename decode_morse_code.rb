def decode_char(morse_code)
  morse_code_table = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
  }

  morse_code_table[morse_code] || ''
end

def decode_word(morse_word)
  morse_chars = morse_word.split
  decoded_word = ''

  morse_chars.each do |morse_char|
    decoded_char = decode_char(morse_char)
    decoded_word += decoded_char
  end

  decoded_word
end

def decode(message)
  morse_words = message.split('   ')
  decoded_message = ''

  morse_words.each do |morse_word|
    decoded_word = decode_word(morse_word)
    decoded_message += "#{decoded_word} "
  end

  decoded_message.rstrip
end

message = '.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...'
decoded_message = decode(message)
puts decoded_message
