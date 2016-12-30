module Panel
  class HomeSite < SitePrism::Page
    def load_page
      visit 'http://www.ricardoeletro.com.br/'
    end

    def click_login_site
      page.find(:css, '#modal .fechar').click
      click_link('Faça o seu login')
    end

    def validade_access_screen_login
      page.find(:css, '#Login .titulo-pagina').text
    end
  end
end

