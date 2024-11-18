// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/automation/v1beta1

package v1beta1

#HashInitParameters: {
	// Specifies the algorithm used for the hash content.
	algorithm?: null | string @go(Algorithm,*string)

	// The hash value of the content.
	value?: null | string @go(Value,*string)
}

#HashObservation: {
	// Specifies the algorithm used for the hash content.
	algorithm?: null | string @go(Algorithm,*string)

	// The hash value of the content.
	value?: null | string @go(Value,*string)
}

#HashParameters: {
	// Specifies the algorithm used for the hash content.
	// +kubebuilder:validation:Optional
	algorithm?: null | string @go(Algorithm,*string)

	// The hash value of the content.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

#ModuleInitParameters: {
	// A module_link block as defined below.
	moduleLink?: [...#ModuleLinkInitParameters] @go(ModuleLink,[]ModuleLinkInitParameters)
}

#ModuleLinkInitParameters: {
	// A hash block as defined below.
	hash?: [...#HashInitParameters] @go(Hash,[]HashInitParameters)

	// The URI of the module content (zip or nupkg).
	uri?: null | string @go(URI,*string)
}

#ModuleLinkObservation: {
	// A hash block as defined below.
	hash?: [...#HashObservation] @go(Hash,[]HashObservation)

	// The URI of the module content (zip or nupkg).
	uri?: null | string @go(URI,*string)
}

#ModuleLinkParameters: {
	// A hash block as defined below.
	// +kubebuilder:validation:Optional
	hash?: [...#HashParameters] @go(Hash,[]HashParameters)

	// The URI of the module content (zip or nupkg).
	// +kubebuilder:validation:Optional
	uri?: null | string @go(URI,*string)
}

#ModuleObservation: {
	// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// The Automation Module ID.
	id?: null | string @go(ID,*string)

	// A module_link block as defined below.
	moduleLink?: [...#ModuleLinkObservation] @go(ModuleLink,[]ModuleLinkObservation)

	// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

#ModuleParameters: {
	// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.Account
	// +kubebuilder:validation:Optional
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// A module_link block as defined below.
	// +kubebuilder:validation:Optional
	moduleLink?: [...#ModuleLinkParameters] @go(ModuleLink,[]ModuleLinkParameters)

	// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

// ModuleSpec defines the desired state of Module
#ModuleSpec: {
	forProvider: #ModuleParameters @go(ForProvider)

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
	initProvider?: #ModuleInitParameters @go(InitProvider)
}

// ModuleStatus defines the observed state of Module.
#ModuleStatus: {
	atProvider?: #ModuleObservation @go(AtProvider)
}

// Module is the Schema for the Modules API. Manages a Automation Module.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Module: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.moduleLink) || (has(self.initProvider) && has(self.initProvider.moduleLink))",message="spec.forProvider.moduleLink is a required parameter"
	spec:    #ModuleSpec   @go(Spec)
	status?: #ModuleStatus @go(Status)
}

// ModuleList contains a list of Modules
#ModuleList: {
	items: [...#Module] @go(Items,[]Module)
}
