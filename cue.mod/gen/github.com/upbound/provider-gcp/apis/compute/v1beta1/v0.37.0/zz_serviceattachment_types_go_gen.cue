// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#ConnectedEndpointsInitParameters: {
}

#ConnectedEndpointsObservation: {
	// (Output)
	// The URL of the consumer forwarding rule.
	endpoint?: null | string @go(Endpoint,*string)

	// (Output)
	// The status of the connection from the consumer forwarding rule to
	// this service attachment.
	status?: null | string @go(Status,*string)
}

#ConnectedEndpointsParameters: {
}

#ConsumerAcceptListsInitParameters: {
	// The number of consumer forwarding rules the consumer project can
	// create.
	connectionLimit?: null | float64 @go(ConnectionLimit,*float64)

	// A project that is allowed to connect to this service attachment.
	projectIdOrNum?: null | string @go(ProjectIDOrNum,*string)
}

#ConsumerAcceptListsObservation: {
	// The number of consumer forwarding rules the consumer project can
	// create.
	connectionLimit?: null | float64 @go(ConnectionLimit,*float64)

	// A project that is allowed to connect to this service attachment.
	projectIdOrNum?: null | string @go(ProjectIDOrNum,*string)
}

#ConsumerAcceptListsParameters: {
	// The number of consumer forwarding rules the consumer project can
	// create.
	// +kubebuilder:validation:Optional
	connectionLimit?: null | float64 @go(ConnectionLimit,*float64)

	// A project that is allowed to connect to this service attachment.
	// +kubebuilder:validation:Optional
	projectIdOrNum?: null | string @go(ProjectIDOrNum,*string)
}

#ServiceAttachmentInitParameters: {
	// The connection preference to use for this service attachment. Valid
	// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
	connectionPreference?: null | string @go(ConnectionPreference,*string)

	// An array of projects that are allowed to connect to this service
	// attachment.
	// Structure is documented below.
	consumerAcceptLists?: [...#ConsumerAcceptListsInitParameters] @go(ConsumerAcceptLists,[]ConsumerAcceptListsInitParameters)

	// An array of projects that are not allowed to connect to this service
	// attachment.
	consumerRejectLists?: [...null | string] @go(ConsumerRejectLists,[]*string)

	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// If specified, the domain name will be used during the integration between
	// the PSC connected endpoints and the Cloud DNS. For example, this is a
	// valid domain name: "p.mycompany.com.". Current max number of domain names
	// supported is 1.
	domainNames?: [...null | string] @go(DomainNames,[]*string)

	// If true, enable the proxy protocol which is for supplying client TCP/IP
	// address data in TCP connections that traverse proxies on their way to
	// destination servers.
	enableProxyProtocol?: null | bool @go(EnableProxyProtocol,*bool)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
	// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
	// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
	// For newly created service attachment, this boolean defaults to true.
	reconcileConnections?: null | bool @go(ReconcileConnections,*bool)
}

