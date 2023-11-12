// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSTXTRecordInitParameters: {
	// One or more record blocks as defined below.
	record?: [...#PrivateDNSTXTRecordRecordInitParameters] @go(Record,[]PrivateDNSTXTRecordRecordInitParameters)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSTXTRecordObservation: {
	// The FQDN of the DNS TXT Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The Private DNS TXT Record ID.
	id?: null | string @go(ID,*string)

	// One or more record blocks as defined below.
	record?: [...#PrivateDNSTXTRecordRecordObservation] @go(Record,[]PrivateDNSTXTRecordRecordObservation)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#PrivateDNSTXTRecordParameters: {
	// One or more record blocks as defined below.
	// +kubebuilder:validation:Optional
	record?: [...#PrivateDNSTXTRecordRecordParameters] @go(Record,[]PrivateDNSTXTRecordRecordParameters)

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

#PrivateDNSTXTRecordRecordInitParameters: {
	// The value of the TXT record. Max length: 1024 characters
	value?: null | string @go(Value,*string)
}

#PrivateDNSTXTRecordRecordObservation: {
	// The value of the TXT record. Max length: 1024 characters
	value?: null | string @go(Value,*string)
}

#PrivateDNSTXTRecordRecordParameters: {
	// The value of the TXT record. Max length: 1024 characters
	// +kubebuilder:validation:Optional
	value?: null | string @go(Value,*string)
}

// PrivateDNSTXTRecordSpec defines the desired state of PrivateDNSTXTRecord
#PrivateDNSTXTRecordSpec: {
	forProvider: #PrivateDNSTXTRecordParameters @go(ForProvider)

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
	initProvider?: #PrivateDNSTXTRecordInitParameters @go(InitProvider)
}

// PrivateDNSTXTRecordStatus defines the observed state of PrivateDNSTXTRecord.
#PrivateDNSTXTRecordStatus: {
	atProvider?: #PrivateDNSTXTRecordObservation @go(AtProvider)
}

// PrivateDNSTXTRecord is the Schema for the PrivateDNSTXTRecords API. Manages a Private DNS TXT Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSTXTRecord: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.record) || has(self.initProvider.record)",message="record is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ttl) || has(self.initProvider.ttl)",message="ttl is a required parameter"
	spec:    #PrivateDNSTXTRecordSpec   @go(Spec)
	status?: #PrivateDNSTXTRecordStatus @go(Status)
}

// PrivateDNSTXTRecordList contains a list of PrivateDNSTXTRecords
#PrivateDNSTXTRecordList: {
	items: [...#PrivateDNSTXTRecord] @go(Items,[]PrivateDNSTXTRecord)
}
