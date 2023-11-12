// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/dns/v1beta1

package v1beta1

#AlternativeNameServerConfigInitParameters: {
	// Sets an alternative name server for the associated networks. When specified,
	// all DNS queries are forwarded to a name server that you choose. Names such as .internal
	// are not available when an alternative name server is specified.
	// Structure is documented below.
	targetNameServers?: [...#AlternativeNameServerConfigTargetNameServersInitParameters] @go(TargetNameServers,[]AlternativeNameServerConfigTargetNameServersInitParameters)
}

#AlternativeNameServerConfigObservation: {
	// Sets an alternative name server for the associated networks. When specified,
	// all DNS queries are forwarded to a name server that you choose. Names such as .internal
	// are not available when an alternative name server is specified.
	// Structure is documented below.
	targetNameServers?: [...#AlternativeNameServerConfigTargetNameServersObservation] @go(TargetNameServers,[]AlternativeNameServerConfigTargetNameServersObservation)
}

#AlternativeNameServerConfigParameters: {
	// Sets an alternative name server for the associated networks. When specified,
	// all DNS queries are forwarded to a name server that you choose. Names such as .internal
	// are not available when an alternative name server is specified.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	targetNameServers?: [...#AlternativeNameServerConfigTargetNameServersParameters] @go(TargetNameServers,[]AlternativeNameServerConfigTargetNameServersParameters)
}

#AlternativeNameServerConfigTargetNameServersInitParameters: {
	// Forwarding path for this TargetNameServer. If unset or default Cloud DNS will make forwarding
	// decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
	// to the Internet. When set to private, Cloud DNS will always send queries through VPC for this target
	// Possible values are: default, private.
	forwardingPath?: null | string @go(ForwardingPath,*string)

	// IPv4 address to forward to.
	ipv4Address?: null | string @go(IPv4Address,*string)
}

#AlternativeNameServerConfigTargetNameServersObservation: {
	// Forwarding path for this TargetNameServer. If unset or default Cloud DNS will make forwarding
	// decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
	// to the Internet. When set to private, Cloud DNS will always send queries through VPC for this target
	// Possible values are: default, private.
	forwardingPath?: null | string @go(ForwardingPath,*string)

	// IPv4 address to forward to.
	ipv4Address?: null | string @go(IPv4Address,*string)
}

#AlternativeNameServerConfigTargetNameServersParameters: {
	// Forwarding path for this TargetNameServer. If unset or default Cloud DNS will make forwarding
	// decision based on address ranges, i.e. RFC1918 addresses go to the VPC, Non-RFC1918 addresses go
	// to the Internet. When set to private, Cloud DNS will always send queries through VPC for this target
	// Possible values are: default, private.
	// +kubebuilder:validation:Optional
	forwardingPath?: null | string @go(ForwardingPath,*string)

	// IPv4 address to forward to.
	// +kubebuilder:validation:Optional
	ipv4Address?: null | string @go(IPv4Address,*string)
}

#PolicyInitParameters: {
	// Sets an alternative name server for the associated networks.
	// When specified, all DNS queries are forwarded to a name server that you choose.
	// Names such as .internal are not available when an alternative name server is specified.
	// Structure is documented below.
	alternativeNameServerConfig?: [...#AlternativeNameServerConfigInitParameters] @go(AlternativeNameServerConfig,[]AlternativeNameServerConfigInitParameters)

	// A textual description field.
	description?: null | string @go(Description,*string)

	// Allows networks bound to this policy to receive DNS queries sent
	// by VMs or applications over VPN connections. When enabled, a
	// virtual IP address will be allocated from each of the sub-networks
	// that are bound to this policy.
	enableInboundForwarding?: null | bool @go(EnableInboundForwarding,*bool)

	// Controls whether logging is enabled for the networks bound to this policy.
	// Defaults to no logging if not set.
	enableLogging?: null | bool @go(EnableLogging,*bool)

	// List of network names specifying networks to which this policy is applied.
	// Structure is documented below.
	networks?: [...#PolicyNetworksInitParameters] @go(Networks,[]PolicyNetworksInitParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#PolicyNetworksInitParameters: {
}

#PolicyNetworksObservation: {
	// The id or fully qualified URL of the VPC network to forward queries to.
	// This should be formatted like projects/{project}/global/networks/{network} or
	// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
	networkUrl?: null | string @go(NetworkURL,*string)
}

