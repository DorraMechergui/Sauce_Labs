Feature: Je souhaite tester la page de connexion  a l application Swag Labs avec plusieurs comptes
  En tant que utilisateur Je souhaite tester la page de connexion  a l application swag Labs avec plusieurs comptes

  @login_outline
  Scenario Outline: Je souhaite tester la page de connexion  avec plusieurs comptes
    Given Je me connecte sur l application Swag Labs
    When Je saisie le username "<username>"
    When Je saisie le password "<password>"
    When je clique sur le bouton login
    Then Je me redirige vers la page home "Products"

    Examples: 
      | username                | password     | 
      | standard_user           | secret_sauce | 
      | problem_user            | secret_sauce | 
      | performance_glitch_user | secret_sauce |
