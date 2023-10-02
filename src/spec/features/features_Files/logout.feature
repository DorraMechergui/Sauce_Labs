Feature: Je souhaite tester la page de le deconnexion  a l application Swag Labs
  En tant que utilisateur Je souhaite tester la page de deconnexion de l application Swag Labs
  
  /*Background: */

  @logout
  Scenario: Je souhaite tester la page de deconnexion
    Given Je me connecte a l application Swag Labs
    When Je clique sur menue burger
    When Je clique sur le bouton logout
    Then Je me redirige vers la page de connexion "https://www.saucedemo.com/"
