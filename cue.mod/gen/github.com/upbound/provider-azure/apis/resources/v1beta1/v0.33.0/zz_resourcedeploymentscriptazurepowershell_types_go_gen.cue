// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/resources/v1beta1

package v1beta1

#ResourceDeploymentScriptAzurePowerShellContainerObservation: {
	// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the Container Configuration documentation.
	containerGroupName?: null | string @go(ContainerGroupName,*string)
}

#ResourceDeploymentScriptAzurePowerShellContainerParameters: {
	// Container group name, if not specified then the name will get auto-generated. For more information, please refer to the Container Configuration documentation.
	// +kubebuilder:validation:Optional
	containerGroupName?: null | string @go(ContainerGroupName,*string)
}

#ResourceDeploymentScriptAzurePowerShellEnvironmentVariableObservation: {
	// Specifies the name of the environment variable.
	name?: null | string @go(Name,*string)

	// Specifies the value of the environment variable.
	value?: null | string @go(Value,*string)
}

#ResourceDeploymentScriptAzurePowerShellEnvironmentVariableParameters: {
	// Specifies the name of the environment variable.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Specifies the value of the environment variable.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#ResourceDeploymentScriptAzurePowerShellIdentityObservation: {
	// Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Type of the managed identity. The only possible value is UserAssigned. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)
}

