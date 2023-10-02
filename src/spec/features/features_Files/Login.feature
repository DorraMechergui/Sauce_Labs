Feature: Je souhaite tester la page de connexion  a l application Swag Labs
  En tant que utilisateur Je souhaite tester la page de connexion  a l application swag Labs

  @login_casPassant
  Scenario: Je souhaite tester la page de connexion avec un cas passant
    Given Je me connecte a l application Swag Labs
    Then Je me redirige vers la page home "Products"

  @login_casNonPassant
  Scenario: Je souhaite tester la page de connexion avec un cas non passant
    Given Je me connecte a l application Swag Labs avec coordonees non correcte
    Then Un message d erreur s affiche "Epic sadface: Username and password do not match any user in this service"
