// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/apigee/v1beta1

package v1beta1

#InstanceInitParameters: {
	// Optional. Customer accept list represents the list of projects (id/number) on customer
	// side that can privately connect to the service attachment. It is an optional field
	// which the customers can provide during the instance creation. By default, the customer
	// project associated with the Apigee organization will be included to the list.
	consumerAcceptList?: [...null | string] @go(ConsumerAcceptList,[]*string)

	// Description of the instance.
	description?: null | string @go(Description,*string)

	// Display name of the instance.
	displayName?: null | string @go(DisplayName,*string)

	// IP range represents the customer-provided CIDR block of length 22 that will be used for
	// the Apigee instance creation. This optional range, if provided, should be freely
	// available as part of larger named range the customer has allocated to the Service
	// Networking peering. If this is not provided, Apigee will automatically request for any
	// available /22 CIDR block from Service Networking. The customer should use this CIDR block
	// for configuring their firewall needs to allow traffic from Apigee.
	// Input format: "a.b.c.d/22"
	ipRange?: null | string @go(IPRange,*string)

	// Required. Compute Engine location where the instance resides.
	location?: null | string @go(Location,*string)

	// The size of the CIDR block range that will be reserved by the instance. For valid values,
	// see CidrRange on the documentation.
	peeringCidrRange?: null | string @go(PeeringCidrRange,*string)
}

#InstanceObservation: {
	// Optional. Customer accept list represents the list of projects (id/number) on customer
	// side that can privately connect to the service attachment. It is an optional field
	// which the customers can provide during the instance creation. By default, the customer
	// project associated with the Apigee organization will be included to the list.
	consumerAcceptList?: [...null | string] @go(ConsumerAcceptList,[]*string)

	// Description of the instance.
	description?: null | string @go(Description,*string)

	// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
	// Use the following format: projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)
	diskEncryptionKeyName?: null | string @go(DiskEncryptionKeyName,*string)

	// Display name of the instance.
	displayName?: null | string @go(DisplayName,*string)

	// Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
	host?: null | string @go(Host,*string)

	// an identifier for the resource with format {{org_id}}/instances/{{name}}
	id?: null | string @go(ID,*string)

	// IP range represents the customer-provided CIDR block of length 22 that will be used for
	// the Apigee instance creation. This optional range, if provided, should be freely
	// available as part of larger named range the customer has allocated to the Service
	// Networking peering. If this is not provided, Apigee will automatically request for any
	// available /22 CIDR block from Service Networking. The customer should use this CIDR block
	// for configuring their firewall needs to allow traffic from Apigee.
	// Input format: "a.b.c.d/22"
	ipRange?: null | string @go(IPRange,*string)

	// Required. Compute Engine location where the instance resides.
	location?: null | string @go(Location,*string)

	// The Apigee Organization associated with the Apigee instance,
	// in the format organizations/{{org_name}}.
	orgId?: null | string @go(OrgID,*string)

	// The size of the CIDR block range that will be reserved by the instance. For valid values,
	// see CidrRange on the documentation.
	peeringCidrRange?: null | string @go(PeeringCidrRange,*string)

	// Output only. Port number of the exposed Apigee endpoint.
	port?: null | string @go(Port,*string)

	// Output only. Resource name of the service attachment created for the instance in
	// the format: projects//regions//serviceAttachments/* Apigee customers can privately
	// forward traffic to this service attachment using the PSC endpoints.
	serviceAttachment?: null | string @go(ServiceAttachment,*string)
}

#InstanceParameters: {
	// Optional. Customer accept list represents the list of projects (id/number) on customer
	// side that can privately connect to the service attachment. It is an optional field
	// which the customers can provide during the instance creation. By default, the customer
	// project associated with the Apigee organization will be included to the list.
	// +kubebuilder:validation:Optional
	consumerAcceptList?: [...null | string] @go(ConsumerAcceptList,[]*string)

	// Description of the instance.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Customer Managed Encryption Key (CMEK) used for disk and volume encryption. Required for Apigee paid subscriptions only.
	// Use the following format: projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/kms/v1beta1.CryptoKey
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	diskEncryptionKeyName?: null | string @go(DiskEncryptionKeyName,*string)

	// Display name of the instance.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// IP range represents the customer-provided CIDR block of length 22 that will be used for
	// the Apigee instance creation. This optional range, if provided, should be freely
	// available as part of larger named range the customer has allocated to the Service
	// Networking peering. If this is not provided, Apigee will automatically request for any
	// available /22 CIDR block from Service Networking. The customer should use this CIDR block
	// for configuring their firewall needs to allow traffic from Apigee.
	// Input format: "a.b.c.d/22"
	// +kubebuilder:validation:Optional
	ipRange?: null | string @go(IPRange,*string)

	// Required. Compute Engine location where the instance resides.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// The Apigee Organization associated with the Apigee instance,
	// in the format organizations/{{org_name}}.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/apigee/v1beta1.Organization
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	orgId?: null | string @go(OrgID,*string)

	// The size of the CIDR block range that will be reserved by the instance. For valid values,
	// see CidrRange on the documentation.
	// +kubebuilder:validation:Optional
	peeringCidrRange?: null | string @go(PeeringCidrRange,*string)
}

// InstanceSpec defines the desired state of Instance
#InstanceSpec: {
	forProvider: #InstanceParameters @go(ForProvider)

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
	initProvider?: #InstanceInitParameters @go(InitProvider)
}

// InstanceStatus defines the observed state of Instance.
#InstanceStatus: {
	atProvider?: #InstanceObservation @go(AtProvider)
}

// Instance is the Schema for the Instances API. An
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Instance: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || (has(self.initProvider) && has(self.initProvider.location))",message="spec.forProvider.location is a required parameter"
	spec:    #InstanceSpec   @go(Spec)
	status?: #InstanceStatus @go(Status)
}

// InstanceList contains a list of Instances
#InstanceList: {
	items: [...#Instance] @go(Items,[]Instance)
}
