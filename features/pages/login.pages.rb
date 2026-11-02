class LoginPage < SitePrism::Page

set_url ''
element :emailButton, :css, '[data-test-id="home-hero-sign-in-cta"]'
element :emailField, :id, '_R_e3pptiejj35656j6_'
element :passwordField, :id, '_R_1lpptiejj35656j6_'
element :submitButton, :xpath, "//button[normalize-space()='Entrar']"

  def userLogin(email, senha)
  emailButton.click
  emailField.set CREDENTIAL[:user][:email]
  passwordField.set CREDENTIAL[:user][:password]
  submitButton.click
end
end
