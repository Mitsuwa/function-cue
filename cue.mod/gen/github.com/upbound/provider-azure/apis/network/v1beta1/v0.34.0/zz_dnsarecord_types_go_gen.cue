// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#DNSARecordObservation: {
	// The FQDN of the DNS A Record.
	fqdn?: null | string @go(Fqdn,*string)

	// The DNS A Record ID.
	id?: null | string @go(ID,*string)

	// List of IPv4 Addresses. Conflicts with target_resource_id.
	records?: [...null | string] @go(Records,[]*string)

	// Specifies the resource group where the DNS Zone (parent resource) exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Time To Live (TTL) of the DNS record in seconds.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The Azure resource id of the target object. Conflicts with records.
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
	zoneName?: null | string @go(ZoneName,*string)
}

#DNSARecordParameters: {
	// List of IPv4 Addresses. Conflicts with target_resource_id.
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

	// The Azure resource id of the target object. Conflicts with records.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.PublicIP
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetResourceId?: null | string @go(TargetResourceID,*string)

	// Specifies the DNS Zone where the resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=DNSZone
	// +kubebuilder:validation:Optional
	zoneName?: null | string @go(ZoneName,*string)
}

// DNSARecordSpec defines the desired state of DNSARecord
#DNSARecordSpec: {
	forProvider: #DNSARecordParameters @go(ForProvider)
}

// DNSARecordStatus defines the observed state of DNSARecord.
#DNSARecordStatus: {
	atProvider?: #DNSARecordObservation @go(AtProvider)
}

// DNSARecord is the Schema for the DNSARecords API. Manages a DNS A Record.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#DNSARecord: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ttl)",message="ttl is a required parameter"
	spec:    #DNSARecordSpec   @go(Spec)
	status?: #DNSARecordStatus @go(Status)
}

// DNSARecordList contains a list of DNSARecords
#DNSARecordList: {
	items: [...#DNSARecord] @go(Items,[]DNSARecord)
}
