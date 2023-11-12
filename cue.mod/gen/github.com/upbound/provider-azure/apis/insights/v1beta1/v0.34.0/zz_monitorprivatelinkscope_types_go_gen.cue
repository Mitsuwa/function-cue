// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#MonitorPrivateLinkScopeObservation: {
	// The ID of the Azure Monitor Private Link Scope.
	id?: null | string @go(ID,*string)

	// The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Azure Monitor Private Link Scope.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#MonitorPrivateLinkScopeParameters: {
	// The name of the Resource Group where the Azure Monitor Private Link Scope should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the Azure Monitor Private Link Scope.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// MonitorPrivateLinkScopeSpec defines the desired state of MonitorPrivateLinkScope
#MonitorPrivateLinkScopeSpec: {
	forProvider: #MonitorPrivateLinkScopeParameters @go(ForProvider)
}

// MonitorPrivateLinkScopeStatus defines the observed state of MonitorPrivateLinkScope.
#MonitorPrivateLinkScopeStatus: {
	atProvider?: #MonitorPrivateLinkScopeObservation @go(AtProvider)
}

// MonitorPrivateLinkScope is the Schema for the MonitorPrivateLinkScopes API. Manages an Azure Monitor Private Link Scope
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorPrivateLinkScope: {
	spec:    #MonitorPrivateLinkScopeSpec   @go(Spec)
	status?: #MonitorPrivateLinkScopeStatus @go(Status)
}

// MonitorPrivateLinkScopeList contains a list of MonitorPrivateLinkScopes
#MonitorPrivateLinkScopeList: {
	items: [...#MonitorPrivateLinkScope] @go(Items,[]MonitorPrivateLinkScope)
}
