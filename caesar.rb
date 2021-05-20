def caesar_cipher(string, key)

    ciphered = ''
    
    string.each_char do |char|

      if char =~ /[A-Z]/

         ciphered += ((char.ord - 65 + key) % 26 + 65).chr

             elsif char =~ /[a-z]/

         ciphered += ((char.ord - 97 + key) % 26 + 97).chr

            else
                 ciphered += char

      end

    end

    ciphered

  end

  
  p caesar_cipher("Encrypt This!", 5)