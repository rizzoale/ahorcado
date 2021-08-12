class Ahorcado
    def initialize
        @secret_letter = ""
        @partial_word = ""
        @played_letters = []
    end

    def set_secret_letter(secret_letter)
        @secret_letter = secret_letter
        
        @partial_word = secret_letter.dup
        for i in 0 .. secret_letter.size() - 1
          @partial_word[i] = "-"
        end
    end

    def get_secret_word()
        return @secret_letter
    end

    def get_partial_word()
      return @partial_word
    end

    def guess_secret_letter(guess_letter)
      res = false

      for i in 0 .. @secret_letter.size() - 1
          if @secret_letter[i] == guess_letter
            @partial_word[i] = guess_letter
            res = true
          end
      end

      @played_letters.prepend([guess_letter, res])

      return res
    end

    def get_played_letters() 
      return @played_letters
    end
end