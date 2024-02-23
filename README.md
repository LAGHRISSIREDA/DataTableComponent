
# Implementation of a DataTable Component Using Apex Controller with Wrapper Class for SObject Data Retrieval Exercise

******************************************-------------------------------*********************************

# Salesforce Lightning Web Component and Apex Class Creation and Deployment

This guide provides instructions on how to create a Lightning Web Component (LWC) and an Apex class in Salesforce using Salesforce DX (SFDX) in Visual Studio Code, and how to deploy them to your Salesforce org.

## Prerequisites

Before you begin, ensure you have the following installed:

Salesforce CLI
Visual Studio Code
Salesforce Extension Pack for Visual Studio Code

## Setup

### Authenticate Your Salesforce Org:

Use the Salesforce CLI to authenticate your target Salesforce org. Open the terminal in Visual Studio Code and run the following command:

sfdx auth:web:login --setalias YourOrgAlias --instanceurl https://login.salesforce.com

Replace YourOrgAlias with a unique alias for your Salesforce org. If you are working with a Sandbox, replace https://login.salesforce.com with https://test.salesforce.com.

### Create a New SFDX Project:

Run the following command in the terminal to create a new SFDX project:

sfdx force:project:create --projectname YourProjectName

Replace YourProjectName with the name of your project.

### Navigate to Your Project Directory:

cd YourProjectName

## Create a Lightning Web Component

### Generate an LWC:

Run the following command to create a new LWC:

sfdx force:lightning:component:create --type lwc --componentname YourComponentName --outputdir force-app/main/default/lwc

Replace YourComponentName with the name of your new component.

## Create an Apex Class

### Generate an Apex Class:

Run the following command to create a new Apex class:

sfdx force:apex:class:create --classname YourClassName --outputdir force-app/main/default/classes

Replace YourClassName with the name of your new Apex class.

## Deploy to Salesforce

### Deploy Your Project:

To deploy your LWC and Apex class to your Salesforce org, run the following command:

sfdx force:source:deploy --targetusername YourOrgAlias --sourcepath force-app

Replace YourOrgAlias with the alias you set for your Salesforce org during authentication.
