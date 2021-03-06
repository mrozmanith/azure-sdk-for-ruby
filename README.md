
# Microsoft Azure SDK for Ruby - Resource Management (preview)
[![Build Status](https://api.travis-ci.org/Azure/azure-sdk-for-ruby.png?branch=master)](https://api.travis-ci.org/Azure/azure-sdk-for-ruby) [![Code Climate](https://codeclimate.com/github/Azure/azure-sdk-for-ruby/badges/gpa.svg)](https://codeclimate.com/github/Azure/azure-sdk-for-ruby)

This project provides a Ruby package for Azure Resource Management (ARM).
If you're looking for Azure Service Management (ASM) please refer to this [repo](https://github.com/Azure/azure-sdk-for-ruby/tree/asm)

Additional info on Azure deployment models [https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/](https://azure.microsoft.com/en-us/documentation/articles/azure-classic-rm/)

## Azure Resource Management (preview)
* [Authorization](https://rubygems.org/gems/azure_mgmt_authorization) Azure Resource Manager role based authorization
* [Batch](https://rubygems.org/gems/azure_mgmt_batch) Azure Batch Management Account & Application operations management
* [CDN](https://rubygems.org/gems/azure_mgmt_cdn) Azure Content Delivery Network
* [Cognitive Services](https://rubygems.org/gems/azure_mgmt_cognitive_services) Azure Cognitive Services Account management
* [Commerce](https://rubygems.org/gems/azure_mgmt_commerce) Azure Commerce Usage aggregates & Rate card management
* [Compute](https://rubygems.org/gems/azure_mgmt_compute) Virtual Machines, Images, Extensions, Availability Sets, etc...
* [Datalake Analytics](https://rubygems.org/gems/azure_mgmt_datalake_analytics) Azure Datalake Analytics Account, Catalog and Job management
* [Datalake Store](https://rubygems.org/gems/azure_mgmt_datalake_store) Azure Datalake Store Account and FileSystem management
* [DevTest Labs](https://rubygems.org/gems/azure_mgmt_devtestlabs) Azure DevTest Labs LabOperations, ArtifactSourceOperations, ArtifactOperations, CostOperations etc...
* [DNS](https://rubygems.org/gems/azure_mgmt_dns) Azure DNS Record Set and Zone management
* [Features](https://rubygems.org/gems/azure_mgmt_features) Feature Exposure Controls
* [Graph](https://rubygems.org/gems/azure_mgmt_graph) Azure Active Directory Applications, Users, etc...
* [IoTHub](https://rubygems.org/gems/azure_mgmt_iot_hub) Azure IoTHub's Resource Management
* [Key Vault](https://rubygems.org/gems/azure_mgmt_key_vault) Azure Key Vault's vault management
* [Locks](https://rubygems.org/gems/azure_mgmt_locks) Management locks for Azure Resources
* [Logic](https://rubygems.org/gems/azure_mgmt_logic) Integration Accounts, AccountSchemas, AccountMaps, AccountPartners etc... 
* [Machine Learning](https://rubygems.org/gems/azure_mgmt_machine_learning) Azure Machine Learning web services management
* [Media Services](https://rubygems.org/gems/azure_mgmt_media_services) Media Services resource management APIs
* [Mobile Engagement](https://rubygems.org/gems/azure_mgmt_mobile_engagement) Azure Mobile Engagement's Apps, App Collections, Devices management APIs  
* [Network](https://rubygems.org/gems/azure_mgmt_network) Load Balancers, Network Gateways, Security Groups, etc...
* [Notification Hubs](https://rubygems.org/gems/azure_mgmt_notification_hubs) Notification Hubs management
* [Policy](https://rubygems.org/gems/azure_mgmt_policy) Policy Assignment & Policy definition operations
* [Powerbi Embedded](https://rubygems.org/gems/azure_mgmt_powerbi_embedded) Azure Powerbi Embedded Workspace & WorkspaceCollection management
* [Redis](https://rubygems.org/gems/azure_mgmt_redis) Redis resource management
* [Resources](https://rubygems.org/gems/azure_mgmt_resources) Resource Groups, Resource Providers, Template Deployments, Operations, etc...
* [Scheduler](https://rubygems.org/gems/azure_mgmt_scheduler) Manage scheduled jobs in Azure
* [Search](https://rubygems.org/gems/azure_mgmt_search) Manage Search resources
* [Server Management](https://rubygems.org/gems/azure_mgmt_server_management) Azure Server Management Service like node, gateway, powershell etc..
* [SQL](https://rubygems.org/gems/azure_mgmt_sql) Manage Azure SQL resources
* [Storage](https://rubygems.org/gems/azure_mgmt_storage) Account Creation, Usage Operations, etc...
* [Subscriptions](https://rubygems.org/gems/azure_mgmt_subscriptions) Manage Azure subscriptions
* [Traffic Manager](https://rubygems.org/gems/azure_mgmt_traffic_manager) Azure Traffic Manager's profile & endpoint management
* [WebApps](https://rubygems.org/gems/azure_mgmt_web) Manage WebApps, formally known as WebSites

## Azure Services
* [Storage](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#storage)
 Azure Storage is now availabe in its own preview gem and GitHub [repo](https://github.com/Azure/azure-storage-ruby)
* [Service Bus](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#usage)
    * [Relays](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#relays)
    * [Topics](https://github.com/Azure/azure-sdk-for-ruby/tree/asm#topics)
    * Queues

# Supported Ruby Versions

* Ruby 2+

Note: x64 Ruby for Windows is known to have some compatibility issues.

# Getting Started with Azure Resource Manager Usage (Preview)

## Install the rubygem packages

You can install the azure rubygem packages directly.

```bash
gem install azure_mgmt_compute
gem install azure_mgmt_storage
gem install azure_mgmt_resources
gem install azure_mgmt_network
```

Or use them in your Gemfile.

```Ruby
gem 'azure_mgmt_storage'
gem 'azure_mgmt_compute'
gem 'azure_mgmt_resources'
gem 'azure_mgmt_network'
```

Be aware the Azure Resource Manager Ruby SDK is in preview and will likely have breaking interface changes in upcoming
releases. An increased number in Minor version may indicate breaking changes. 

### Authentication

The first step to using the SDK is authentication and permissions. For people unfamilar with Azure this may be one of
the more difficult concepts. For a reference on setting up a service principal from the command line see
[Authenticating a service principal with Azure Resource Manager](http://aka.ms/cli-service-principal) or
[Unattended Authentication](http://aka.ms/auth-unattended). For a more robust explanation of authentication in Azure,
see [Developer’s guide to auth with Azure Resource Manager API](http://aka.ms/arm-auth-dev-guide).

After creating the service principal, you should have three pieces of information, a client id (GUID), client secret
(string) and tenant id (GUID) or domain name (string).

### Getting Started Samples
The tests for the libraries should provide a good example of how to get started with the clients. You can also see the
readme for each of the libraries [Compute](azure_mgmt_compute),
[Network](azure_mgmt_network), [Storage](azure_mgmt_storage), or [Resources](azure_mgmt_resources).

For more getting started samples go to [Azure-Samples](https://github.com/Azure-Samples/?utf8=%E2%9C%93&query=ruby). Please make sure to look for the azure_mgmt_* gem versions for samples.

# Contribute Code or Provide Feedback

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Development Environment Setup

### Download Source Code

To get the source code of the SDK via **git** just type:

```bash
git clone https://github.com/Azure/azure-sdk-for-ruby.git
cd ./azure-sdk-for-ruby
```
Then, run bundler to install all the gem dependencies:

```bash
bundle install
```

### Run Recorded Integration Tests
 * Set the environment variable ``INTEG_RECORDED = true``
 * Run ``rake arm:spec``

### Re-Record Integration Tests
 * Set the environment variable ``INTEG_RECORDED = false`` or un-set it
 * Copy .env_sample to .env
 * Update .env with your Azure credentials **.env is in the .gitignore, so should only reside locally**
 * Run specific test using ``rspec``
 example:
```bash
 cd ./azure_mgmt_compute
 rspec spec/virtual_machines_spec.rb
```
**If vcr cassette exist then it'll replay the test otherwise it'll record it.**

### Generate Documentation

Running the command ``yard`` will generate the API documentation in the `./doc` directory.

## Provide Feedback

If you encounter any bugs with the library please file an issue in the [Issues](https://github.com/Azure/azure-sdk-for-ruby/issues) section of the project. Please make sure to label the
issues with either arm or asm to help us expedite the process.

# Maintainers

* [David Justice](https://github.com/devigned)

# Azure CLI Tooling

For documentation on [Azure PowerShell](http://github.com/azure/azure-powershell).
For documentation on [Azure CLI](http://github.com/azure/azure-xplat-cli).

---
This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/). For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.