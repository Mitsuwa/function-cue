// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#PrivateDNSZoneInitParameters: {
	// An soa_record block as defined below. Changing this forces a new resource to be created.
	soaRecord?: [...#PrivateDNSZoneSoaRecordInitParameters] @go(SoaRecord,[]PrivateDNSZoneSoaRecordInitParameters)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSZoneObservation: {
	// The Private DNS Zone ID.
	id?: null | string @go(ID,*string)

	// The maximum number of record sets that can be created in this Private DNS zone.
	maxNumberOfRecordSets?: null | float64 @go(MaxNumberOfRecordSets,*float64)

	// The maximum number of virtual networks that can be linked to this Private DNS zone.
	maxNumberOfVirtualNetworkLinks?: null | float64 @go(MaxNumberOfVirtualNetworkLinks,*float64)

	// The maximum number of virtual networks that can be linked to this Private DNS zone with registration enabled.
	maxNumberOfVirtualNetworkLinksWithRegistration?: null | float64 @go(MaxNumberOfVirtualNetworkLinksWithRegistration,*float64)

	// The current number of record sets in this Private DNS zone.
	numberOfRecordSets?: null | float64 @go(NumberOfRecordSets,*float64)

	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// An soa_record block as defined below. Changing this forces a new resource to be created.
	soaRecord?: [...#PrivateDNSZoneSoaRecordObservation] @go(SoaRecord,[]PrivateDNSZoneSoaRecordObservation)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSZoneParameters: {
	// Specifies the resource group where the resource exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// An soa_record block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	soaRecord?: [...#PrivateDNSZoneSoaRecordParameters] @go(SoaRecord,[]PrivateDNSZoneSoaRecordParameters)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSZoneSoaRecordInitParameters: {
	// The email contact for the SOA record.
	email?: null | string @go(Email,*string)

	// The expire time for the SOA record. Defaults to 2419200.
	expireTime?: null | float64 @go(ExpireTime,*float64)

	// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 10.
	minimumTtl?: null | float64 @go(MinimumTTL,*float64)

	// The refresh time for the SOA record. Defaults to 3600.
	refreshTime?: null | float64 @go(RefreshTime,*float64)

	// The retry time for the SOA record. Defaults to 300.
	retryTime?: null | float64 @go(RetryTime,*float64)

	// The Time To Live of the SOA Record in seconds. Defaults to 3600.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the Record Set.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSZoneSoaRecordObservation: {
	// The email contact for the SOA record.
	email?: null | string @go(Email,*string)

	// The expire time for the SOA record. Defaults to 2419200.
	expireTime?: null | float64 @go(ExpireTime,*float64)

	// The fully qualified domain name of the Record Set.
	fqdn?: null | string @go(Fqdn,*string)

	// The domain name of the authoritative name server for the SOA record.
	hostName?: null | string @go(HostName,*string)

	// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 10.
	minimumTtl?: null | float64 @go(MinimumTTL,*float64)

	// The refresh time for the SOA record. Defaults to 3600.
	refreshTime?: null | float64 @go(RefreshTime,*float64)

	// The retry time for the SOA record. Defaults to 300.
	retryTime?: null | float64 @go(RetryTime,*float64)

	// The serial number for the SOA record.
	serialNumber?: null | float64 @go(SerialNumber,*float64)

	// The Time To Live of the SOA Record in seconds. Defaults to 3600.
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the Record Set.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#PrivateDNSZoneSoaRecordParameters: {
	// The email contact for the SOA record.
	// +kubebuilder:validation:Optional
	email?: null | string @go(Email,*string)

	// The expire time for the SOA record. Defaults to 2419200.
	// +kubebuilder:validation:Optional
	expireTime?: null | float64 @go(ExpireTime,*float64)

	// The minimum Time To Live for the SOA record. By convention, it is used to determine the negative caching duration. Defaults to 10.
	// +kubebuilder:validation:Optional
	minimumTtl?: null | float64 @go(MinimumTTL,*float64)

	// The refresh time for the SOA record. Defaults to 3600.
	// +kubebuilder:validation:Optional
	refreshTime?: null | float64 @go(RefreshTime,*float64)

	// The retry time for the SOA record. Defaults to 300.
	// +kubebuilder:validation:Optional
	retryTime?: null | float64 @go(RetryTime,*float64)

	// The Time To Live of the SOA Record in seconds. Defaults to 3600.
	// +kubebuilder:validation:Optional
	ttl?: null | float64 @go(TTL,*float64)

	// A mapping of tags to assign to the Record Set.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// PrivateDNSZoneSpec defines the desired state of PrivateDNSZone
#PrivateDNSZoneSpec: {
	forProvider: #PrivateDNSZoneParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #PrivateDNSZoneInitParameters @go(InitProvider)
}

// PrivateDNSZoneStatus defines the observed state of PrivateDNSZone.
#PrivateDNSZoneStatus: {
	atProvider?: #PrivateDNSZoneObservation @go(AtProvider)
}

// PrivateDNSZone is the Schema for the PrivateDNSZones API. Manages a Private DNS Zone.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#PrivateDNSZone: {
	spec:    #PrivateDNSZoneSpec   @go(Spec)
	status?: #PrivateDNSZoneStatus @go(Status)
}

// PrivateDNSZoneList contains a list of PrivateDNSZones
#PrivateDNSZoneList: {
	items: [...#PrivateDNSZone] @go(Items,[]PrivateDNSZone)
}
