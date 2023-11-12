// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DNSNSRecordInitParameters: {
	// A list of values that make up the NS record.
	records?: [...null | string] @go(Records,[]*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#DNSNSRecordObservation: {
	// The FQDN of the DNS NS Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The DNS NS Record ID.
	id?: null | string @go(ID,*string)

	// A list of values that make up the NS record.
	records?: [...null | string] @go(Records,[]*string)

	// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#DNSNSRecordParameters: {
	// A list of values that make up the NS record.
	// +kubebuilder:validation:Optional
	records?: [...null | string] @go(Records,[]*string)

	// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	// +kubebuilder:validation:Optional
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=DNSZone
	// +kubebuilder:validation:Optional
	zoneName?: null | string @go(ZoneName,*string)
}

// DNSNSRecordSpec defines the desired state of DNSNSRecord
#DNSNSRecordSpec: {
	forProvider: #DNSNSRecordParameters @go(ForProvider)

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
	initProvider?: #DNSNSRecordInitParameters @go(InitProvider)
}

// DNSNSRecordStatus defines the observed state of DNSNSRecord.
#DNSNSRecordStatus: {
	atProvider?: #DNSNSRecordObservation @go(AtProvider)
}

// DNSNSRecord is the Schema for the DNSNSRecords API. Manages a DNS NS Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DNSNSRecord: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.records) || has(self.initProvider.records)",message="records is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ttl) || has(self.initProvider.ttl)",message="ttl is a required parameter"
	spec:    #DNSNSRecordSpec   @go(Spec)
	status?: #DNSNSRecordStatus @go(Status)
}

// DNSNSRecordList contains a list of DNSNSRecords
#DNSNSRecordList: {
	items: [...#DNSNSRecord] @go(Items,[]DNSNSRecord)
}
