// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/automation/v1beta1

package v1beta1

#ConnectionInitParameters: {
	// A description for this Connection.
	description?: null | string @go(Description,*string)

	// The type of the Connection - can be either builtin type such as Azure, AzureClassicCertificate, and AzureServicePrincipal, or a user defined types. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)

	// A mapping of key value pairs passed to the connection. Different type needs different parameters in the values. Builtin types have required field values as below:
	values?: {[string]: null | string} @go(Values,map[string]*string)
}

#ConnectionObservation: {
	// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// A description for this Connection.
	description?: null | string @go(Description,*string)

	// The Automation Connection ID.
	id?: null | string @go(ID,*string)

	// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The type of the Connection - can be either builtin type such as Azure, AzureClassicCertificate, and AzureServicePrincipal, or a user defined types. Changing this forces a new resource to be created.
	type?: null | string @go(Type,*string)

	// A mapping of key value pairs passed to the connection. Different type needs different parameters in the values. Builtin types have required field values as below:
	values?: {[string]: null | string} @go(Values,map[string]*string)
}

#ConnectionParameters: {
	// The name of the automation account in which the Connection is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/automation/v1beta1.Account
	// +kubebuilder:validation:Optional
	automationAccountName?: null | string @go(AutomationAccountName,*string)

	// A description for this Connection.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The name of the resource group in which the Connection is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The type of the Connection - can be either builtin type such as Azure, AzureClassicCertificate, and AzureServicePrincipal, or a user defined types. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// A mapping of key value pairs passed to the connection. Different type needs different parameters in the values. Builtin types have required field values as below:
	// +kubebuilder:validation:Optional
	values?: {[string]: null | string} @go(Values,map[string]*string)
}

// ConnectionSpec defines the desired state of Connection
#ConnectionSpec: {
	forProvider: #ConnectionParameters @go(ForProvider)

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
	initProvider?: #ConnectionInitParameters @go(InitProvider)
}

// ConnectionStatus defines the observed state of Connection.
#ConnectionStatus: {
	atProvider?: #ConnectionObservation @go(AtProvider)
}

// Connection is the Schema for the Connections API. Manages an Automation Connection.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Connection: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.type) || (has(self.initProvider) && has(self.initProvider.type))",message="spec.forProvider.type is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.values) || (has(self.initProvider) && has(self.initProvider.values))",message="spec.forProvider.values is a required parameter"
	spec:    #ConnectionSpec   @go(Spec)
	status?: #ConnectionStatus @go(Status)
}

// ConnectionList contains a list of Connections
#ConnectionList: {
	items: [...#Connection] @go(Items,[]Connection)
}
