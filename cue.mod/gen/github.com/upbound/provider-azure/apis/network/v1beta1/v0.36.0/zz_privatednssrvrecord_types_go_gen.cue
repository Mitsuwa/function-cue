// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSSRVRecordInitParameters: {
	// One or more record blocks as defined below.
	record?: [...#PrivateDNSSRVRecordRecordInitParameters] @go(Record,[]PrivateDNSSRVRecordRecordInitParameters)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSSRVRecordObservation: {
	// The FQDN of the DNS SRV Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The Private DNS SRV Record ID.
	id?: null | string @go(ID,*string)

	// One or more record blocks as defined below.
	record?: [...#PrivateDNSSRVRecordRecordObservation] @go(Record,[]PrivateDNSSRVRecordRecordObservation)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Specifies the Private DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#PrivateDNSSRVRecordParameters: {
	// One or more record blocks as defined below.
	// +kubebuilder:validation:Optional
	record?: [...#PrivateDNSSRVRecordRecordParameters] @go(Record,[]PrivateDNSSRVRecordRecordParameters)

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

#PrivateDNSSRVRecordRecordInitParameters: {
	// The Port the service is listening on.
	port?: null | float64 @go(Port,*float64)

	// The priority of the SRV record.
	priority?: null | float64 @go(Priority,*float64)

	// The FQDN of the service.
	target?: null | string @go(Target,*string)

	// The Weight of the SRV record.
	weight?: null | float64 @go(Weight,*float64)
}

#PrivateDNSSRVRecordRecordObservation: {
	// The Port the service is listening on.
	port?: null | float64 @go(Port,*float64)

	// The priority of the SRV record.
	priority?: null | float64 @go(Priority,*float64)

	// The FQDN of the service.
	target?: null | string @go(Target,*string)

	// The Weight of the SRV record.
	weight?: null | float64 @go(Weight,*float64)
}

#PrivateDNSSRVRecordRecordParameters: {
	// The Port the service is listening on.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The priority of the SRV record.
	// +kubebuilder:validation:Optional
	priority?: null | float64 @go(Priority,*float64)

	// The FQDN of the service.
	// +kubebuilder:validation:Optional
	target?: null | string @go(Target,*string)

	// The Weight of the SRV record.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

// PrivateDNSSRVRecordSpec defines the desired state of PrivateDNSSRVRecord
#PrivateDNSSRVRecordSpec: {
	forProvider: #PrivateDNSSRVRecordParameters @go(ForProvider)

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
	initProvider?: #PrivateDNSSRVRecordInitParameters @go(InitProvider)
}

// PrivateDNSSRVRecordStatus defines the observed state of PrivateDNSSRVRecord.
#PrivateDNSSRVRecordStatus: {
	atProvider?: #PrivateDNSSRVRecordObservation @go(AtProvider)
}

// PrivateDNSSRVRecord is the Schema for the PrivateDNSSRVRecords API. Manages a Private DNS SRV Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSSRVRecord: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.record) || has(self.initProvider.record)",message="record is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.ttl) || has(self.initProvider.ttl)",message="ttl is a required parameter"
	spec:    #PrivateDNSSRVRecordSpec   @go(Spec)
	status?: #PrivateDNSSRVRecordStatus @go(Status)
}

// PrivateDNSSRVRecordList contains a list of PrivateDNSSRVRecords
#PrivateDNSSRVRecordList: {
	items: [...#PrivateDNSSRVRecord] @go(Items,[]PrivateDNSSRVRecord)
}
