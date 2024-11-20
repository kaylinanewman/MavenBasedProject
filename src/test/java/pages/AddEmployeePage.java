package pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utils.CommonMethods;

import java.nio.channels.Pipe;

public class AddEmployeePage extends CommonMethods {

    //create Object repository
    //keep all the elements of this screen here

@FindBy(id="firstName")
    public WebElement firstnameLocator;

@FindBy(id="middleName")
    public WebElement middlenameLocator;

@FindBy(id="lastName")
    public WebElement lastnameLocator;

@FindBy(id="btnSave")
    public WebElement saveButton;

    //initialize elements

    public AddEmployeePage() {
        PageFactory.initElements(driver, this);
    }

}
