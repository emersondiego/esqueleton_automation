module Panel
  class HomeSite < SitePrism::Page
    def load_page
      visit 'http://www.pontofrio.com.br'
    end

    def click_my_orders
      click_link('Meus Pedidos')
    end

    def validade_access_orders
       page.find(:css, 'section section.loginMain h2').text
    end
  end
end

