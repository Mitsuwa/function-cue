// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/databricks/v1beta1

package v1beta1

#CustomParametersInitParameters: {
	// The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
	machineLearningWorkspaceId?: null | string @go(MachineLearningWorkspaceID,*string)

	// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Defaults to nat-gateway. Changing this forces a new resource to be created.
	natGatewayName?: null | string @go(NATGatewayName,*string)

	// Are public IP Addresses not allowed? Possible values are true or false. Defaults to false.
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the private_subnet_name field. This is the same as the ID of the subnet referred to by the private_subnet_name field. Required if virtual_network_id is set.
	privateSubnetNetworkSecurityGroupAssociationId?: null | string @go(PrivateSubnetNetworkSecurityGroupAssociationID,*string)

	// Name of the Public IP for No Public IP workspace with managed vNet. Defaults to nat-gw-public-ip. Changing this forces a new resource to be created.
	publicIpName?: null | string @go(PublicIPName,*string)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the public_subnet_name field. This is the same as the ID of the subnet referred to by the public_subnet_name field. Required if virtual_network_id is set.
	publicSubnetNetworkSecurityGroupAssociationId?: null | string @go(PublicSubnetNetworkSecurityGroupAssociationID,*string)

	// Default Databricks File Storage account name. Defaults to a randomized name(e.g. dbstoragel6mfeghoe5kxu). Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// Storage account SKU name. Possible values include Standard_LRS, Standard_GRS, Standard_RAGRS, Standard_GZRS, Standard_RAGZRS, Standard_ZRS, Premium_LRS or Premium_ZRS. Defaults to Standard_GRS. Changing this forces a new resource to be created.
	storageAccountSkuName?: null | string @go(StorageAccountSkuName,*string)

	// The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
	virtualNetworkId?: null | string @go(VirtualNetworkID,*string)

	// Address prefix for Managed virtual network. Defaults to 10.139. Changing this forces a new resource to be created.
	vnetAddressPrefix?: null | string @go(VnetAddressPrefix,*string)
}

#CustomParametersObservation: {
	// The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
	machineLearningWorkspaceId?: null | string @go(MachineLearningWorkspaceID,*string)

	// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Defaults to nat-gateway. Changing this forces a new resource to be created.
	natGatewayName?: null | string @go(NATGatewayName,*string)

	// Are public IP Addresses not allowed? Possible values are true or false. Defaults to false.
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// The name of the Private Subnet within the Virtual Network. Required if virtual_network_id is set. Changing this forces a new resource to be created.
	privateSubnetName?: null | string @go(PrivateSubnetName,*string)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the private_subnet_name field. This is the same as the ID of the subnet referred to by the private_subnet_name field. Required if virtual_network_id is set.
	privateSubnetNetworkSecurityGroupAssociationId?: null | string @go(PrivateSubnetNetworkSecurityGroupAssociationID,*string)

	// Name of the Public IP for No Public IP workspace with managed vNet. Defaults to nat-gw-public-ip. Changing this forces a new resource to be created.
	publicIpName?: null | string @go(PublicIPName,*string)

	// The name of the Public Subnet within the Virtual Network. Required if virtual_network_id is set. Changing this forces a new resource to be created.
	publicSubnetName?: null | string @go(PublicSubnetName,*string)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the public_subnet_name field. This is the same as the ID of the subnet referred to by the public_subnet_name field. Required if virtual_network_id is set.
	publicSubnetNetworkSecurityGroupAssociationId?: null | string @go(PublicSubnetNetworkSecurityGroupAssociationID,*string)

	// Default Databricks File Storage account name. Defaults to a randomized name(e.g. dbstoragel6mfeghoe5kxu). Changing this forces a new resource to be created.
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// Storage account SKU name. Possible values include Standard_LRS, Standard_GRS, Standard_RAGRS, Standard_GZRS, Standard_RAGZRS, Standard_ZRS, Premium_LRS or Premium_ZRS. Defaults to Standard_GRS. Changing this forces a new resource to be created.
	storageAccountSkuName?: null | string @go(StorageAccountSkuName,*string)

	// The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
	virtualNetworkId?: null | string @go(VirtualNetworkID,*string)

	// Address prefix for Managed virtual network. Defaults to 10.139. Changing this forces a new resource to be created.
	vnetAddressPrefix?: null | string @go(VnetAddressPrefix,*string)
}

