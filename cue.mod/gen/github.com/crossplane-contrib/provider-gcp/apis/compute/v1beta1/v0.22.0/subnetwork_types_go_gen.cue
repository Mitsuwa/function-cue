// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/compute/v1beta1

package v1beta1

// SubnetworkParameters define the desired state of a Google Compute Engine VPC
// Subnetwork. Most fields map directly to a Subnetwork:
// https://cloud.google.com/compute/docs/reference/rest/v1/subnetworks
#SubnetworkParameters: {
	// IPCIDRRange: The range of internal addresses that are owned by this
	// subnetwork. Provide this property when you create the subnetwork. For
	// example, 10.0.0.0/8 or 192.168.0.0/16. Ranges must be unique and
	// non-overlapping within a network. Only IPv4 is supported. This field
	// can be set only at resource creation time.
	// +immutable
	ipCidrRange: string @go(IPCidrRange)

	// Network: The URL of the network to which this subnetwork belongs,
	// provided by the client when initially creating the subnetwork. Only
	// networks that are in the distributed mode can have subnetworks. This
	// field can be set only at resource creation time.
	// +optional
	// +immutable
	network?: null | string @go(Network,*string)

	// Region: URL of the region where the Subnetwork resides. This field
	// can be set only at resource creation time.
	// +optional
	// +immutable
	region: string @go(Region)

	// Description: An optional description of this resource. Provide this
	// property when you create the resource. This field can be set only at
	// resource creation time.
	// +optional
	// +immutable
	description?: null | string @go(Description,*string)

	// EnableFlowLogs: Whether to enable flow logging for this subnetwork.
	// If this field is not explicitly set, it will not appear in get
	// listings. If not set the default behavior is to disable flow logging.
	// +optional
	enableFlowLogs?: null | bool @go(EnableFlowLogs,*bool)

	// PrivateIPGoogleAccess: Whether the VMs in this subnet can access
	// Google services without assigned external IP addresses. This field
	// can be both set at resource creation time and updated using
	// setPrivateIPGoogleAccess.
	// +optional
	privateIpGoogleAccess?: null | bool @go(PrivateIPGoogleAccess,*bool)

	// SecondaryIPRanges: An array of configurations for secondary IP ranges
	// for VM instances contained in this subnetwork. The primary IP of such
	// VM must belong to the primary ipCidrRange of the subnetwork. The
	// alias IPs may belong to either primary or secondary ranges. This
	// field can be updated with a patch request.
	// +optional
	secondaryIpRanges?: [...null | #SubnetworkSecondaryRange] @go(SecondaryIPRanges,[]*SubnetworkSecondaryRange)
}

// A SubnetworkObservation represents the observed state of a Google Compute
// Engine VPC Subnetwork.
#SubnetworkObservation: {
	// CreationTimestamp: Creation timestamp in RFC3339 text
	// format.
	creationTimestamp?: string @go(CreationTimestamp)

	// Fingerprint: Fingerprint of this resource. A hash of the contents
	// stored in this object. This field is used in optimistic locking. This
	// field will be ignored when inserting a Subnetwork. An up-to-date
	// fingerprint must be provided in order to update the Subnetwork,
	// otherwise the request will fail with error 412 conditionNotMet.
	//
	// To see the latest fingerprint, make a get() request to retrieve a
	// Subnetwork.
	fingerprint?: string @go(Fingerprint)

	// GatewayAddress: The gateway address for default routes
	// to reach destination addresses outside this subnetwork.
	gatewayAddress?: string @go(GatewayAddress)

	// Id: The unique identifier for the resource. This
	// identifier is defined by the server.
	id?: uint64 @go(ID)

	// SelfLink: Server-defined URL for the resource.
	selfLink?: string @go(SelfLink)
}

// A SubnetworkSecondaryRange defines the state of a Google Compute Engine
// VPC Subnetwork secondary range.
#SubnetworkSecondaryRange: {
	// IPCIDRRange: The range of IP addresses belonging to this subnetwork
	// secondary range. Provide this property when you create the
	// subnetwork. Ranges must be unique and non-overlapping with all
	// primary and secondary IP ranges within a network. Only IPv4 is
	// supported.
	ipCidrRange: string @go(IPCidrRange)

	// RangeName: The name associated with this subnetwork secondary range,
	// used when adding an alias IP range to a VM instance. The name must be
	// 1-63 characters long, and comply with RFC1035. The name must be
	// unique within the subnetwork.
	rangeName: string @go(RangeName)
}

// A SubnetworkSpec defines the desired state of a Subnetwork.
#SubnetworkSpec: {
	forProvider: #SubnetworkParameters @go(ForProvider)
}

// A SubnetworkStatus represents the observed state of a Subnetwork.
#SubnetworkStatus: {
	atProvider?: #SubnetworkObservation @go(AtProvider)
}

// A Subnetwork is a managed resource that represents a Google Compute Engine
// VPC Subnetwork.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Subnetwork: {
	spec:    #SubnetworkSpec   @go(Spec)
	status?: #SubnetworkStatus @go(Status)
}

// SubnetworkList contains a list of Subnetwork.
#SubnetworkList: {
	items: [...#Subnetwork] @go(Items,[]Subnetwork)
}