#ServiceAttachmentObservation: {
	// An array of the consumer forwarding rules connected to this service
	// attachment.
	// Structure is documented below.
	connectedEndpoints?: [...#ConnectedEndpointsObservation] @go(ConnectedEndpoints,[]ConnectedEndpointsObservation)

	// The connection preference to use for this service attachment. Valid
	// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
	connectionPreference?: null | string @go(ConnectionPreference,*string)

	// An array of projects that are allowed to connect to this service
	// attachment.
	// Structure is documented below.
	consumerAcceptLists?: [...#ConsumerAcceptListsObservation] @go(ConsumerAcceptLists,[]ConsumerAcceptListsObservation)

	// An array of projects that are not allowed to connect to this service
	// attachment.
	consumerRejectLists?: [...null | string] @go(ConsumerRejectLists,[]*string)

	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// If specified, the domain name will be used during the integration between
	// the PSC connected endpoints and the Cloud DNS. For example, this is a
	// valid domain name: "p.mycompany.com.". Current max number of domain names
	// supported is 1.
	domainNames?: [...null | string] @go(DomainNames,[]*string)

	// If true, enable the proxy protocol which is for supplying client TCP/IP
	// address data in TCP connections that traverse proxies on their way to
	// destination servers.
	enableProxyProtocol?: null | bool @go(EnableProxyProtocol,*bool)

	// Fingerprint of this resource. This field is used internally during
	// updates of this resource.
	fingerprint?: null | string @go(Fingerprint,*string)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/serviceAttachments/{{name}}
	id?: null | string @go(ID,*string)

	// An array of subnets that is provided for NAT in this service attachment.
	natSubnets?: [...null | string] @go(NATSubnets,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
	// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
	// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
	// For newly created service attachment, this boolean defaults to true.
	reconcileConnections?: null | bool @go(ReconcileConnections,*bool)

	// URL of the region where the resource resides.
	region?: null | string @go(Region,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// The URL of a forwarding rule that represents the service identified by
	// this service attachment.
	targetService?: null | string @go(TargetService,*string)
}

#ServiceAttachmentParameters: {
	// The connection preference to use for this service attachment. Valid
	// values include "ACCEPT_AUTOMATIC", "ACCEPT_MANUAL".
	// +kubebuilder:validation:Optional
	connectionPreference?: null | string @go(ConnectionPreference,*string)

	// An array of projects that are allowed to connect to this service
	// attachment.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	consumerAcceptLists?: [...#ConsumerAcceptListsParameters] @go(ConsumerAcceptLists,[]ConsumerAcceptListsParameters)

	// An array of projects that are not allowed to connect to this service
	// attachment.
	// +kubebuilder:validation:Optional
	consumerRejectLists?: [...null | string] @go(ConsumerRejectLists,[]*string)

	// An optional description of this resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// If specified, the domain name will be used during the integration between
	// the PSC connected endpoints and the Cloud DNS. For example, this is a
	// valid domain name: "p.mycompany.com.". Current max number of domain names
	// supported is 1.
	// +kubebuilder:validation:Optional
	domainNames?: [...null | string] @go(DomainNames,[]*string)

	// If true, enable the proxy protocol which is for supplying client TCP/IP
	// address data in TCP connections that traverse proxies on their way to
	// destination servers.
	// +kubebuilder:validation:Optional
	enableProxyProtocol?: null | bool @go(EnableProxyProtocol,*bool)

	// An array of subnets that is provided for NAT in this service attachment.
	// +crossplane:generate:reference:type=Subnetwork
	// +kubebuilder:validation:Optional
	natSubnets?: [...null | string] @go(NATSubnets,[]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// This flag determines whether a consumer accept/reject list change can reconcile the statuses of existing ACCEPTED or REJECTED PSC endpoints.
	// If false, connection policy update will only affect existing PENDING PSC endpoints. Existing ACCEPTED/REJECTED endpoints will remain untouched regardless how the connection policy is modified .
	// If true, update will affect both PENDING and ACCEPTED/REJECTED PSC endpoints. For example, an ACCEPTED PSC endpoint will be moved to REJECTED if its project is added to the reject list.
	// For newly created service attachment, this boolean defaults to true.
	// +kubebuilder:validation:Optional
	reconcileConnections?: null | bool @go(ReconcileConnections,*bool)

	// URL of the region where the resource resides.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The URL of a forwarding rule that represents the service identified by
	// this service attachment.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.ForwardingRule
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetService?: null | string @go(TargetService,*string)
}

// ServiceAttachmentSpec defines the desired state of ServiceAttachment
#ServiceAttachmentSpec: {
	forProvider: #ServiceAttachmentParameters @go(ForProvider)

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
	initProvider?: #ServiceAttachmentInitParameters @go(InitProvider)
}

// ServiceAttachmentStatus defines the observed state of ServiceAttachment.
#ServiceAttachmentStatus: {
	atProvider?: #ServiceAttachmentObservation @go(AtProvider)
}

// ServiceAttachment is the Schema for the ServiceAttachments API. Represents a ServiceAttachment resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#ServiceAttachment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.connectionPreference) || (has(self.initProvider) && has(self.initProvider.connectionPreference))",message="spec.forProvider.connectionPreference is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.enableProxyProtocol) || (has(self.initProvider) && has(self.initProvider.enableProxyProtocol))",message="spec.forProvider.enableProxyProtocol is a required parameter"
	spec:    #ServiceAttachmentSpec   @go(Spec)
	status?: #ServiceAttachmentStatus @go(Status)
}

// ServiceAttachmentList contains a list of ServiceAttachments
#ServiceAttachmentList: {
	items: [...#ServiceAttachment] @go(Items,[]ServiceAttachment)
}