#PolicyNetworksParameters: {
	// The id or fully qualified URL of the VPC network to forward queries to.
	// This should be formatted like projects/{project}/global/networks/{network} or
	// https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Network
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-gcp/config/common.ExtractResourceID()
	// +crossplane:generate:reference:refFieldName=NetworkRef
	// +crossplane:generate:reference:selectorFieldName=NetworkSelector
	// +kubebuilder:validation:Optional
	networkUrl?: null | string @go(NetworkURL,*string)
}

#PolicyObservation: {
	// Sets an alternative name server for the associated networks.
	// When specified, all DNS queries are forwarded to a name server that you choose.
	// Names such as .internal are not available when an alternative name server is specified.
	// Structure is documented below.
	alternativeNameServerConfig?: [...#AlternativeNameServerConfigObservation] @go(AlternativeNameServerConfig,[]AlternativeNameServerConfigObservation)

	// A textual description field.
	description?: null | string @go(Description,*string)

	// Allows networks bound to this policy to receive DNS queries sent
	// by VMs or applications over VPN connections. When enabled, a
	// virtual IP address will be allocated from each of the sub-networks
	// that are bound to this policy.
	enableInboundForwarding?: null | bool @go(EnableInboundForwarding,*bool)

	// Controls whether logging is enabled for the networks bound to this policy.
	// Defaults to no logging if not set.
	enableLogging?: null | bool @go(EnableLogging,*bool)

	// an identifier for the resource with format projects/{{project}}/policies/{{name}}
	id?: null | string @go(ID,*string)

	// List of network names specifying networks to which this policy is applied.
	// Structure is documented below.
	networks?: [...#PolicyNetworksObservation] @go(Networks,[]PolicyNetworksObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#PolicyParameters: {
	// Sets an alternative name server for the associated networks.
	// When specified, all DNS queries are forwarded to a name server that you choose.
	// Names such as .internal are not available when an alternative name server is specified.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	alternativeNameServerConfig?: [...#AlternativeNameServerConfigParameters] @go(AlternativeNameServerConfig,[]AlternativeNameServerConfigParameters)

	// A textual description field.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Allows networks bound to this policy to receive DNS queries sent
	// by VMs or applications over VPN connections. When enabled, a
	// virtual IP address will be allocated from each of the sub-networks
	// that are bound to this policy.
	// +kubebuilder:validation:Optional
	enableInboundForwarding?: null | bool @go(EnableInboundForwarding,*bool)

	// Controls whether logging is enabled for the networks bound to this policy.
	// Defaults to no logging if not set.
	// +kubebuilder:validation:Optional
	enableLogging?: null | bool @go(EnableLogging,*bool)

	// List of network names specifying networks to which this policy is applied.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	networks?: [...#PolicyNetworksParameters] @go(Networks,[]PolicyNetworksParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)
}

// PolicySpec defines the desired state of Policy
#PolicySpec: {
	forProvider: #PolicyParameters @go(ForProvider)

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
	initProvider?: #PolicyInitParameters @go(InitProvider)
}

// PolicyStatus defines the observed state of Policy.
#PolicyStatus: {
	atProvider?: #PolicyObservation @go(AtProvider)
}

// Policy is the Schema for the Policys API. A policy is a collection of DNS rules applied to one or more Virtual Private Cloud resources.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Policy: {
	spec:    #PolicySpec   @go(Spec)
	status?: #PolicyStatus @go(Status)
}

// PolicyList contains a list of Policys
#PolicyList: {
	items: [...#Policy] @go(Items,[]Policy)
}
