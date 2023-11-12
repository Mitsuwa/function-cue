// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/insights/v1beta1

package v1beta1

#MonitorDataCollectionRuleAssociationInitParameters: {
	// The description of the Data Collection Rule Association.
	description?: null | string @go(Description,*string)
}

#MonitorDataCollectionRuleAssociationObservation: {
	// The ID of the Data Collection Endpoint which will be associated to the target resource.
	dataCollectionEndpointId?: null | string @go(DataCollectionEndpointID,*string)

	// The ID of the Data Collection Rule which will be associated to the target resource.
	dataCollectionRuleId?: null | string @go(DataCollectionRuleID,*string)

	// The description of the Data Collection Rule Association.
	description?: null | string @go(Description,*string)

	// The ID of the Data Collection Rule Association.
	id?: null | string @go(ID,*string)

	// The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
	targetResourceId?: null | string @go(TargetResourceID,*string)
}

#MonitorDataCollectionRuleAssociationParameters: {
	// The ID of the Data Collection Endpoint which will be associated to the target resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.MonitorDataCollectionEndpoint
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataCollectionEndpointId?: null | string @go(DataCollectionEndpointID,*string)

	// The ID of the Data Collection Rule which will be associated to the target resource.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/insights/v1beta1.MonitorDataCollectionRule
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	dataCollectionRuleId?: null | string @go(DataCollectionRuleID,*string)

	// The description of the Data Collection Rule Association.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The ID of the Azure Resource which to associate to a Data Collection Rule or a Data Collection Endpoint. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/compute/v1beta1.LinuxVirtualMachine
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetResourceId?: null | string @go(TargetResourceID,*string)
}

// MonitorDataCollectionRuleAssociationSpec defines the desired state of MonitorDataCollectionRuleAssociation
#MonitorDataCollectionRuleAssociationSpec: {
	forProvider: #MonitorDataCollectionRuleAssociationParameters @go(ForProvider)

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
	initProvider?: #MonitorDataCollectionRuleAssociationInitParameters @go(InitProvider)
}

// MonitorDataCollectionRuleAssociationStatus defines the observed state of MonitorDataCollectionRuleAssociation.
#MonitorDataCollectionRuleAssociationStatus: {
	atProvider?: #MonitorDataCollectionRuleAssociationObservation @go(AtProvider)
}

// MonitorDataCollectionRuleAssociation is the Schema for the MonitorDataCollectionRuleAssociations API. Manages a Data Collection Rule Association.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#MonitorDataCollectionRuleAssociation: {
	spec:    #MonitorDataCollectionRuleAssociationSpec   @go(Spec)
	status?: #MonitorDataCollectionRuleAssociationStatus @go(Status)
}

// MonitorDataCollectionRuleAssociationList contains a list of MonitorDataCollectionRuleAssociations
#MonitorDataCollectionRuleAssociationList: {
	items: [...#MonitorDataCollectionRuleAssociation] @go(Items,[]MonitorDataCollectionRuleAssociation)
}
