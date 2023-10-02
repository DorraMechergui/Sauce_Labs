package com.e2etests.automation.step_definitions;

import org.junit.Assert;

import com.e2etests.automation.page_objects.LoginPage;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginStepDefinition {
private LoginPage loginPage ;
	
	
	public LoginStepDefinition (){
		this.loginPage = new LoginPage();
	}
	
	@Given("Je me connecte a l application Swag Labs")
	public void jeMeConnecteALApplicationSwagLabs(){
		loginPage.login();
		
	}
	
	@Then("Je me rederige vers la page home {string}")
	public void jeMeRederigeVersLaPageHome(String text1) {
		String message1 =LoginPage.titleProducts.getText() ;  
		Assert.assertEquals(message1, text1);
	}


	

	@Given("Je me connecte a l application Swag Labs avec coordonees non correcte")
	public void jeMeConnecteALApplicationSwagLabsAvecCoordoneesNonCorrecte() {
		loginPage.loginNP();  
	}
	@Then("Un message d erreur s affiche {string}")
	public void unMessageDErreurSAffiche(String text2) {
		String message2 =LoginPage.msgError.getText() ;  
		 Assert.assertEquals(message2, text2); 
	}


	
	@Given("Je me connecte sur l application Swag Labs")
	public void jeMeConnecteSurLApplicationSwagLabs() {
		loginPage.loginOutlineConnectToApp();
	}
	@When("Je saisie le username {string}")
	public void jeSaisieLeUsername(String userName) {
		loginPage.fillUsername(userName);
	}
	@When("Je saisie le password {string}")
	public void jeSaisieLePassword(String Password) {
		loginPage.fillPassword(Password);
	}
	@When("je clique sur le bouton login")
	public void jeCliqueSurLeBoutonLogin() {
		loginPage.clickLogin();
	}
	@Then("Je me redirige vers la page home {string}")
	public void jeMeRedirigeVersLaPageHome(String text) {
		String message =LoginPage.titleProducts.getText() ;  
		 Assert.assertEquals(message, text);	
	}



}
