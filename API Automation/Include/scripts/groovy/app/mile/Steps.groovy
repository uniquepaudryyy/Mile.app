package app.mile

import static com.kms.katalon.core.testobject.ObjectRepository.findTestObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords
import WSBuiltInKeywords as WS
import internal.GlobalVariable
import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject

import cucumber.api.java.en.Given
import cucumber.api.java.en.When
import cucumber.api.java.en.Then
import cucumber.api.java.en.And
import groovy.json.JsonSlurper

public class Steps {

	ResponseObject response
	JsonSlurper slurper = new JsonSlurper()

	//Pre condition
	@Given("I set POST posts api endpoint")
	def apiEndpoint(){}

	//Action
	@When("Set request body")
	def requestBody(){}

	@And("I input full name (.*)")
	def inputFullName(String full_name){
		GlobalVariable.FULL_NAME = full_name
	}

	@And("I input email (.*)")
	def inputEmail(String email){
		GlobalVariable.EMAIL = email
	}

	@And("I input phone (.*)")
	def inputPhone(String phone){
		GlobalVariable.PHONE = phone
	}

	@And("I input organization name (.*)")
	def inputOrganizationName(String organization_name){
		GlobalVariable.ORGANIZATION_NAME = organization_name
	}

	@And("Send POST HTTP request")
	def sendHTTPRequest(){
		response = WS.sendRequest(findTestObject("Register"))
		Map parsedJson = slurper.parseText(response.getResponseBodyContent())
	}

	//Result
	@Then("I receive valid HTTP response code (.*)")
	def receiveHTTPResponse(String http_response_code){
		WS.verifyResponseStatusCode(response, http_response_code as Integer)
	}

	@And("Response body POST is non-empty")
	def responseBody(){
		WS.verifyElementPropertyValue(response, "status", true)
		WS.verifyElementPropertyValue(response, "model.full_name", GlobalVariable.FULL_NAME)
		WS.verifyElementPropertyValue(response, "model.email", GlobalVariable.EMAIL)
		WS.verifyElementPropertyValue(response, "model.phone", GlobalVariable.PHONE)
		WS.verifyElementPropertyValue(response, "model.organization_name", GlobalVariable.ORGANIZATION_NAME)
	}

	@And("Warning notification appeared (.*)")
	def warningNotification(String notification){
		WS.verifyElementPropertyValue(response, "status", false)
		WS.verifyElementPropertyValue(response, "message", notification)
	}
}

