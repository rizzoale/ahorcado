When("inicio la aplicacion") do
    visit '/'
end

Then("el titulo es {string}") do |string|
    expect(page).to have_css "h1", text: string
end
