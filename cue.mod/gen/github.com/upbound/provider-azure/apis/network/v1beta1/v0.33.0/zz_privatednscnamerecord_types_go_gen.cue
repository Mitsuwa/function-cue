// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSCNAMERecordObservation: {
	// The FQDN of the DNS CNAME Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The Private DNS CNAME Record ID.
	id?: null | string @go(ID,*string)

	// The target of the CNAME.
	record?: null | string @go(Record,*string)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#PrivateDNSCNAMERecordParameters: {
	// The target of the CNAME.
	// +kubebuilder:validation:Optional
	record?: null | string @go(Record,*string)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	// +kubebuilder:validation:Optional
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=PrivateDNSZone
	// +kubebuilder:validation:Optional
	zoneName?: null | string @go(ZoneName,*string)
}

// PrivateDNSCNAMERecordSpec defines the desired state of PrivateDNSCNAMERecord
#PrivateDNSCNAMERecordSpec: {
	forProvider: #PrivateDNSCNAMERecordParameters @go(ForProvider)
}

// PrivateDNSCNAMERecordStatus defines the observed state of PrivateDNSCNAMERecord.
#PrivateDNSCNAMERecordStatus: {
	atProvider?: #PrivateDNSCNAMERecordObservation @go(AtProvider)
}

// PrivateDNSCNAMERecord is the Schema for the PrivateDNSCNAMERecords API. Manages a Private DNS CNAME Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSCNAMERecord: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.record)",message="record is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ttl)",message="ttl is a required parameter"
	spec:    #PrivateDNSCNAMERecordSpec   @go(Spec)
	status?: #PrivateDNSCNAMERecordStatus @go(Status)
}

// PrivateDNSCNAMERecordList contains a list of PrivateDNSCNAMERecords
#PrivateDNSCNAMERecordList: {
	items: [...#PrivateDNSCNAMERecord] @go(Items,[]PrivateDNSCNAMERecord)
}
