// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSPTRRecordInitParameters: {
	// List of Fully Qualified Domain Names.
	records?: [...null | string] @go(Records,[]*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSPTRRecordObservation: {
	// The FQDN of the DNS PTR Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The Private DNS PTR Record ID.
	id?: null | string @go(ID,*string)

	// List of Fully Qualified Domain Names.
	records?: [...null | string] @go(Records,[]*string)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#PrivateDNSPTRRecordParameters: {
	// List of Fully Qualified Domain Names.
	// +kubebuilder:validation:Optional
	records?: [...null | string] @go(Records,[]*string)

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

// PrivateDNSPTRRecordSpec defines the desired state of PrivateDNSPTRRecord
#PrivateDNSPTRRecordSpec: {
	forProvider: #PrivateDNSPTRRecordParameters @go(ForProvider)

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
	initProvider?: #PrivateDNSPTRRecordInitParameters @go(InitProvider)
}

// PrivateDNSPTRRecordStatus defines the observed state of PrivateDNSPTRRecord.
#PrivateDNSPTRRecordStatus: {
	atProvider?: #PrivateDNSPTRRecordObservation @go(AtProvider)
}

// PrivateDNSPTRRecord is the Schema for the PrivateDNSPTRRecords API. Manages a Private DNS PTR Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSPTRRecord: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.records) || (has(self.initProvider) && has(self.initProvider.records))",message="spec.forProvider.records is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ttl) || (has(self.initProvider) && has(self.initProvider.ttl))",message="spec.forProvider.ttl is a required parameter"
	spec:    #PrivateDNSPTRRecordSpec   @go(Spec)
	status?: #PrivateDNSPTRRecordStatus @go(Status)
}

// PrivateDNSPTRRecordList contains a list of PrivateDNSPTRRecords
#PrivateDNSPTRRecordList: {
	items: [...#PrivateDNSPTRRecord] @go(Items,[]PrivateDNSPTRRecord)
}
