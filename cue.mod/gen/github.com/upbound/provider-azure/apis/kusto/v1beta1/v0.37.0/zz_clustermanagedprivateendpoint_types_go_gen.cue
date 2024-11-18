// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/kusto/v1beta1

package v1beta1

#ClusterManagedPrivateEndpointInitParameters: {
	// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
	groupId?: null | string @go(GroupID,*string)

	// The user request message.
	requestMessage?: null | string @go(RequestMessage,*string)
}

#ClusterManagedPrivateEndpointObservation: {
	// The name of the Kusto Cluster. Changing this forces a new resource to be created.
	clusterName?: null | string @go(ClusterName,*string)

	// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
	groupId?: null | string @go(GroupID,*string)
	id?:      null | string @go(ID,*string)

	// The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
	privateLinkResourceId?: null | string @go(PrivateLinkResourceID,*string)

	// The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
	privateLinkResourceRegion?: null | string @go(PrivateLinkResourceRegion,*string)

	// The user request message.
	requestMessage?: null | string @go(RequestMessage,*string)

	// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

#ClusterManagedPrivateEndpointParameters: {
	// The name of the Kusto Cluster. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/kusto/v1beta1.Cluster
	// +kubebuilder:validation:Optional
	clusterName?: null | string @go(ClusterName,*string)

	// The group id in which the managed private endpoint is created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	groupId?: null | string @go(GroupID,*string)

	// The ARM resource ID of the resource for which the managed private endpoint is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	privateLinkResourceId?: null | string @go(PrivateLinkResourceID,*string)

	// The region of the resource to which the managed private endpoint is created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/storage/v1beta1.Account
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("location",false)
	// +kubebuilder:validation:Optional
	privateLinkResourceRegion?: null | string @go(PrivateLinkResourceRegion,*string)

	// The user request message.
	// +kubebuilder:validation:Optional
	requestMessage?: null | string @go(RequestMessage,*string)

	// Specifies the Resource Group where the Kusto Cluster should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)
}

// ClusterManagedPrivateEndpointSpec defines the desired state of ClusterManagedPrivateEndpoint
#ClusterManagedPrivateEndpointSpec: {
	forProvider: #ClusterManagedPrivateEndpointParameters @go(ForProvider)

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
	initProvider?: #ClusterManagedPrivateEndpointInitParameters @go(InitProvider)
}

// ClusterManagedPrivateEndpointStatus defines the observed state of ClusterManagedPrivateEndpoint.
#ClusterManagedPrivateEndpointStatus: {
	atProvider?: #ClusterManagedPrivateEndpointObservation @go(AtProvider)
}

// ClusterManagedPrivateEndpoint is the Schema for the ClusterManagedPrivateEndpoints API. Manages a Managed Private Endpoint for a Kusto Cluster.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ClusterManagedPrivateEndpoint: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.groupId) || (has(self.initProvider) && has(self.initProvider.groupId))",message="spec.forProvider.groupId is a required parameter"
	spec:    #ClusterManagedPrivateEndpointSpec   @go(Spec)
	status?: #ClusterManagedPrivateEndpointStatus @go(Status)
}

// ClusterManagedPrivateEndpointList contains a list of ClusterManagedPrivateEndpoints
#ClusterManagedPrivateEndpointList: {
	items: [...#ClusterManagedPrivateEndpoint] @go(Items,[]ClusterManagedPrivateEndpoint)
}
