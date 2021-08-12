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
end