#ResourceDeploymentScriptAzurePowerShellIdentityParameters: {
	// Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/managedidentity/v1beta1.UserAssignedIdentity
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	identityIds?: [...null | string] @go(IdentityIds,[]*string)

	// Type of the managed identity. The only possible value is UserAssigned. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#ResourceDeploymentScriptAzurePowerShellObservation: {
	// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are Always, OnExpiration, OnSuccess. Defaults to Always. Changing this forces a new Resource Deployment Script to be created.
	cleanupPreference?: null | string @go(CleanupPreference,*string)

	// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
	commandLine?: null | string @go(CommandLine,*string)

	// A container block as defined below. Changing this forces a new Resource Deployment Script to be created.
	container?: [...#ResourceDeploymentScriptAzurePowerShellContainerObservation] @go(Container,[]ResourceDeploymentScriptAzurePowerShellContainerObservation)

	// An environment_variable block as defined below. Changing this forces a new Resource Deployment Script to be created.
	environmentVariable?: [...#ResourceDeploymentScriptAzurePowerShellEnvironmentVariableObservation] @go(EnvironmentVariable,[]ResourceDeploymentScriptAzurePowerShellEnvironmentVariableObservation)

	// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
	forceUpdateTag?: null | string @go(ForceUpdateTag,*string)

	// The ID of the Resource Deployment Script.
	id?: null | string @go(ID,*string)

	// An identity block as defined below. Changing this forces a new Resource Deployment Script to be created.
	identity?: [...#ResourceDeploymentScriptAzurePowerShellIdentityObservation] @go(Identity,[]ResourceDeploymentScriptAzurePowerShellIdentityObservation)

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
	storageAccount?: [...#ResourceDeploymentScriptAzurePowerShellStorageAccountObservation] @go(StorageAccount,[]ResourceDeploymentScriptAzurePowerShellStorageAccountObservation)

	// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
	supportingScriptUris?: [...null | string] @go(SupportingScriptUris,[]*string)

	// A mapping of tags which should be assigned to the Resource Deployment Script.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to P1D. Changing this forces a new Resource Deployment Script to be created.
	timeout?: null | string @go(Timeout,*string)

	// Azure PowerShell module version to be used. The supported versions are 2.7, 2.8, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 5.0, 5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 7.0, 7.1, 7.2, 7.3, 7.4, 7.5, 8.0, 8.1, 8.2, 8.3, 9.0. Changing this forces a new Resource Deployment Script to be created.
	version?: null | string @go(Version,*string)
}

#ResourceDeploymentScriptAzurePowerShellParameters: {
	// Specifies the cleanup preference when the script execution gets in a terminal state. Possible values are Always, OnExpiration, OnSuccess. Defaults to Always. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	cleanupPreference?: null | string @go(CleanupPreference,*string)

	// Command line arguments to pass to the script. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	commandLine?: null | string @go(CommandLine,*string)

	// A container block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	container?: [...#ResourceDeploymentScriptAzurePowerShellContainerParameters] @go(Container,[]ResourceDeploymentScriptAzurePowerShellContainerParameters)

	// An environment_variable block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	environmentVariable?: [...#ResourceDeploymentScriptAzurePowerShellEnvironmentVariableParameters] @go(EnvironmentVariable,[]ResourceDeploymentScriptAzurePowerShellEnvironmentVariableParameters)

	// Gets or sets how the deployment script should be forced to execute even if the script resource has not changed. Can be current time stamp or a GUID. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	forceUpdateTag?: null | string @go(ForceUpdateTag,*string)

	// An identity block as defined below. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	identity?: [...#ResourceDeploymentScriptAzurePowerShellIdentityParameters] @go(Identity,[]ResourceDeploymentScriptAzurePowerShellIdentityParameters)

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
	storageAccount?: [...#ResourceDeploymentScriptAzurePowerShellStorageAccountParameters] @go(StorageAccount,[]ResourceDeploymentScriptAzurePowerShellStorageAccountParameters)

	// Supporting files for the external script. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	supportingScriptUris?: [...null | string] @go(SupportingScriptUris,[]*string)

	// A mapping of tags which should be assigned to the Resource Deployment Script.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Maximum allowed script execution time specified in ISO 8601 format. Needs to be greater than 0 and smaller than 1 day. Defaults to P1D. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	timeout?: null | string @go(Timeout,*string)

	// Azure PowerShell module version to be used. The supported versions are 2.7, 2.8, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5, 3.6, 3.7, 3.8, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 5.0, 5.1, 5.2, 5.3, 5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 6.0, 6.1, 6.2, 6.3, 6.4, 6.5, 6.6, 7.0, 7.1, 7.2, 7.3, 7.4, 7.5, 8.0, 8.1, 8.2, 8.3, 9.0. Changing this forces a new Resource Deployment Script to be created.
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#ResourceDeploymentScriptAzurePowerShellStorageAccountObservation: {
	// Specifies the storage account name.
	name?: null | string @go(Name,*string)
}

#ResourceDeploymentScriptAzurePowerShellStorageAccountParameters: {
	// Specifies the storage account name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// ResourceDeploymentScriptAzurePowerShellSpec defines the desired state of ResourceDeploymentScriptAzurePowerShell
#ResourceDeploymentScriptAzurePowerShellSpec: {
	forProvider: #ResourceDeploymentScriptAzurePowerShellParameters @go(ForProvider)
}

// ResourceDeploymentScriptAzurePowerShellStatus defines the observed state of ResourceDeploymentScriptAzurePowerShell.
#ResourceDeploymentScriptAzurePowerShellStatus: {
	atProvider?: #ResourceDeploymentScriptAzurePowerShellObservation @go(AtProvider)
}

// ResourceDeploymentScriptAzurePowerShell is the Schema for the ResourceDeploymentScriptAzurePowerShells API. Manages a Resource Deployment Script of Azure PowerShell.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ResourceDeploymentScriptAzurePowerShell: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.retentionInterval)",message="retentionInterval is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.version)",message="version is a required parameter"
	spec:    #ResourceDeploymentScriptAzurePowerShellSpec   @go(Spec)
	status?: #ResourceDeploymentScriptAzurePowerShellStatus @go(Status)
}

// ResourceDeploymentScriptAzurePowerShellList contains a list of ResourceDeploymentScriptAzurePowerShells
#ResourceDeploymentScriptAzurePowerShellList: {
	items: [...#ResourceDeploymentScriptAzurePowerShell] @go(Items,[]ResourceDeploymentScriptAzurePowerShell)
}
