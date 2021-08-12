require './lib/ahorcado'

describe Ahorcado do

    it "arriesgar letra incorrecta" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter "A"
        expect(ahorcado.guess_secret_letter("B")).to eq false
    end

    it "arriesgar letra correcta" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter "A"
        expect(ahorcado.guess_secret_letter("A")).to eq true
    end

    it "obtener registro de letras jugadas (todas incorrectas)" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter "A"
        ahorcado.guess_secret_letter("B")
        ahorcado.guess_secret_letter("C")
        expect(ahorcado.get_played_letters()).to eq [["C", false], ["B", false]]
    end

    it "obtener palabra secreta" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter("CASA")
        expect(ahorcado.get_secret_word()).to eq "CASA"
    end

    it "obtener palabra parcial" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter("CASA")
        ahorcado.guess_secret_letter("A")
        expect(ahorcado.get_partial_word()).to eq "-A-A"
    end

    it "obtener resultado actual cuando arrancas" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter("CASA")
        expect(ahorcado.get_result()).to eq false
    end

    it "obtener resultado actual mientras jugas" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter("CASA")
        ahorcado.guess_secret_letter("A")
        expect(ahorcado.get_result()).to eq false
    end

    it "obtener resultado actual cuando ganaste" do
        ahorcado = Ahorcado.new
        ahorcado.set_secret_letter("CASA")
        ahorcado.guess_secret_letter("A")
        ahorcado.guess_secret_letter("C")
        ahorcado.guess_secret_letter("S")
        expect(ahorcado.get_result()).to eq true
    end
end