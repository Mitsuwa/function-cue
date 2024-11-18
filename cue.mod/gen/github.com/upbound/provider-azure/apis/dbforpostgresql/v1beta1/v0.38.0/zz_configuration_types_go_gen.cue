// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/dbforpostgresql/v1beta1

package v1beta1

#ConfigurationInitParameters: {
	// Specifies the name of the PostgreSQL Configuration, which needs to be a valid PostgreSQL configuration name. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
	value?: null | string @go(Value,*string)
}

#ConfigurationObservation: {
	// The ID of the PostgreSQL Configuration.
	id?: null | string @go(ID,*string)

	// Specifies the name of the PostgreSQL Configuration, which needs to be a valid PostgreSQL configuration name. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
	serverName?: null | string @go(ServerName,*string)

	// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
	value?: null | string @go(Value,*string)
}

#ConfigurationParameters: {
	// Specifies the name of the PostgreSQL Configuration, which needs to be a valid PostgreSQL configuration name. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Server
	// +kubebuilder:validation:Optional
	serverName?: null | string @go(ServerName,*string)

	// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// ConfigurationSpec defines the desired state of Configuration
#ConfigurationSpec: {
	forProvider: #ConfigurationParameters @go(ForProvider)

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
	initProvider?: #ConfigurationInitParameters @go(InitProvider)
}

// ConfigurationStatus defines the observed state of Configuration.
#ConfigurationStatus: {
	atProvider?: #ConfigurationObservation @go(AtProvider)
}

// Configuration is the Schema for the Configurations API. Sets a PostgreSQL Configuration value on a PostgreSQL Server.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Configuration: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || (has(self.initProvider) && has(self.initProvider.name))",message="spec.forProvider.name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.value) || (has(self.initProvider) && has(self.initProvider.value))",message="spec.forProvider.value is a required parameter"
	spec:    #ConfigurationSpec   @go(Spec)
	status?: #ConfigurationStatus @go(Status)
}

// ConfigurationList contains a list of Configurations
#ConfigurationList: {
	items: [...#Configuration] @go(Items,[]Configuration)
}
