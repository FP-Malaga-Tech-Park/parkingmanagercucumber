package com.hormigo.david.parkingmanager.bdd.steps;

import static org.junit.jupiter.api.Assertions.assertTrue;

import org.openqa.selenium.By;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.hormigo.david.parkingmanager.user.service.UserService;

import io.cucumber.java.BeforeAll;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class showPageCreateUserStep {
  @MockBean
  private UserService userService;
  @Value("${local.server.port}")
  private int port;
  private static ChromeDriver driver;

  @BeforeAll
  public static void prepareWebDriver() {
    System.setProperty("webdriver.chrome.driver", "C:\\ChromeDriver\\chromedriver.exe");
    ChromeOptions options = new ChromeOptions();
    options.addArguments("--remote-allow-origins=*");
    driver = new ChromeDriver(options);
  }

  @Given("un usuario esta en la pagina de ver sorteo")
  public void openHome() {
    driver.get("http://localhost:" + port + "/draw");
  }

  @When("el usuario da click al boton de crear")
  public void clickDrawsButton() {
    driver.findElement(By.id("users-button-create")).click();
  }

  @Then("se muestra el formulario")
  public void navigateToDrawsList() {
    String currentUrl = driver.getCurrentUrl();
    assertTrue(currentUrl.contains("/newDraw"));
  }
}
