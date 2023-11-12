// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/resources/v1beta1

package v1beta1

#ContainerObservation: {
	// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the Container Configuration documentation.
	containerGroupName?: null | string @go(ContainerGroupName,*string)
}

#ContainerParameters: {
	// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the Container Configuration documentation.
	// +kubebuilder:validation:Optional
	containerGroupName?: null | string @go(ContainerGroupName,*string)
}

#EnvironmentVariableObservation: {
	// Specifies the name of the environment variable.
	name?: null | string @go(Name,*string)

	// Specifies the value of the environment variable.
	value?: null | string @go(Value,*string)
}

#EnvironmentVariableParameters: {
	// Specifies the name of the environment variable.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Specifies the value of the environment variable.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#IdentityObservation: {
	// Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Type of the managed identity. The only possible value is UserAssigned. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#IdentityParameters: {
	// Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/managedidentity/v1beta1.UserAssignedIdentity
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Type of the managed identity. The only possible value is UserAssigned. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#ResourceDeploymentScriptAzureCliObservation: {
	// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are Always, OnExpiration, OnSuccess. Defaults to Always. Changing this forces a new Resource Deployment Script to be created.
	cleanupPreference?: null | string @go(CleanupPreference,*string)

	// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
	commandLine?: null | string @go(CommandLine,*string)

	// A container block as defined below. Changing this forces a new Resource Deployment Script to be created.
	container?: [...#ContainerObservation] @go(Container,[]ContainerObservation)

	// An environment_variable block as defined below. Changing this forces a new Resource Deployment Script to be created.
	environmentVariable?: [...#EnvironmentVariableObservation] @go(EnvironmentVariable,[]EnvironmentVariableObservation)

	// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
	forceUpdateTag?: null | string @go(ForceUpdateTag,*string)

	// The ID of the Resource Deployment Script.
	id?: null | string @go(ID,*string)

	// An identity block as defined below. Changing this forces a new Resource Deployment Script to be created.
	identity?: [...#IdentityObservation] @go(Identity,[]IdentityObservation)

	// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
	location?: null | string @go(Location,*string)

	// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
	name?: null | string @go(Name,*string)

	// List of script outputs.
	outputs?: null | string @go(Outputs,*string)

	// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
	primaryScriptUri?: null | string @go(PrimaryScriptURI,*string)

	// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between 1 hour and 26 hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
	retentionInterval?: null | string @go(RetentionInterval,*string)

	// Script body. Changing this forces a new Resource Deployment Script to be created.
	scriptContent?: null | string @go(ScriptContent,*string)

	// A storage_account block as defined below. Changing this forces a new Resource Deployment Script to be created.
	storageAccount?: [...#StorageAccountObservation] @go(StorageAccount,[]StorageAccountObservation)

	// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
	supportingScriptUris?: [...null | string] @go(SupportingScriptUris,[]*string)

	// A mapping of tags which should be assigned to the Resource Deployment Script.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to P1D. Changing this forces a new Resource Deployment Script to be created.
	timeout?: null | string @go(Timeout,*string)

	// Azure CLI module version to be used. The supported versions are 2.0.77, 2.0.78, 2.0.79, 2.0.80, 2.0.81, 2.1.0, 2.10.0, 2.10.1, 2.11.0, 2.11.1, 2.12.0, 2.12.1, 2.13.0, 2.14.0, 2.14.1, 2.14.2, 2.15.0, 2.15.1, 2.16.0, 2.17.0, 2.17.1, 2.18.0, 2.19.0, 2.19.1, 2.2.0, 2.20.0, 2.21.0, 2.22.0, 2.22.1, 2.23.0, 2.24.0, 2.24.1, 2.24.2, 2.25.0, 2.26.0, 2.26.1, 2.27.0, 2.27.1, 2.27.2, 2.28.0, 2.29.0, 2.29.1, 2.29.2, 2.3.0, 2.3.1, 2.30.0, 2.31.0, 2.32.0, 2.33.0, 2.33.1, 2.34.0, 2.34.1, 2.35.0, 2.36.0, 2.37.0, 2.38.0, 2.39.0, 2.4.0, 2.40.0, 2.41.0, 2.5.0, 2.5.1, 2.6.0, 2.7.0, 2.8.0, 2.9.0, 2.9.1. Changing this forces a new Resource Deployment Script to be created.
	version?: null | string @go(Version,*string)
}

#ResourceDeploymentScriptAzureCliParameters: {
	// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are Always, OnExpiration, OnSuccess. Defaults to Always. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	cleanupPreference?: null | string @go(CleanupPreference,*string)

	// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	commandLine?: null | string @go(CommandLine,*string)

	// A container block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	container?: [...#ContainerParameters] @go(Container,[]ContainerParameters)

	// An environment_variable block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	environmentVariable?: [...#EnvironmentVariableParameters] @go(EnvironmentVariable,[]EnvironmentVariableParameters)

	// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	forceUpdateTag?: null | string @go(ForceUpdateTag,*string)

	// An identity block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	identity?: [...#IdentityParameters] @go(Identity,[]IdentityParameters)

	// Specifies the Azure Region where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the name which should be used for this Resource Deployment Script. The name length must be from 1 to 260 characters. The name can only contain alphanumeric, underscore, parentheses, hyphen and period, and it cannot end with a period. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Uri for the script. This is the entry point for the external script. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	primaryScriptUri?: null | string @go(PrimaryScriptURI,*string)

	// Specifies the name of the Resource Group where the Resource Deployment Script should exist. Changing this forces a new Resource Deployment Script to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Interval for which the service retains the script resource after it reaches a terminal state. Resource will be deleted when this duration expires. The time duration should be between 1 hour and 26 hours (inclusive) and should be specified in ISO 8601 format. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	retentionInterval?: null | string @go(RetentionInterval,*string)

	// Script body. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	scriptContent?: null | string @go(ScriptContent,*string)

	// A storage_account block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	storageAccount?: [...#StorageAccountParameters] @go(StorageAccount,[]StorageAccountParameters)

	// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	supportingScriptUris?: [...null | string] @go(SupportingScriptUris,[]*string)

	// A mapping of tags which should be assigned to the Resource Deployment Script.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to P1D. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	timeout?: null | string @go(Timeout,*string)

	// Azure CLI module version to be used. The supported versions are 2.0.77, 2.0.78, 2.0.79, 2.0.80, 2.0.81, 2.1.0, 2.10.0, 2.10.1, 2.11.0, 2.11.1, 2.12.0, 2.12.1, 2.13.0, 2.14.0, 2.14.1, 2.14.2, 2.15.0, 2.15.1, 2.16.0, 2.17.0, 2.17.1, 2.18.0, 2.19.0, 2.19.1, 2.2.0, 2.20.0, 2.21.0, 2.22.0, 2.22.1, 2.23.0, 2.24.0, 2.24.1, 2.24.2, 2.25.0, 2.26.0, 2.26.1, 2.27.0, 2.27.1, 2.27.2, 2.28.0, 2.29.0, 2.29.1, 2.29.2, 2.3.0, 2.3.1, 2.30.0, 2.31.0, 2.32.0, 2.33.0, 2.33.1, 2.34.0, 2.34.1, 2.35.0, 2.36.0, 2.37.0, 2.38.0, 2.39.0, 2.4.0, 2.40.0, 2.41.0, 2.5.0, 2.5.1, 2.6.0, 2.7.0, 2.8.0, 2.9.0, 2.9.1. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#StorageAccountObservation: {
	// Specifies the storage account name.
	name?: null | string @go(Name,*string)
}

#StorageAccountParameters: {
	// Specifies the storage account name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// ResourceDeploymentScriptAzureCliSpec defines the desired state of ResourceDeploymentScriptAzureCli
#ResourceDeploymentScriptAzureCliSpec: {
	forProvider: #ResourceDeploymentScriptAzureCliParameters @go(ForProvider)
}

// ResourceDeploymentScriptAzureCliStatus defines the observed state of ResourceDeploymentScriptAzureCli.
#ResourceDeploymentScriptAzureCliStatus: {
	atProvider?: #ResourceDeploymentScriptAzureCliObservation @go(AtProvider)
}

// ResourceDeploymentScriptAzureCli is the Schema for the ResourceDeploymentScriptAzureClis API. Manages a Resource Deployment Script of Azure Cli.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ResourceDeploymentScriptAzureCli: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.retentionInterval)",message="retentionInterval is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.version)",message="version is a required parameter"
	spec:    #ResourceDeploymentScriptAzureCliSpec   @go(Spec)
	status?: #ResourceDeploymentScriptAzureCliStatus @go(Status)
}

// ResourceDeploymentScriptAzureCliList contains a list of ResourceDeploymentScriptAzureClis
#ResourceDeploymentScriptAzureCliList: {
	items: [...#ResourceDeploymentScriptAzureCli] @go(Items,[]ResourceDeploymentScriptAzureCli)
}
