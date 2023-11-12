// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/synapse/v1beta1

package v1beta1

#PrivateLinkHubInitParameters: {
	// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A mapping of tags which should be assigned to the Synapse Private Link Hub.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateLinkHubObservation: {
	// The ID of the Synapse Private Link Hub.
	id?: null | string @go(ID,*string)

	// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Synapse Private Link Hub.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateLinkHubParameters: {
	// Specifies the Azure location where the Synapse Private Link Hub exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The name of the resource group in which to create the Synapse Private Link Hub. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Synapse Private Link Hub.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// PrivateLinkHubSpec defines the desired state of PrivateLinkHub
#PrivateLinkHubSpec: {
	forProvider: #PrivateLinkHubParameters @go(ForProvider)

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
	initProvider?: #PrivateLinkHubInitParameters @go(InitProvider)
}

// PrivateLinkHubStatus defines the observed state of PrivateLinkHub.
#PrivateLinkHubStatus: {
	atProvider?: #PrivateLinkHubObservation @go(AtProvider)
}

// PrivateLinkHub is the Schema for the PrivateLinkHubs API. Manages a Synapse Private Link Hub.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateLinkHub: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #PrivateLinkHubSpec   @go(Spec)
	status?: #PrivateLinkHubStatus @go(Status)
}

// PrivateLinkHubList contains a list of PrivateLinkHubs
#PrivateLinkHubList: {
	items: [...#PrivateLinkHub] @go(Items,[]PrivateLinkHub)
}
