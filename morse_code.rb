# rubocop:disable Metrics/CyclomaticComplexity, Metrics/MethodLength
def decode_char(morse_char)
  case morse_char
  when '.-'
    decoded = 'A'
  when '-...'
    decoded = 'B'
  when '-.-.'
    decoded = 'C'
  when '-..'
    decoded = 'D'
  when '.'
    decoded = 'E'
  when '..-.'
    decoded = 'F'
  when '--.'
    decoded = 'G'
  when '....'
    decoded = 'H'
  when '..'
    decoded = 'I'
  when '.---'
    decoded = 'J'
  when '-.-'
    decoded = 'K'
  when '.-..'
    decoded = 'L'
  when '--'
    decoded = 'M'
  when '-.'
    decoded = 'N'
  when '---'
    decoded = 'O'
  when '.--.'
    decoded = 'P'
  when '--.-'
    decoded = 'Q'
  when '.-.'
    decoded = 'R'
  when '...'
    decoded = 'S'
  when '-'
    decoded = 'T'
  when '..-'
    decoded = 'U'
  when '...-'
    decoded = 'V'
  when '.--'
    decoded = 'W'
  when '-..-'
    decoded = 'X'
  when '-.--'
    decoded = 'Y'
  when '--..'
    decoded = 'Z'
  when ' '
    decoded = ' '
  end
  decoded
end
# rubocop:enable Metrics/CyclomaticComplexity, Metrics/MethodLength

puts decode_char('-..')

def decode_word(morse_word)
  temp = ''
  morse_word.split(/\s/).each do |char|
    decoded = decode_char(char)
    temp += decoded
  end
  temp
end

puts decode_word('-. .- -- .')

def decode(morse_text)
  temp = ''
  result = ''
  morse_text.split('  ').each do |e|
    e.split(/\s/).each do |char|
      decoded = decode_word(char)
      temp += decoded
    end
    result += "#{temp} "
    temp = ''
  end
  result.strip
end

puts decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
