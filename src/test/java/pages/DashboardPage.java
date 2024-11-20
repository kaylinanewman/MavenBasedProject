package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.CommonMethods;
import utils.PageInitializer;

public class DashboardPage extends CommonMethods {


    @FindBy(id="welcome")
    public WebElement welcomeText;

    //con
    public DashboardPage (){
        PageFactory.initElements(driver, this);
    }
}
