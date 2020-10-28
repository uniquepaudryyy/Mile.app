<?xml version="1.0" encoding="UTF-8"?>
<WebServiceRequestEntity>
   <description></description>
   <name>Register</name>
   <tag></tag>
   <elementGuidId>bf95ec44-8f74-4b67-854c-83a7e77af5f2</elementGuidId>
   <selectorMethod>BASIC</selectorMethod>
   <useRalativeImagePath>false</useRalativeImagePath>
   <connectionTimeout>-1</connectionTimeout>
   <followRedirects>false</followRedirects>
   <httpBody></httpBody>
   <httpBodyContent>{
  &quot;text&quot;: &quot;{\n    \&quot;full_name\&quot;: \&quot;${FULL_NAME}\&quot;,\n    \&quot;email\&quot;: \&quot;${EMAIL}\&quot;,\n    \&quot;phone\&quot;: \&quot;${PHONE}\&quot;,\n    \&quot;organization_name\&quot;: \&quot;${ORGANIZATION_NAME}\&quot;\n}&quot;,
  &quot;contentType&quot;: &quot;application/json&quot;,
  &quot;charset&quot;: &quot;UTF-8&quot;
}</httpBodyContent>
   <httpBodyType>text</httpBodyType>
   <httpHeaderProperties>
      <isSelected>true</isSelected>
      <matchCondition>equals</matchCondition>
      <name>Content-Type</name>
      <type>Main</type>
      <value>application/json</value>
   </httpHeaderProperties>
   <maxResponseSize>-1</maxResponseSize>
   <migratedVersion>5.4.1</migratedVersion>
   <restRequestMethod>POST</restRequestMethod>
   <restUrl>https://apidev.mile.app/v1/request_demo</restUrl>
   <serviceType>RESTful</serviceType>
   <soapBody></soapBody>
   <soapHeader></soapHeader>
   <soapRequestMethod></soapRequestMethod>
   <soapServiceEndpoint></soapServiceEndpoint>
   <soapServiceFunction></soapServiceFunction>
   <socketTimeout>-1</socketTimeout>
   <useServiceInfoFromWsdl>true</useServiceInfoFromWsdl>
   <variables>
      <defaultValue>GlobalVariable.FULL_NAME</defaultValue>
      <description></description>
      <id>37743c9c-741b-4206-8d5e-5c1f74c3a938</id>
      <masked>false</masked>
      <name>FULL_NAME</name>
   </variables>
   <variables>
      <defaultValue>GlobalVariable.EMAIL</defaultValue>
      <description></description>
      <id>8c7ecef4-e5b2-4f99-b4a6-f2cdb1f0fdb0</id>
      <masked>false</masked>
      <name>EMAIL</name>
   </variables>
   <variables>
      <defaultValue>GlobalVariable.PHONE</defaultValue>
      <description></description>
      <id>f291dbc0-2fc7-4ccc-a3fa-22056f85f251</id>
      <masked>false</masked>
      <name>PHONE</name>
   </variables>
   <variables>
      <defaultValue>GlobalVariable.ORGANIZATION_NAME</defaultValue>
      <description></description>
      <id>ceefc098-5aab-4441-b8ad-565020164f45</id>
      <masked>false</masked>
      <name>ORGANIZATION_NAME</name>
   </variables>
   <verificationScript>import static org.assertj.core.api.Assertions.*

import com.kms.katalon.core.testobject.RequestObject
import com.kms.katalon.core.testobject.ResponseObject
import com.kms.katalon.core.webservice.keyword.WSBuiltInKeywords as WS
import com.kms.katalon.core.webservice.verification.WSResponseManager

import groovy.json.JsonSlurper
import internal.GlobalVariable as GlobalVariable

RequestObject request = WSResponseManager.getInstance().getCurrentRequest()
ResponseObject response = WSResponseManager.getInstance().getCurrentResponse()</verificationScript>
   <wsdlAddress></wsdlAddress>
</WebServiceRequestEntity>