#CustomParametersParameters: {
	// The ID of a Azure Machine Learning workspace to link with Databricks workspace. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	machineLearningWorkspaceId?: null | string @go(MachineLearningWorkspaceID,*string)

	// Name of the NAT gateway for Secure Cluster Connectivity (No Public IP) workspace subnets. Defaults to nat-gateway. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	natGatewayName?: null | string @go(NATGatewayName,*string)

	// Are public IP Addresses not allowed? Possible values are true or false. Defaults to false.
	// +kubebuilder:validation:Optional
	noPublicIp?: null | bool @go(NoPublicIP,*bool)

	// The name of the Private Subnet within the Virtual Network. Required if virtual_network_id is set. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +kubebuilder:validation:Optional
	privateSubnetName?: null | string @go(PrivateSubnetName,*string)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the private_subnet_name field. This is the same as the ID of the subnet referred to by the private_subnet_name field. Required if virtual_network_id is set.
	// +kubebuilder:validation:Optional
	privateSubnetNetworkSecurityGroupAssociationId?: null | string @go(PrivateSubnetNetworkSecurityGroupAssociationID,*string)

	// Name of the Public IP for No Public IP workspace with managed vNet. Defaults to nat-gw-public-ip. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	publicIpName?: null | string @go(PublicIPName,*string)

	// The name of the Public Subnet within the Virtual Network. Required if virtual_network_id is set. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +kubebuilder:validation:Optional
	publicSubnetName?: null | string @go(PublicSubnetName,*string)

	// The resource ID of the azurerm_subnet_network_security_group_association resource which is referred to by the public_subnet_name field. This is the same as the ID of the subnet referred to by the public_subnet_name field. Required if virtual_network_id is set.
	// +kubebuilder:validation:Optional
	publicSubnetNetworkSecurityGroupAssociationId?: null | string @go(PublicSubnetNetworkSecurityGroupAssociationID,*string)

	// Default Databricks File Storage account name. Defaults to a randomized name(e.g. dbstoragel6mfeghoe5kxu). Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	storageAccountName?: null | string @go(StorageAccountName,*string)

	// Storage account SKU name. Possible values include Standard_LRS, Standard_GRS, Standard_RAGRS, Standard_GZRS, Standard_RAGZRS, Standard_ZRS, Premium_LRS or Premium_ZRS. Defaults to Standard_GRS. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	storageAccountSkuName?: null | string @go(StorageAccountSkuName,*string)

	// The ID of a Virtual Network where this Databricks Cluster should be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	virtualNetworkId?: null | string @go(VirtualNetworkID,*string)

	// Address prefix for Managed virtual network. Defaults to 10.139. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	vnetAddressPrefix?: null | string @go(VnetAddressPrefix,*string)
}

#ManagedDiskIdentityInitParameters: {
}

#ManagedDiskIdentityObservation: {
	// The principal UUID for the internal databricks disks identity needed to provide access to the workspace for enabling Customer Managed Keys.
	principalId?: null | string @go(PrincipalID,*string)

	// The UUID of the tenant where the internal databricks disks identity was created.
	tenantId?: null | string @go(TenantID,*string)

	// The type of the internal databricks disks identity.
	type?: null | string @go(Type,*string)
}

#ManagedDiskIdentityParameters: {
}

#StorageAccountIdentityInitParameters: {
}

#StorageAccountIdentityObservation: {
	// The principal UUID for the internal databricks storage account needed to provide access to the workspace for enabling Customer Managed Keys.
	principalId?: null | string @go(PrincipalID,*string)

	// The UUID of the tenant where the internal databricks storage account was created.
	tenantId?: null | string @go(TenantID,*string)

	// The type of the internal databricks storage account.
	type?: null | string @go(Type,*string)
}

