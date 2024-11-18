// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DNSCAARecordObservation: {
	// The FQDN of the DNS CAA Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The DNS CAA Record ID.
	id?: null | string @go(ID,*string)

	// A list of values that make up the CAA record. Each record block supports fields documented below.
	record?: [...#RecordObservation] @go(Record,[]RecordObservation)

	// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#DNSCAARecordParameters: {
	// A list of values that make up the CAA record. Each record block supports fields documented below.
	// +kubebuilder:validation:Optional
	record?: [...#RecordParameters] @go(Record,[]RecordParameters)

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

#RecordObservation: {
	// Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
	flags?: null | float64 @go(Flags,*float64)

	// A property tag, options are issue, issuewild and iodef.
	tag?: null | string @go(Tag,*string)

	// A property value such as a registrar domain.
	value?: null | string @go(Value,*string)
}

#RecordParameters: {
	// Extensible CAA flags, currently only 1 is implemented to set the issuer critical flag.
	// +kubebuilder:validation:Required
	flags?: null | float64 @go(Flags,*float64)

	// A property tag, options are issue, issuewild and iodef.
	// +kubebuilder:validation:Required
	tag?: null | string @go(Tag,*string)

	// A property value such as a registrar domain.
	// +kubebuilder:validation:Required
	value?: null | string @go(Value,*string)
}

// DNSCAARecordSpec defines the desired state of DNSCAARecord
#DNSCAARecordSpec: {
	forProvider: #DNSCAARecordParameters @go(ForProvider)
}

// DNSCAARecordStatus defines the observed state of DNSCAARecord.
#DNSCAARecordStatus: {
	atProvider?: #DNSCAARecordObservation @go(AtProvider)
}

// DNSCAARecord is the Schema for the DNSCAARecords API. Manages a DNS CAA Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DNSCAARecord: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.record)",message="record is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ttl)",message="ttl is a required parameter"
	spec:    #DNSCAARecordSpec   @go(Spec)
	status?: #DNSCAARecordStatus @go(Status)
}

// DNSCAARecordList contains a list of DNSCAARecords
#DNSCAARecordList: {
	items: [...#DNSCAARecord] @go(Items,[]DNSCAARecord)
}
