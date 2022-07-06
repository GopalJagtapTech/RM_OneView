package stepDefinitions;


import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.support.ui.WebDriverWait;

import java.io.*;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

public class Common {

    public static WebDriver driver;
    public static WebDriverWait wait;
    public String strProjectLoc ;


    public void launch_browser()
    {
        Properties prop = new Properties();
        InputStream input;
        try {
            // load a properties file
            strProjectLoc = System.getProperty("user.dir");
            System.out.println(strProjectLoc + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "config" + File.separator + "config.properties");
            input = new FileInputStream(strProjectLoc + File.separator + "src" + File.separator + "main" + File.separator + "resources" + File.separator + "config" + File.separator + "config.properties");
            prop.load(input);
        } catch (FileNotFoundException e) {
        } catch (IOException e) {
        }

        String strBrowser = prop.getProperty("browser.name");
        String URL = prop.getProperty("App.url");

        if (strBrowser.equals("GC"))
        {
            String chromeDriverLocation=strProjectLoc+"/Drivers/chromedriver.exe";
            System.setProperty("webdriver.chrome.driver",chromeDriverLocation);
            driver= new ChromeDriver();
            wait = new WebDriverWait(driver,30);
            driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
            driver.manage().window().maximize();
            driver.get(URL);
        }

        if (strBrowser.equals("ME"))
        {
            String MEDriverLocation = strProjectLoc + "/Drivers/msedgedriver.exe";
            System.setProperty("webdriver.edge.driver", MEDriverLocation);
            driver = new EdgeDriver();
            wait = new WebDriverWait(driver,30);
            driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
            driver.manage().window().maximize();
            driver.get(URL);
        }

    }


    }


