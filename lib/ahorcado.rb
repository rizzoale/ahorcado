class Ahorcado
    def initialize
        @secret_letter = ""
        @played_letters = []
    end

    def set_secret_letter(secret_letter)
        @secret_letter = secret_letter
    end

    def guess_secret_letter(guess_letter)
      res = @secret_letter == guess_letter
      @played_letters.prepend([guess_letter, res])
      return res
    end

    def get_played_letters() 
      return @played_letters
    end
end