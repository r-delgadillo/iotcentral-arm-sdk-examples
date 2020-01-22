require "azure_mgmt_iot_central"
require "ms_rest_azure"

puts "Hello World!"


# TODO: Fill this in
provider = MsRestAzure::ApplicationTokenProvider.new(
       'tenant_id',
       'client_id',
       'client_secret')
credentials = MsRest::TokenCredentials.new(provider)

# TODO: Fill this in
options = {
    tenant_id: 'tenant_id',
    client_id: 'client_id',
    client_secret: 'client_secret',
    subscription_id: 'subscription_id',
    credentials: credentials
}

c = Azure::IotCentral::Profiles::Latest::Mgmt::Client::new(options)
apps =  Azure::IotCentral::Mgmt::V2018_09_01::Apps::new(c)
app =  Azure::IotCentral::Mgmt::V2018_09_01::Models::App::new()
skuInfo =  Azure::IotCentral::Mgmt::V2018_09_01::Models::AppSkuInfo::new()
skuInfo.name = 'ST1'
app.location = 'eastus'
app.display_name = 'Ruby SDK Application'
# TODO: Add subdomain
app.subdomain = 'ENTER SUBDOMAIN HERE'
app.sku = skuInfo
# TODO: Add resource group name, resource name
newapp = apps.create_or_update('RESOURCE GROUP HERE', 'RESOURCE NAME HERE (often same as subdomain)', app)
pp newapp
result = apps.list_by_subscription()

pp result