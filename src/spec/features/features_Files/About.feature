Feature: Je souhaite tester le bouton about de l application Swag Labs
  En tant que utilisateur Je souhaite m informer sur about de l application Swag Labs

  @about
  Scenario: Je souhaite tester le bouton about
    Given Je me connecte a l application Swag Labs
    When Je clique sur menue burger
    When Je clique sur le bouton about
    Then Je me redirige vers la page about
