/// <reference types="Cypress" />
import {Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";


Given("que opto por acessar a Home Page do Carteira Global",() =>{
    cy.visit("https://carteiraglobal.com")
})

Then ("o sistema apresenta a home page do Cateira Global - Conheça",() =>{
    cy.title().should('be.equal', 'Carteira Global · Conheça, Compare, Controle e Conquiste')
})

Given ("que aceito os cookies",() =>{
    cy.wait(3000)
    cy.get('#onetrust-accept-btn-handler').click()      // clica no botao aceitar cookies
})

When ("opto por selecionar os tres primeiros fundos de investimento no Ranking de fundo de investimento", ()=>{
    cy.wait(5000)
    cy.get('tbody > :nth-child(1) > :nth-child(1) > input').click()
    cy.get('tbody > :nth-child(2) > :nth-child(1) > input').click()
    cy.get('tbody > :nth-child(3) > :nth-child(1) > input').click()
})

When ("seleciono a opção Comparar",()=>{
    cy.wait(3000)
    cy.get('.title-wrapper > a').invoke('removeAttr', 'target').click()   // comando para abrir a nova aba na mesma aba ja aberta
})

Then ("o sistema apresenta a pagina do carteira global com a comparação dos investimentos",()=>{
    cy.wait(3000)
    cy.title().should('be.equal', 'Carteira Global · Comparador de Investimentos')
})

When ("opto por clicar em entrar para realizar o acesso ao carteira global",()=>{
    cy.get('.c-header__user__buttons > .c-button-outline').click()
})

Then ("o sistema exibe a tela de login em app.carteiraglobal.com",()=>{
    //cy.title().should('be.equal', 'Carteira Global · Entrar')
    cy.get('#user').should('be.visible')
})

Given ("que opto por digitar meu email e senha de acesso e clico em entrar",()=>{
    cy.get('#user').type('userautomacaogit@gmail.com')
    cy.get('#password').type('User@123')
    cy.get('button[type="submit"]').click()
})

Then ("o sistema apresenta a tela de Controle no Carteira Global",()=>{
    cy.wait(8000)
    cy.title().should('be.equal', 'Carteira Global · Conheça')
})

When ("opto por realizar uma busca pelo ativo {string}",(produto)=>{
    cy.get('div:nth-child(1) div:nth-child(1) div:nth-child(2) div:nth-child(1) main.l-app.h-full:nth-child(1)  div:nth-child(1) div:nth-child(1) div:nth-child(1) input[type="text"]:nth-child(1)').type(produto)
    cy.wait(3000)
    cy.get('div.c-lead__info__form__output > ul > li:nth-child(2) > a').invoke('removeAttr','target').click()
})

Then ("o sistema exibe a pagina do conheça com as informações do ativo buscado {string}",(produto)=>{
    cy.wait(10000)
    cy.title().should('be.equal', 'Carteira Global · MGLU3 - MAGAZ LUIZA · Perfil')
})

Then ("o sistema apresenta pagina inicial da home page do Cateira Global Conheça",()=>{
    cy.get('div[class="swiper-slide swiper-slide-active"] p[class="subtitle-slide"]:contains(Conheça)').should('be.visible')
})   

Given ("que opto por navegar para proxima pagina",()=>{
    cy.get('.c-navigation__right > [style="display:inline-block;max-width:100%;overflow:hidden;position:relative;box-sizing:border-box;margin:0"] > [alt="icone de navegação"]').click()
})

Then ("o sistema apresenta a home page do Cateira Global {string}",(pagina)=>{
    cy.wait(3000)
    cy.contains('div[class="swiper-slide swiper-slide-active"] p[class="subtitle-slide"]',(pagina)).should('be.visible')
})

Then ("o sistema apresenta a ultima pagina da home page do Cateira Global {string}",(pagina)=>{
    cy.wait(3000)
    cy.contains('div[class="swiper-slide swiper-slide-active"] p[class="subtitle-slide"]',(pagina)).should('be.visible')
})

When ("opto por selecionar {string} localizado em experimente", (menuExperimente)=>{ 
    cy.contains('div.module-wrapper  div div span',(menuExperimente)).click()
})

Then ("o sistema exibe as opções do componente Conheça",()=>{
    cy.contains('div[class="module-item flex active"] p[class="title"]','Perfil de Ativos').should('be.visible')
})

Given ("que opto por selecionar {string}",(opcaoExperimente)=>{
    cy.contains('div.w-full.flex.flex-col.justify-center p',(opcaoExperimente)).click()
    //cy.contains('div[class="module-item flex active"] p[class="title"]',(opcaoExperimente)).click()
})

Then ("o sistema apresenta o modelo de exemplo view",()=>{
    cy.get('.flex-wrap > .bg-wrapper > .module-loader')
})

Given ("que opto por clicar no botão {string}",(view)=>{
    cy.get('div.wrapper-button a').invoke('removeAttr', 'target').click()
})

Then ("o sistema direciona para a pagina do Carteira Global - Conheça",()=>{
    cy.wait(3000)
    cy.title().should('be.equal', 'Carteira Global · Conheça')
})

Then ("o sistema exibe as opções do componente Compare",()=>{ 
  cy.contains('div.w-full.flex.flex-col.justify-center p','Comparador de Investimentos').should('be.visible')    
})

Then ("o sistema direciona para a pagina do Carteira Global - Comparador de Investimentos",()=>{
    cy.wait(3000)
    cy.title().should('be.equal', 'Carteira Global · Comparador de Investimentos')
})

Then ("o sistema exibe as opções do componente Controle",()=>{
    cy.contains('div.w-full.flex.flex-col.justify-center p','Resumo').should('be.visible')
})

Then ("o sistema direciona para a pagina de login do Carteira Global - Controle",()=>{
    cy.get('#user').should('be.visible')
})

Then ("o sistema exibe as opções do componente Conquiste",()=>{
    cy.contains('div.w-full.flex.flex-col.justify-center p','Simulador de carteiras').should('be.visible')
})

Then ("o sistema direciona para a pagina de login do Carteira Global - Conquiste",()=>{
    cy.get('#user').should('be.visible')
})

Given ("que opto por selecionar a opção {string} localizada no menu superior",(menuSuperior)=>{
    cy.contains('div ul li button.c-button.c-button-link',(menuSuperior)).click()
})

Then ("sistema apresenta o menu do Conheça",()=>{
    cy.contains('ul.c-header__menu li ul li a.c-header__menu__link header','Tesouro Direto').should('be.visible')
})

Given ("que opto por selecionar a opção Tesouro Direto",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(1) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Then ("o sistema apresenta o conheça {string} - Carteira Global",(subMenu)=>{
    cy.wait(5000)
    cy.contains('span.text-step-description',(subMenu)).should('be.visible')
})

Then ("o sistema apresenta o conheça de Fundos de Investimento - Carteira Global",()=>{
    cy.wait(5000)
    cy.contains('div[id="about"] span','Sobre o Fundo de Investimento').should('be.visible')
})

Given ("que opto por selecionar a opção Fundos de Investimento",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(2) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Given ("que opto por selecionar a opção Fundos Imobiliários",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(3) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Given ("que opto por selecionar a opção ETFs",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(4) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Given ("que opto por selecionar a opção Ações",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(5) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Given ("que opto por selecionar a opção BDRs",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(6) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})
Then ("sistema apresenta o menu do Compare",()=>{
    cy.contains('ul.c-header__menu li ul li a.c-header__menu__link header','Comparador de Investimentos').should('be.visible')
})

Given ("que opto por selecionar a opção Comparador de Investimentos",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(1) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Then ("o sistema apresenta a view {string} - Carteira Global",(menuComparador)=>{
    cy.contains('span.font-medium.text-primary',(menuComparador)).should('be.visible')
})

Given ("que opto por selecionar a opção Matriz de Correlação",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(2) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Given ("que opto por selecionar a opção Simulador de Renda Fixa",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(3) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Then ("sistema apresenta o menu do Controle",()=>{
    cy.contains('ul.c-header__menu li ul li a.c-header__menu__link header','Gestão de Carteiras').should('be.visible')
})

Given ("que opto por selecionar a opção Gestão de Carteiras",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(1) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})

Then ("sistema apresenta o menu do Conquiste",()=>{
    cy.contains('ul.c-header__menu li ul li a.c-header__menu__link header','Estudo de Investimento').should('be.visible')
})

Given ("que opto por selecionar a opção Estudo de Investimento",()=>{
    cy.get('ul.c-header__menu li ul li:nth-child(1) a.c-header__menu__link').invoke('removeAttr', 'target').click()
})
Then ("o sistema direciona para a pagina de login do Carteira Global - Estudo de Investimento",()=>{
    cy.wait(3000)
    cy.get('#user').should('be.visible')
})