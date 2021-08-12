When("inicio la aplicacion") do
    visit '/'
end

Then("el titulo es {string}") do |string|
    expect(page).to have_css "h1", text: string
end

Then("la incognita es {string}") do |string|
    expect(page).to have_css "div#incognita", text: string
end

When("ingreso {string}") do |string|
    fill_in("user_guess_letter", :with => string)
    click_button "¡Adivinar!"    
end

Then("en las letras incorrectas esta {string}") do |string|
    expect(page).to have_css "div#letras_arriesgadas0", text: string
end

Then("muestra mensaje {string}") do |string|
    expect(page).to have_css "div#mensaje_final", text: string
  end