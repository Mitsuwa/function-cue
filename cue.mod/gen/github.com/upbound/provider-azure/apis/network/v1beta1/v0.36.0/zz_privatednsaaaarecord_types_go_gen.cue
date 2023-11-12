// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSAAAARecordInitParameters: {
	// A list of IPv6 Addresses.
	records?: [...null | string] @go(Records,[]*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSAAAARecordObservation: {
	// The FQDN of the DNS AAAA Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The Private DNS AAAA Record ID.
	id?: null | string @go(ID,*string)

	// A list of IPv6 Addresses.
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

#PrivateDNSAAAARecordParameters: {
	// A list of IPv6 Addresses.
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

// PrivateDNSAAAARecordSpec defines the desired state of PrivateDNSAAAARecord
#PrivateDNSAAAARecordSpec: {
	forProvider: #PrivateDNSAAAARecordParameters @go(ForProvider)

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
	initProvider?: #PrivateDNSAAAARecordInitParameters @go(InitProvider)
}

// PrivateDNSAAAARecordStatus defines the observed state of PrivateDNSAAAARecord.
#PrivateDNSAAAARecordStatus: {
	atProvider?: #PrivateDNSAAAARecordObservation @go(AtProvider)
}

// PrivateDNSAAAARecord is the Schema for the PrivateDNSAAAARecords API. Manages a Private DNS AAAA Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSAAAARecord: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.records) || has(self.initProvider.records)",message="records is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ttl) || has(self.initProvider.ttl)",message="ttl is a required parameter"
	spec:    #PrivateDNSAAAARecordSpec   @go(Spec)
	status?: #PrivateDNSAAAARecordStatus @go(Status)
}

// PrivateDNSAAAARecordList contains a list of PrivateDNSAAAARecords
#PrivateDNSAAAARecordList: {
	items: [...#PrivateDNSAAAARecord] @go(Items,[]PrivateDNSAAAARecord)
}
