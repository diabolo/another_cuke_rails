When 'I visit the site' do
  visit root_path
end

Then 'I should be welcomed' do
  expect(page).to have_css '#welcome'
end

