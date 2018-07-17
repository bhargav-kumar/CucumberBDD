package myRunner;

import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions; 
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
	features = "D:\\workspace\\New folder\\CucumberBDDFramework\\src\\main\\java\\features\\tagging.feature",//the path of the feature files
	glue={"stepDefinitions"}, //the path of the step definition files
	format= {"pretty","html:test-output", "json:json_output/cucumber.json", "junit:junit_xml/cucumber.xml"},// to generate different types of reporting
	monochrome = true, // display the console output in a proper readable output
	strict = true,// it will check if any step is not defined in step definition file
	dryRun = true, // to check the mapping is propoer between feature file and step def file
	tags = {"~@SmokeTest" , "~@RegressionTest", "~@End2End"}
	)
public class TestRunner {

}


//ORed : tags = {"@SmokeTest , @RegressionTest"} -- execute all tests tagged as @SmokeTest OR @RegressionTest
//ANDed : tags : {"@SmokeTest" , "@RegressionTest"} -- execute alll tests tagged as @SmokeTest AND @RegressionTest
// ~ will not execute