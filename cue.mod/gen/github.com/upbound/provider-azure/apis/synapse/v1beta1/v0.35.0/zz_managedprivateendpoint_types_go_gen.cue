// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#ManagedPrivateEndpointInitParameters: {
	// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
	subresourceName?: null | string @go(SubresourceName,*string)
}

#ManagedPrivateEndpointObservation: {
	// The Synapse Managed Private Endpoint ID.
	id?: null | string @go(ID,*string)

	// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)

	// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
	subresourceName?: null | string @go(SubresourceName,*string)

	// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
	targetResourceId?: null | string @go(TargetResourceID,*string)
}

#ManagedPrivateEndpointParameters: {
	// Specifies the name which should be used for this Managed Private Endpoint. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Specifies the sub resource name which the Synapse Private Endpoint is able to connect to. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	subresourceName?: null | string @go(SubresourceName,*string)

	// The ID of the Synapse Workspace on which to create the Managed Private Endpoint. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/synapse/v1beta1.Workspace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	synapseWorkspaceId?: null | string @go(SynapseWorkspaceID,*string)

	// The ID of the Private Link Enabled Remote Resource which this Synapse Private Endpoint should be connected to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetResourceId?: null | string @go(TargetResourceID,*string)
}

// ManagedPrivateEndpointSpec defines the desired state of ManagedPrivateEndpoint
#ManagedPrivateEndpointSpec: {
	forProvider: #ManagedPrivateEndpointParameters @go(ForProvider)

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
	initProvider?: #ManagedPrivateEndpointInitParameters @go(InitProvider)
}

// ManagedPrivateEndpointStatus defines the observed state of ManagedPrivateEndpoint.
#ManagedPrivateEndpointStatus: {
	atProvider?: #ManagedPrivateEndpointObservation @go(AtProvider)
}

// ManagedPrivateEndpoint is the Schema for the ManagedPrivateEndpoints API. Manages a Synapse Managed Private Endpoint.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ManagedPrivateEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.name) || has(self.initProvider.name)",message="name is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.subresourceName) || has(self.initProvider.subresourceName)",message="subresourceName is a required parameter"
	spec:    #ManagedPrivateEndpointSpec   @go(Spec)
	status?: #ManagedPrivateEndpointStatus @go(Status)
}

// ManagedPrivateEndpointList contains a list of ManagedPrivateEndpoints
#ManagedPrivateEndpointList: {
	items: [...#ManagedPrivateEndpoint] @go(Items,[]ManagedPrivateEndpoint)
}
