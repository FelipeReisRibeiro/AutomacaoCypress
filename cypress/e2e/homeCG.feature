Feature: Testar as funcionalidades da home page do carteira global

@ComparaçãoHomePage
Scenario: Acessar a home page do carteira global e realizar uma comparação de investimentos
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por selecionar os tres primeiros fundos de investimento no Ranking de fundo de investimento
When seleciono a opção Comparar
Then o sistema apresenta a pagina do carteira global com a comparação dos investimentos


@LoginHomePage
Scenario: Acessar a home page e efetuar um login
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies 
When opto por clicar em entrar para realizar o acesso ao carteira global
Then o sistema exibe a tela de login em app.carteiraglobal.com
Given que opto por digitar meu email e senha de acesso e clico em entrar
Then o sistema apresenta a tela de Controle no Carteira Global


@ConheçaUmAtivo
Scenario: Acessar a home page e realizar uma busca para conhecer um ativo
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por realizar uma busca pelo ativo 'MGLU3 MAGAZ LUIZA'
Then o sistema exibe a pagina do conheça com as informações do ativo buscado "MGLU3"
	
	
@NavegarComponentes
Scenario: Acessar a home page e navegar pela apresentação dos componentes
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta pagina inicial da home page do Cateira Global Conheça
Given que aceito os cookies
Given que opto por navegar para proxima pagina
Then o sistema apresenta a home page do Cateira Global "Compare"
Given que opto por navegar para proxima pagina
Then o sistema apresenta a home page do Cateira Global "Controle"
Given que opto por navegar para proxima pagina
Then o sistema apresenta a ultima pagina da home page do Cateira Global "Conquiste"
 
 
@ExperimenteConheça
Scenario: Acessar a home page e acessar os menus do conheça exibidos em experimente e visualizar o conheça do carteira global
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por selecionar "Conheça" localizado em experimente
Then o sistema exibe as opções do componente Conheça
Given que opto por selecionar "Perfil de Ativos"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Trading"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Eventos Corporativos"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Contabilidade"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Portfólio de Fundos e FII"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Lâmina de Fundos"
Then o sistema apresenta o modelo de exemplo view
Given que opto por clicar no botão "Acessar Conheça"
Then o sistema direciona para a pagina do Carteira Global - Conheça
	
@ExperimenteCompare
Scenario: Acessar a home page e acessar os menus do Compare exibidos em experimente e visualizar o comparador de investimentos
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por selecionar "Compare" localizado em experimente
Then o sistema exibe as opções do componente Compare
Given que opto por selecionar "Comparador de Investimentos"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Matriz de Correlação"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Comparador de Renda Fixa"
Then o sistema apresenta o modelo de exemplo view
Given que opto por clicar no botão "Acessar Compare"
Then o sistema direciona para a pagina do Carteira Global - Comparador de Investimentos

@ExperimenteControle
Scenario: Acessar a home page e acessar os menus do Controle exibidos em experimente 
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por selecionar "Controle" localizado em experimente
Then o sistema exibe as opções do componente Controle
Given que opto por selecionar "Resumo"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Posição"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Evolução"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Performance"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Financeiro"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Risco"
Then o sistema apresenta o modelo de exemplo view
Given que opto por clicar no botão "Acessar Controle"
Then o sistema direciona para a pagina de login do Carteira Global - Controle
  
@ExperimenteConquiste
Scenario: Acessar a home page e acessar os menus do Conquiste exibidos em experimente
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
When opto por selecionar "Conquiste" localizado em experimente
Then o sistema exibe as opções do componente Conquiste
Given que opto por selecionar "Simulador de carteiras"
Then o sistema apresenta o modelo de exemplo view
Given que opto por selecionar "Estudos de Investimento"
Then o sistema apresenta o modelo de exemplo view 
Given que opto por selecionar "Comparador de Carteiras"
Then o sistema apresenta o modelo de exemplo view
Given que opto por clicar no botão "Acessar Conquiste"
Then o sistema direciona para a pagina de login do Carteira Global - Conquiste

@ConhecaTesouro
Scenario: Como usuario quero acessar o conheça de tesouro direto localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção Tesouro Direto
Then o sistema apresenta o conheça "Tesouro Direto" - Carteira Global

@ConhecaFundosInvest
Scenario: Como usuario quero acessar o conheça de Fundos de Investimentos localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção Fundos de Investimento
Then o sistema apresenta o conheça "Fundos de Investimento" - Carteira Global

@ConhecaFundosImob
Scenario:  Como usuario quero acessar o conheça de Fundos Imobiliários localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção Fundos Imobiliários
Then o sistema apresenta o conheça "Fundos Imobiliários" - Carteira Global

@ConhecaETFs
Scenario: Como usuario quero acessar o conheça de ETFs localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção ETFs
Then o sistema apresenta o conheça "ETFs" - Carteira Global

@ConhecaAcoes
Scenario: Como usuario quero acessar o conheça de Ações localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção Ações
Then o sistema apresenta o conheça "Ações" - Carteira Global
 
@ConhecaBDR
Scenario: Como usuario quero acessar o conheça de BDRs localizado no menu superior Conheça
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conheça" localizada no menu superior 
Then sistema apresenta o menu do Conheça
Given que opto por selecionar a opção BDRs
Then o sistema apresenta o conheça "BDRs" - Carteira Global
  
@CompareComparador
Scenario: Como usuario quero acessar o Comparador de Investimentos localizado no menu superior Compare
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Compare" localizada no menu superior 
Then sistema apresenta o menu do Compare
Given que opto por selecionar a opção Comparador de Investimentos
Then o sistema apresenta a view "Comparador de Investimentos" - Carteira Global
  
@CompareMatriz
Scenario: Como usuario quero acessar a Matriz de Correlação localizado no menu superior Compare  
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Compare" localizada no menu superior 
Then sistema apresenta o menu do Compare
Given que opto por selecionar a opção Matriz de Correlação
Then o sistema apresenta a view "Matriz de Correlação" - Carteira Global
  
@CompareSimulador
Scenario: Como usuario quero acessar o Simulador de Renda Fixa localizado no menu superior Compare
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Compare" localizada no menu superior 
Then sistema apresenta o menu do Compare
Given que opto por selecionar a opção Simulador de Renda Fixa
Then o sistema apresenta a view "Comparador de Renda Fixa" - Carteira Global
  
@ControleGestao
Scenario: Como usuario quero acessar a Gestão de Carteiras localizado no menu superior Controle
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Controle" localizada no menu superior 
Then sistema apresenta o menu do Controle
Given que opto por selecionar a opção Gestão de Carteiras
Then o sistema direciona para a pagina de login do Carteira Global - Controle
  
     
@ConquisteEstudo
Scenario: Como usuario quero acessar a opção Estudo de investimentos localizado no menu superior Conquiste
Given que opto por acessar a Home Page do Carteira Global
Then o sistema apresenta a home page do Cateira Global - Conheça
Given que aceito os cookies
Given que opto por selecionar a opção "Conquiste" localizada no menu superior 
Then sistema apresenta o menu do Conquiste
Given que opto por selecionar a opção Estudo de Investimento
Then o sistema direciona para a pagina de login do Carteira Global - Estudo de Investimento