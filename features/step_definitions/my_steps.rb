When("inicio la aplicacion") do
    visit '/'
end

Then("el titulo es {string}") do |string|
    expect(page).to have_css "h1", text: string
end

Then("la incognita es {string}") do |string|
    expect(page).to have_css "div#incognita", text: string
end