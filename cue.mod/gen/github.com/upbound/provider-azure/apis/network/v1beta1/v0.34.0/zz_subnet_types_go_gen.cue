// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DelegationObservation: {
	// A name for this delegation.
	name?: null | string @go(Name,*string)

	// A service_delegation block as defined below.
	serviceDelegation?: [...#ServiceDelegationObservation] @go(ServiceDelegation,[]ServiceDelegationObservation)
}

#DelegationParameters: {
	// A name for this delegation.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// A service_delegation block as defined below.
	// +kubebuilder:validation:Required
	serviceDelegation: [...#ServiceDelegationParameters] @go(ServiceDelegation,[]ServiceDelegationParameters)
}

#ServiceDelegationObservation: {
	// A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are Microsoft.Network/networkinterfaces/*, Microsoft.Network/publicIPAddresses/join/action, Microsoft.Network/publicIPAddresses/read, Microsoft.Network/virtualNetworks/read, Microsoft.Network/virtualNetworks/subnets/action, Microsoft.Network/virtualNetworks/subnets/join/action, Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action, and Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action.
	actions?: [...null | string] @go(Actions,[]*string)

	// The name of service to delegate to. Possible values are Microsoft.ApiManagement/service, Microsoft.AzureCosmosDB/clusters, Microsoft.BareMetal/AzureVMware, Microsoft.BareMetal/CrayServers, Microsoft.Batch/batchAccounts, Microsoft.ContainerInstance/containerGroups, Microsoft.ContainerService/managedClusters, Microsoft.Databricks/workspaces, Microsoft.DBforMySQL/flexibleServers, Microsoft.DBforMySQL/serversv2, Microsoft.DBforPostgreSQL/flexibleServers, Microsoft.DBforPostgreSQL/serversv2, Microsoft.DBforPostgreSQL/singleServers, Microsoft.HardwareSecurityModules/dedicatedHSMs, Microsoft.Kusto/clusters, Microsoft.Logic/integrationServiceEnvironments, Microsoft.LabServices/labplans, Microsoft.MachineLearningServices/workspaces, Microsoft.Netapp/volumes, Microsoft.Network/dnsResolvers, Microsoft.Network/managedResolvers, Microsoft.PowerPlatform/vnetaccesslinks, Microsoft.ServiceFabricMesh/networks, Microsoft.Sql/managedInstances, Microsoft.Sql/servers, Microsoft.StoragePool/diskPools, Microsoft.StreamAnalytics/streamingJobs, Microsoft.Synapse/workspaces, Microsoft.Web/hostingEnvironments, Microsoft.Web/serverFarms, Microsoft.Orbital/orbitalGateways, NGINX.NGINXPLUS/nginxDeployments, PaloAltoNetworks.Cloudngfw/firewalls, and Qumulo.Storage/fileSystems.
	name?: null | string @go(Name,*string)
}

#ServiceDelegationParameters: {
	// A list of Actions which should be delegated. This list is specific to the service to delegate to. Possible values are Microsoft.Network/networkinterfaces/*, Microsoft.Network/publicIPAddresses/join/action, Microsoft.Network/publicIPAddresses/read, Microsoft.Network/virtualNetworks/read, Microsoft.Network/virtualNetworks/subnets/action, Microsoft.Network/virtualNetworks/subnets/join/action, Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action, and Microsoft.Network/virtualNetworks/subnets/unprepareNetworkPolicies/action.
	// +kubebuilder:validation:Optional
	actions?: [...null | string] @go(Actions,[]*string)

	// The name of service to delegate to. Possible values are Microsoft.ApiManagement/service, Microsoft.AzureCosmosDB/clusters, Microsoft.BareMetal/AzureVMware, Microsoft.BareMetal/CrayServers, Microsoft.Batch/batchAccounts, Microsoft.ContainerInstance/containerGroups, Microsoft.ContainerService/managedClusters, Microsoft.Databricks/workspaces, Microsoft.DBforMySQL/flexibleServers, Microsoft.DBforMySQL/serversv2, Microsoft.DBforPostgreSQL/flexibleServers, Microsoft.DBforPostgreSQL/serversv2, Microsoft.DBforPostgreSQL/singleServers, Microsoft.HardwareSecurityModules/dedicatedHSMs, Microsoft.Kusto/clusters, Microsoft.Logic/integrationServiceEnvironments, Microsoft.LabServices/labplans, Microsoft.MachineLearningServices/workspaces, Microsoft.Netapp/volumes, Microsoft.Network/dnsResolvers, Microsoft.Network/managedResolvers, Microsoft.PowerPlatform/vnetaccesslinks, Microsoft.ServiceFabricMesh/networks, Microsoft.Sql/managedInstances, Microsoft.Sql/servers, Microsoft.StoragePool/diskPools, Microsoft.StreamAnalytics/streamingJobs, Microsoft.Synapse/workspaces, Microsoft.Web/hostingEnvironments, Microsoft.Web/serverFarms, Microsoft.Orbital/orbitalGateways, NGINX.NGINXPLUS/nginxDeployments, PaloAltoNetworks.Cloudngfw/firewalls, and Qumulo.Storage/fileSystems.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

