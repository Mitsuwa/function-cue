// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#MonitorPrivateLinkScopedServiceObservation: {
	// The ID of the Azure Monitor Private Link Scoped Service.
	id?: null | string @go(ID,*string)

	// The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
	linkedResourceId?: null | string @go(LinkedResourceID,*string)

	// The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
	scopeName?: null | string @go(ScopeName,*string)
}

#MonitorPrivateLinkScopedServiceParameters: {
	// The ID of the linked resource. It must be the Log Analytics workspace or the Application Insights component or the Data Collection endpoint. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=ApplicationInsights
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	linkedResourceId?: null | string @go(LinkedResourceID,*string)

	// The name of the Resource Group where the Azure Monitor Private Link Scoped Service should exist. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The name of the Azure Monitor Private Link Scope. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=MonitorPrivateLinkScope
	// +kubebuilder:validation:Optional
	scopeName?: null | string @go(ScopeName,*string)
}

// MonitorPrivateLinkScopedServiceSpec defines the desired state of MonitorPrivateLinkScopedService
#MonitorPrivateLinkScopedServiceSpec: {
	forProvider: #MonitorPrivateLinkScopedServiceParameters @go(ForProvider)
}

// MonitorPrivateLinkScopedServiceStatus defines the observed state of MonitorPrivateLinkScopedService.
#MonitorPrivateLinkScopedServiceStatus: {
	atProvider?: #MonitorPrivateLinkScopedServiceObservation @go(AtProvider)
}

// MonitorPrivateLinkScopedService is the Schema for the MonitorPrivateLinkScopedServices API. Manages an Azure Monitor Private Link Scoped Service
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorPrivateLinkScopedService: {
	spec:    #MonitorPrivateLinkScopedServiceSpec   @go(Spec)
	status?: #MonitorPrivateLinkScopedServiceStatus @go(Status)
}

// MonitorPrivateLinkScopedServiceList contains a list of MonitorPrivateLinkScopedServices
#MonitorPrivateLinkScopedServiceList: {
	items: [...#MonitorPrivateLinkScopedService] @go(Items,[]MonitorPrivateLinkScopedService)
}
