require 'sinatra'
require './config'
require './lib/ahorcado'

palabras = [
    "CASA",
    "PANTOMIMA",
    "CONSTITUCION",
    "ONOMATOPEYA",
    "COSMICO"
]

ahorcado = Ahorcado.new
ahorcado.set_secret_letter("CASA")

get '/' do
    @guessed_letters = []
    @partial_word = ahorcado.get_partial_word()
    @mensaje_final = ""
    erb :ahorcado
end

post '/' do
    if params[:user_guess_letter]
        ahorcado.guess_secret_letter params[:user_guess_letter]
    end

    guessed_letters = ahorcado.get_played_letters()
    
    @guessed_letters = []
    if (ahorcado.get_result())
        @mensaje_final = "¡¡¡¡¡Ganaste!!!!!"
    else
        @mensaje_final = ""
    end
    @partial_word = ahorcado.get_partial_word()

    guessed_letters.each_with_index do |l,i|
        if (l[1])
            @guessed_letters.push("#{l[0]} - :)")
        else
            @guessed_letters.push("#{l[0]} - :(")
        end
    end
    erb :ahorcado
end