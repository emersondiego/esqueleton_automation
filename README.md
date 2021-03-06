Este esqueleto segue como molde para qualquer automação de teste, ou seja, a idéia é que com este projeto qualquer pessoa conseguia montar sua estrutura de teste automatizado.

### Instalação
Você precisa ter o ruby >= `2.2.0` e  `bundle` instalados

Caso não tenham instalado o Ruby e suas dependências podem seguir este tutorial:
[Tutorial](https://github.com/MyPersonalProjects/first-contact)

### Execução

Realizar as chamadas conforme exemplo

* Firefox: FIREFOX=true cucumber

* Chrome: CHROME=true cucumber

* Poltergeist: POLTERGEIST=true cucumber


### Ferramentas
Gems utilizadas:
* [Cucumber](https://cucumber.io/)
* [Capybara](https://github.com/jnicklas/capybara)
* [Selenium-webdriver](https://github.com/seleniumhq/selenium)
* [Faker](https://github.com/stympy/faker)
* [Rspec](http://rspec.info/)
* [Rails](http://rubyonrails.org/)
* [ChromeDriver](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)
* [Poltergeist](https://github.com/SeleniumHQ/selenium/wiki/ChromeDriver)


### Comandos mais utilizados:

```
=Navigating=
    visit('/projects')
    visit(post_comments_path(post))
```

```
=Clicking links and buttons=
    click_link('id-of-link')
    click_link('Link Text')
    click_button('Save')
    click('Link Text') # Click either a link or a button
    click('Button Value')
```
```
=Interacting with forms=
    fill_in('First Name', :with => 'John')
    fill_in('Password', :with => 'Seekrit')
    fill_in('Description', :with => 'Really Long Text…')
    choose('A Radio Button')
    check('A Checkbox')
    uncheck('A Checkbox')
    attach_file('Image', '/path/to/image.jpg')
    select('Option', :from => 'Select Box')
```
```
=scoping=
    within("//li[@id='employee']") do
      fill_in 'Name', :with => 'Jimmy'
    end
    within(:css, "li#employee") do
      fill_in 'Name', :with => 'Jimmy'
    end
    within_fieldset('Employee') do
      fill_in 'Name', :with => 'Jimmy'
    end
    within_table('Employee') do
      fill_in 'Name', :with => 'Jimmy'
    end
```
```
=Querying=
    page.has_xpath?('//table/tr')
    page.has_css?('table tr.foo')
    page.has_content?('foo')
    page.should have_xpath('//table/tr')
    page.should have_css('table tr.foo')
    page.should have_content('foo')
    page.should have_no_content('foo')
    find_field('First Name').value
    find_link('Hello').visible?
    find_button('Send').click
    find('//table/tr').click
    locate("//*[@id='overlay'").find("//h1").click
    all('a').each { |a| a[:href] }
```
```
=Scripting=
    result = page.evaluate_script('4 + 4');
```
```
=Debugging=
    save_and_open_page
```
```
=Asynchronous JavaScript=
    click_link('foo')
    click_link('bar')
    page.should have_content('baz')
    page.should_not have_xpath('//a')
    page.should have_no_xpath('//a')
```
```
=XPath and CSS=
    within(:css, 'ul li') { ... }
    find(:css, 'ul li').text
    locate(:css, 'input#name').value
    Capybara.default_selector = :css
    within('ul li') { ... }
    find('ul li').text
    locate('input#name').value
```

[©](https://github.com/Drelucas/test-bdd-functional)