#SubnetObservation: {
	// The address prefixes to use for the subnet.
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)

	// One or more delegation blocks as defined below.
	delegation?: [...#DelegationObservation] @go(Delegation,[]DelegationObservation)
	enforcePrivateLinkEndpointNetworkPolicies?: null | bool @go(EnforcePrivateLinkEndpointNetworkPolicies,*bool)
	enforcePrivateLinkServiceNetworkPolicies?:  null | bool @go(EnforcePrivateLinkServiceNetworkPolicies,*bool)

	// The subnet ID.
	id?: null | string @go(ID,*string)

	// Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
	privateEndpointNetworkPoliciesEnabled?: null | bool @go(PrivateEndpointNetworkPoliciesEnabled,*bool)

	// Enable or Disable network policies for the private link service on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
	privateLinkServiceNetworkPoliciesEnabled?: null | bool @go(PrivateLinkServiceNetworkPoliciesEnabled,*bool)

	// The name of the resource group in which to create the subnet. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The list of IDs of Service Endpoint Policies to associate with the subnet.
	serviceEndpointPolicyIds?: [...null | string] @go(ServiceEndpointPolicyIds,[]*string)

	// The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, Microsoft.Storage.Global and Microsoft.Web.
	serviceEndpoints?: [...null | string] @go(ServiceEndpoints,[]*string)

	// The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
	virtualNetworkName?: null | string @go(VirtualNetworkName,*string)
}

#SubnetParameters: {
	// The address prefixes to use for the subnet.
	// +kubebuilder:validation:Optional
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)

	// One or more delegation blocks as defined below.
	// +kubebuilder:validation:Optional
	delegation?: [...#DelegationParameters] @go(Delegation,[]DelegationParameters)

	// +kubebuilder:validation:Optional
	enforcePrivateLinkEndpointNetworkPolicies?: null | bool @go(EnforcePrivateLinkEndpointNetworkPolicies,*bool)

	// +kubebuilder:validation:Optional
	enforcePrivateLinkServiceNetworkPolicies?: null | bool @go(EnforcePrivateLinkServiceNetworkPolicies,*bool)

	// Enable or Disable network policies for the private endpoint on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
	// +kubebuilder:validation:Optional
	privateEndpointNetworkPoliciesEnabled?: null | bool @go(PrivateEndpointNetworkPoliciesEnabled,*bool)

	// Enable or Disable network policies for the private link service on the subnet. Setting this to true will Enable the policy and setting this to false will Disable the policy. Defaults to true.
	// +kubebuilder:validation:Optional
	privateLinkServiceNetworkPoliciesEnabled?: null | bool @go(PrivateLinkServiceNetworkPoliciesEnabled,*bool)

	// The name of the resource group in which to create the subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The list of IDs of Service Endpoint Policies to associate with the subnet.
	// +kubebuilder:validation:Optional
	serviceEndpointPolicyIds?: [...null | string] @go(ServiceEndpointPolicyIds,[]*string)

	// The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.ContainerRegistry, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql, Microsoft.Storage, Microsoft.Storage.Global and Microsoft.Web.
	// +kubebuilder:validation:Optional
	serviceEndpoints?: [...null | string] @go(ServiceEndpoints,[]*string)

	// The name of the virtual network to which to attach the subnet. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=VirtualNetwork
	// +kubebuilder:validation:Optional
	virtualNetworkName?: null | string @go(VirtualNetworkName,*string)
}

// SubnetSpec defines the desired state of Subnet
#SubnetSpec: {
	forProvider: #SubnetParameters @go(ForProvider)
}

// SubnetStatus defines the observed state of Subnet.
#SubnetStatus: {
	atProvider?: #SubnetObservation @go(AtProvider)
}

// Subnet is the Schema for the Subnets API. Manages a subnet. Subnets represent network segments within the IP space defined by the virtual network.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Subnet: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.addressPrefixes)",message="addressPrefixes is a required parameter"
	spec:    #SubnetSpec   @go(Spec)
	status?: #SubnetStatus @go(Status)
}

// SubnetList contains a list of Subnets
#SubnetList: {
	items: [...#Subnet] @go(Items,[]Subnet)
}
