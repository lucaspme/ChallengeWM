class Login < SitePrism::Page

    include RSpec::Matchers
    set_url ENVIRONMENT['login']

    element :txt_username, 'input#username'
    element :txt_password, 'input#password'
    element :btn_login, '.fa.fa-2x.fa-sign-in'
    element :btn_logoff, '.icon-2x.icon-signout'

    def acesso
      txt_username.set(USERNAME)
      txt_password.set(PASSWORD)
      btn_login.click
    end

    def valida_acesso(msg)
      expect(page).to have_content (msg)
    end

    def realiza_logoff
      btn_logoff.click
    end
end
