class HomePage < SitePrism::Page
  include RSpec::Matchers

  element :userName, :xpath, "(//span[normalize-space()='Lucas Fiori'])[1]"
  element :navBarHome, :xpath, "//span[normalize-space()='Início']"
  element :profilePhoto, :css, "img[src*='profile-displayphoto']"

  def checkLoginSuccessfull
    expect(self).to have_userName(wait: 15)
    expect(userName.text).to eql 'Lucas Fiori'
    expect(self).to have_navBarHome
    expect(self).to have_profilePhoto
  end
end