#StorageAccountIdentityParameters: {
}

#WorkspaceInitParameters: {
	// A custom_parameters block as documented below.
	customParameters?: [...#CustomParametersInitParameters] @go(CustomParameters,[]CustomParametersInitParameters)

	// Is the workspace enabled for customer managed key encryption? If true this enables the Managed Identity for the managed storage account. Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium.
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium. Changing this forces a new resource to be created.
	infrastructureEncryptionEnabled?: null | bool @go(InfrastructureEncryptionEnabled,*bool)

	// Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created.
	loadBalancerBackendAddressPoolId?: null | string @go(LoadBalancerBackendAddressPoolID,*string)

	// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Customer managed encryption properties for the Databricks Workspace managed disks.
	managedDiskCmkKeyVaultKeyId?: null | string @go(ManagedDiskCmkKeyVaultKeyID,*string)

	// Whether customer managed keys for disk encryption will automatically be rotated to the latest version.
	managedDiskCmkRotationToLatestVersionEnabled?: null | bool @go(ManagedDiskCmkRotationToLatestVersionEnabled,*bool)

	// Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts).
	managedServicesCmkKeyVaultKeyId?: null | string @go(ManagedServicesCmkKeyVaultKeyID,*string)

	// Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values AllRules, NoAzureDatabricksRules or NoAzureServiceRules. Required when public_network_access_enabled is set to false.
	networkSecurityGroupRulesRequired?: null | string @go(NetworkSecurityGroupRulesRequired,*string)

	// Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. Possible values include true or false. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The sku to use for the Databricks Workspace. Possible values are standard, premium, or trial.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#WorkspaceObservation: {
	// A custom_parameters block as documented below.
	customParameters?: [...#CustomParametersObservation] @go(CustomParameters,[]CustomParametersObservation)

	// Is the workspace enabled for customer managed key encryption? If true this enables the Managed Identity for the managed storage account. Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium.
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// The ID of Managed Disk Encryption Set created by the Databricks Workspace.
	diskEncryptionSetId?: null | string @go(DiskEncryptionSetID,*string)

	// The ID of the Databricks Workspace in the Azure management plane.
	id?: null | string @go(ID,*string)

	// Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium. Changing this forces a new resource to be created.
	infrastructureEncryptionEnabled?: null | bool @go(InfrastructureEncryptionEnabled,*bool)

	// Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created.
	loadBalancerBackendAddressPoolId?: null | string @go(LoadBalancerBackendAddressPoolID,*string)

	// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Customer managed encryption properties for the Databricks Workspace managed disks.
	managedDiskCmkKeyVaultKeyId?: null | string @go(ManagedDiskCmkKeyVaultKeyID,*string)

	// Whether customer managed keys for disk encryption will automatically be rotated to the latest version.
	managedDiskCmkRotationToLatestVersionEnabled?: null | bool @go(ManagedDiskCmkRotationToLatestVersionEnabled,*bool)

	// A managed_disk_identity block as documented below.
	managedDiskIdentity?: [...#ManagedDiskIdentityObservation] @go(ManagedDiskIdentity,[]ManagedDiskIdentityObservation)

	// The ID of the Managed Resource Group created by the Databricks Workspace.
	managedResourceGroupId?: null | string @go(ManagedResourceGroupID,*string)

	// The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created.
	managedResourceGroupName?: null | string @go(ManagedResourceGroupName,*string)

	// Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts).
	managedServicesCmkKeyVaultKeyId?: null | string @go(ManagedServicesCmkKeyVaultKeyID,*string)

	// Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values AllRules, NoAzureDatabricksRules or NoAzureServiceRules. Required when public_network_access_enabled is set to false.
	networkSecurityGroupRulesRequired?: null | string @go(NetworkSecurityGroupRulesRequired,*string)

	// Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. Possible values include true or false. Defaults to true.
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The sku to use for the Databricks Workspace. Possible values are standard, premium, or trial.
	sku?: null | string @go(Sku,*string)

	// A storage_account_identity block as documented below.
	storageAccountIdentity?: [...#StorageAccountIdentityObservation] @go(StorageAccountIdentity,[]StorageAccountIdentityObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The unique identifier of the databricks workspace in Databricks control plane.
	workspaceId?: null | string @go(WorkspaceID,*string)

	// The workspace URL which is of the format 'adb-{workspaceId}.{random}.azuredatabricks.net'
	workspaceUrl?: null | string @go(WorkspaceURL,*string)
}

#WorkspaceParameters: {
	// A custom_parameters block as documented below.
	// +kubebuilder:validation:Optional
	customParameters?: [...#CustomParametersParameters] @go(CustomParameters,[]CustomParametersParameters)

	// Is the workspace enabled for customer managed key encryption? If true this enables the Managed Identity for the managed storage account. Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium.
	// +kubebuilder:validation:Optional
	customerManagedKeyEnabled?: null | bool @go(CustomerManagedKeyEnabled,*bool)

	// Is the Databricks File System root file system enabled with a secondary layer of encryption with platform managed keys? Possible values are true or false. Defaults to false. This field is only valid if the Databricks Workspace sku is set to premium. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	infrastructureEncryptionEnabled?: null | bool @go(InfrastructureEncryptionEnabled,*bool)

	// Resource ID of the Outbound Load balancer Backend Address Pool for Secure Cluster Connectivity (No Public IP) workspace. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	loadBalancerBackendAddressPoolId?: null | string @go(LoadBalancerBackendAddressPoolID,*string)

	// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Customer managed encryption properties for the Databricks Workspace managed disks.
	// +kubebuilder:validation:Optional
	managedDiskCmkKeyVaultKeyId?: null | string @go(ManagedDiskCmkKeyVaultKeyID,*string)

	// Whether customer managed keys for disk encryption will automatically be rotated to the latest version.
	// +kubebuilder:validation:Optional
	managedDiskCmkRotationToLatestVersionEnabled?: null | bool @go(ManagedDiskCmkRotationToLatestVersionEnabled,*bool)

	// The name of the resource group where Azure should place the managed Databricks resources. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	managedResourceGroupName?: null | string @go(ManagedResourceGroupName,*string)

	// Customer managed encryption properties for the Databricks Workspace managed resources(e.g. Notebooks and Artifacts).
	// +kubebuilder:validation:Optional
	managedServicesCmkKeyVaultKeyId?: null | string @go(ManagedServicesCmkKeyVaultKeyID,*string)

	// Does the data plane (clusters) to control plane communication happen over private link endpoint only or publicly? Possible values AllRules, NoAzureDatabricksRules or NoAzureServiceRules. Required when public_network_access_enabled is set to false.
	// +kubebuilder:validation:Optional
	networkSecurityGroupRulesRequired?: null | string @go(NetworkSecurityGroupRulesRequired,*string)

	// Allow public access for accessing workspace. Set value to false to access workspace only via private link endpoint. Possible values include true or false. Defaults to true.
	// +kubebuilder:validation:Optional
	publicNetworkAccessEnabled?: null | bool @go(PublicNetworkAccessEnabled,*bool)

	// The name of the Resource Group in which the Databricks Workspace should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The sku to use for the Databricks Workspace. Possible values are standard, premium, or trial.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// WorkspaceSpec defines the desired state of Workspace
#WorkspaceSpec: {
	forProvider: #WorkspaceParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #WorkspaceInitParameters @go(InitProvider)
}

// WorkspaceStatus defines the observed state of Workspace.
#WorkspaceStatus: {
	atProvider?: #WorkspaceObservation @go(AtProvider)
}

// Workspace is the Schema for the Workspaces API. Manages a Databricks Workspace
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Workspace: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sku) || (has(self.initProvider) && has(self.initProvider.sku))",message="spec.forProvider.sku is a required parameter"
	spec:    #WorkspaceSpec   @go(Spec)
	status?: #WorkspaceStatus @go(Status)
}

// WorkspaceList contains a list of Workspaces
#WorkspaceList: {
	items: [...#Workspace] @go(Items,[]Workspace)
}
