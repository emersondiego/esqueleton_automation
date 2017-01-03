module Panel
  class HomeSite  #< SitePrism::Page
    include Capybara::DSL
    def load_page
      visit 'http://www.ricardoeletro.com.br/'
    end

    def close_popup
      page.find(:css, '#modal .fechar').click
      sleep 2
    end

    def click_login_site
      click_link('Faça o seu login')
    end

    def validade_access_screen_login
      page.find(:css, '#Login .titulo-pagina').text
    end
  end
end

