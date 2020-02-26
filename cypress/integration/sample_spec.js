describe('Scotiabank New Navigation Sample', function () {

    it('Login link deprecated login',() => {
        cy.visit('https://www.scotiabank.cl/login/empresas/?nocache=true')
      })

      it('Check new login url', () => {
        cy.url().should('eq', 'https://appservtrx.scotiabank.cl/portalempresas/login')
      })
      

      it('Credentials input', () => {
        cy.get('[id=INP_COMMON_RUT_CLIENTRUT]').type('761403702')
        cy.get('[id=INP_COMMON_RUT_USERRUT]').type('9930702-1')
        cy.get('[id=INP_COMMON_PASSWORD_PASSWORD]').type('eclass2018')
      })

      it('Submit credentials', () => {
        cy.window().get('#BTN_COMMON_LOGIN').click()
      })

      it('Verify we are in', () => {
        // cy.window().get('span[class="ClientSelector_client-key__2hrqY"]',{timeout: 12000})
        cy.window().get('span[class="ClientSelector_client-key__2hrqY"]') 
            .should('exist')
      })
      
})