// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/solutions/v1beta1

package v1beta1

#AuthorizationInitParameters: {
	// Specifies a role definition identifier for the provider. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
	roleDefinitionId?: null | string @go(RoleDefinitionID,*string)

	// Specifies a service principal identifier for the provider. This is the identity that the provider will use to call ARM to manage the managed application resources.
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)
}

#AuthorizationObservation: {
	// Specifies a role definition identifier for the provider. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
	roleDefinitionId?: null | string @go(RoleDefinitionID,*string)

	// Specifies a service principal identifier for the provider. This is the identity that the provider will use to call ARM to manage the managed application resources.
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)
}

#AuthorizationParameters: {
	// Specifies a role definition identifier for the provider. This role will define all the permissions that the provider must have on the managed application's container resource group. This role definition cannot have permission to delete the resource group.
	// +kubebuilder:validation:Optional
	roleDefinitionId?: null | string @go(RoleDefinitionID,*string)

	// Specifies a service principal identifier for the provider. This is the identity that the provider will use to call ARM to manage the managed application resources.
	// +kubebuilder:validation:Optional
	servicePrincipalId?: null | string @go(ServicePrincipalID,*string)
}

#ManagedApplicationDefinitionInitParameters: {
	// One or more authorization block defined below.
	authorization?: [...#AuthorizationInitParameters] @go(Authorization,[]AuthorizationInitParameters)

	// Specifies the createUiDefinition JSON for the backing template with Microsoft.Solutions/applications resource.
	createUiDefinition?: null | string @go(CreateUIDefinition,*string)

	// Specifies the managed application definition description.
	description?: null | string @go(Description,*string)

	// Specifies the managed application definition display name.
	displayName?: null | string @go(DisplayName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the managed application lock level. Valid values include CanNotDelete, None, ReadOnly. Changing this forces a new resource to be created.
	lockLevel?: null | string @go(LockLevel,*string)

	// Specifies the inline main template JSON which has resources to be provisioned.
	mainTemplate?: null | string @go(MainTemplate,*string)

	// Is the package enabled? Defaults to true.
	packageEnabled?: null | bool @go(PackageEnabled,*bool)

	// Specifies the managed application definition package file Uri.
	packageFileUri?: null | string @go(PackageFileURI,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ManagedApplicationDefinitionObservation: {
	// One or more authorization block defined below.
	authorization?: [...#AuthorizationObservation] @go(Authorization,[]AuthorizationObservation)

	// Specifies the createUiDefinition JSON for the backing template with Microsoft.Solutions/applications resource.
	createUiDefinition?: null | string @go(CreateUIDefinition,*string)

	// Specifies the managed application definition description.
	description?: null | string @go(Description,*string)

	// Specifies the managed application definition display name.
	displayName?: null | string @go(DisplayName,*string)

	// The ID of the Managed Application Definition.
	id?: null | string @go(ID,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Specifies the managed application lock level. Valid values include CanNotDelete, None, ReadOnly. Changing this forces a new resource to be created.
	lockLevel?: null | string @go(LockLevel,*string)

	// Specifies the inline main template JSON which has resources to be provisioned.
	mainTemplate?: null | string @go(MainTemplate,*string)

	// Is the package enabled? Defaults to true.
	packageEnabled?: null | bool @go(PackageEnabled,*bool)

	// Specifies the managed application definition package file Uri.
	packageFileUri?: null | string @go(PackageFileURI,*string)

	// The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ManagedApplicationDefinitionParameters: {
	// One or more authorization block defined below.
	// +kubebuilder:validation:Optional
	authorization?: [...#AuthorizationParameters] @go(Authorization,[]AuthorizationParameters)

	// Specifies the createUiDefinition JSON for the backing template with Microsoft.Solutions/applications resource.
	// +kubebuilder:validation:Optional
	createUiDefinition?: null | string @go(CreateUIDefinition,*string)

	// Specifies the managed application definition description.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the managed application definition display name.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Specifies the managed application lock level. Valid values include CanNotDelete, None, ReadOnly. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	lockLevel?: null | string @go(LockLevel,*string)

	// Specifies the inline main template JSON which has resources to be provisioned.
	// +kubebuilder:validation:Optional
	mainTemplate?: null | string @go(MainTemplate,*string)

	// Is the package enabled? Defaults to true.
	// +kubebuilder:validation:Optional
	packageEnabled?: null | bool @go(PackageEnabled,*bool)

	// Specifies the managed application definition package file Uri.
	// +kubebuilder:validation:Optional
	packageFileUri?: null | string @go(PackageFileURI,*string)

	// The name of the Resource Group where the Managed Application Definition should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// ManagedApplicationDefinitionSpec defines the desired state of ManagedApplicationDefinition
#ManagedApplicationDefinitionSpec: {
	forProvider: #ManagedApplicationDefinitionParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #ManagedApplicationDefinitionInitParameters @go(InitProvider)
}

// ManagedApplicationDefinitionStatus defines the observed state of ManagedApplicationDefinition.
#ManagedApplicationDefinitionStatus: {
	atProvider?: #ManagedApplicationDefinitionObservation @go(AtProvider)
}

// ManagedApplicationDefinition is the Schema for the ManagedApplicationDefinitions API. Manages a Managed Application Definition.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagedApplicationDefinition: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || has(self.initProvider.displayName)",message="displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.lockLevel) || has(self.initProvider.lockLevel)",message="lockLevel is a required parameter"
	spec:    #ManagedApplicationDefinitionSpec   @go(Spec)
	status?: #ManagedApplicationDefinitionStatus @go(Status)
}

// ManagedApplicationDefinitionList contains a list of ManagedApplicationDefinitions
#ManagedApplicationDefinitionList: {
	items: [...#ManagedApplicationDefinition] @go(Items,[]ManagedApplicationDefinition)
}
