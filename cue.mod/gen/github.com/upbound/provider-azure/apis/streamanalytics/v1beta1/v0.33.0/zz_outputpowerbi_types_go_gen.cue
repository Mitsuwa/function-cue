// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/streamanalytics/v1beta1

package v1beta1

#OutputPowerBIObservation: {
	// The name of the Power BI dataset.
	dataset?: null | string @go(DataSet,*string)

	// The ID of the Power BI group, this must be a valid UUID.
	groupId?: null | string @go(GroupID,*string)

	// The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
	groupName?: null | string @go(GroupName,*string)
	id?:        null | string @go(ID,*string)

	// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
	streamAnalyticsJobId?: null | string @go(StreamAnalyticsJobID,*string)

	// The name of the Power BI table under the specified dataset.
	table?: null | string @go(Table,*string)

	// The user display name of the user that was used to obtain the refresh token.
	tokenUserDisplayName?: null | string @go(TokenUserDisplayName,*string)

	// The user principal name (UPN) of the user that was used to obtain the refresh token.
	tokenUserPrincipalName?: null | string @go(TokenUserPrincipalName,*string)
}

#OutputPowerBIParameters: {
	// The name of the Power BI dataset.
	// +kubebuilder:validation:Optional
	dataset?: null | string @go(DataSet,*string)

	// The ID of the Power BI group, this must be a valid UUID.
	// +kubebuilder:validation:Optional
	groupId?: null | string @go(GroupID,*string)

	// The name of the Power BI group. Use this property to help remember which specific Power BI group id was used.
	// +kubebuilder:validation:Optional
	groupName?: null | string @go(GroupName,*string)

	// The ID of the Stream Analytics Job. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Job
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	streamAnalyticsJobId?: null | string @go(StreamAnalyticsJobID,*string)

	// The name of the Power BI table under the specified dataset.
	// +kubebuilder:validation:Optional
	table?: null | string @go(Table,*string)

	// The user display name of the user that was used to obtain the refresh token.
	// +kubebuilder:validation:Optional
	tokenUserDisplayName?: null | string @go(TokenUserDisplayName,*string)

	// The user principal name (UPN) of the user that was used to obtain the refresh token.
	// +kubebuilder:validation:Optional
	tokenUserPrincipalName?: null | string @go(TokenUserPrincipalName,*string)
}

// OutputPowerBISpec defines the desired state of OutputPowerBI
#OutputPowerBISpec: {
	forProvider: #OutputPowerBIParameters @go(ForProvider)
}

// OutputPowerBIStatus defines the observed state of OutputPowerBI.
#OutputPowerBIStatus: {
	atProvider?: #OutputPowerBIObservation @go(AtProvider)
}

// OutputPowerBI is the Schema for the OutputPowerBIs API. Manages a Stream Analytics Output powerBI.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#OutputPowerBI: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.dataset)",message="dataset is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.groupId)",message="groupId is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.groupName)",message="groupName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.table)",message="table is a required parameter"
	spec:    #OutputPowerBISpec   @go(Spec)
	status?: #OutputPowerBIStatus @go(Status)
}

// OutputPowerBIList contains a list of OutputPowerBIs
#OutputPowerBIList: {
	items: [...#OutputPowerBI] @go(Items,[]OutputPowerBI)
}
