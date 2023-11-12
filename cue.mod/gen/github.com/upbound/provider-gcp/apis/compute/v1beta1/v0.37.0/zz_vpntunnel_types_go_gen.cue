// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#VPNTunnelInitParameters: {
	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// IKE protocol version to use when establishing the VPN tunnel with
	// peer VPN gateway.
	// Acceptable IKE versions are 1 or 2. Default version is 2.
	ikeVersion?: null | float64 @go(IkeVersion,*float64)

	// Local traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	localTrafficSelector?: [...null | string] @go(LocalTrafficSelector,[]*string)

	// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
	peerExternalGatewayInterface?: null | float64 @go(PeerExternalGatewayInterface,*float64)

	// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
	// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
	// ID in the peer GCP VPN gateway.
	// This field must reference a google_compute_ha_vpn_gateway resource.
	peerGcpGateway?: null | string @go(PeerGCPGateway,*string)

	// IP address of the peer VPN gateway. Only IPv4 is supported.
	peerIp?: null | string @go(PeerIP,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// Remote traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	remoteTrafficSelector?: [...null | string] @go(RemoteTrafficSelector,[]*string)

	// The interface ID of the VPN gateway with which this VPN tunnel is associated.
	vpnGatewayInterface?: null | float64 @go(VPNGatewayInterface,*float64)
}

#VPNTunnelObservation: {
	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource.
	description?: null | string @go(Description,*string)

	// Detailed status message for the VPN tunnel.
	detailedStatus?: null | string @go(DetailedStatus,*string)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/vpnTunnels/{{name}}
	id?: null | string @go(ID,*string)

	// IKE protocol version to use when establishing the VPN tunnel with
	// peer VPN gateway.
	// Acceptable IKE versions are 1 or 2. Default version is 2.
	ikeVersion?: null | float64 @go(IkeVersion,*float64)

	// Local traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	localTrafficSelector?: [...null | string] @go(LocalTrafficSelector,[]*string)

	// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
	peerExternalGateway?: null | string @go(PeerExternalGateway,*string)

	// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
	peerExternalGatewayInterface?: null | float64 @go(PeerExternalGatewayInterface,*float64)

	// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
	// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
	// ID in the peer GCP VPN gateway.
	// This field must reference a google_compute_ha_vpn_gateway resource.
	peerGcpGateway?: null | string @go(PeerGCPGateway,*string)

	// IP address of the peer VPN gateway. Only IPv4 is supported.
	peerIp?: null | string @go(PeerIP,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The region where the tunnel is located. If unset, is set to the region of target_vpn_gateway.
	region?: null | string @go(Region,*string)

	// Remote traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	remoteTrafficSelector?: [...null | string] @go(RemoteTrafficSelector,[]*string)

	// URL of router resource to be used for dynamic routing.
	router?: null | string @go(Router,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// Hash of the shared secret.
	sharedSecretHash?: null | string @go(SharedSecretHash,*string)

	// URL of the Target VPN gateway with which this VPN tunnel is
	// associated.
	targetVpnGateway?: null | string @go(TargetVPNGateway,*string)

	// The unique identifier for the resource. This identifier is defined by the server.
	tunnelId?: null | string @go(TunnelID,*string)

	// URL of the VPN gateway with which this VPN tunnel is associated.
	// This must be used if a High Availability VPN gateway resource is created.
	// This field must reference a google_compute_ha_vpn_gateway resource.
	vpnGateway?: null | string @go(VPNGateway,*string)

	// The interface ID of the VPN gateway with which this VPN tunnel is associated.
	vpnGatewayInterface?: null | float64 @go(VPNGatewayInterface,*float64)
}

#VPNTunnelParameters: {
	// An optional description of this resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// IKE protocol version to use when establishing the VPN tunnel with
	// peer VPN gateway.
	// Acceptable IKE versions are 1 or 2. Default version is 2.
	// +kubebuilder:validation:Optional
	ikeVersion?: null | float64 @go(IkeVersion,*float64)

	// Local traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	localTrafficSelector?: [...null | string] @go(LocalTrafficSelector,[]*string)

	// URL of the peer side external VPN gateway to which this VPN tunnel is connected.
	// +crossplane:generate:reference:type=ExternalVPNGateway
	// +kubebuilder:validation:Optional
	peerExternalGateway?: null | string @go(PeerExternalGateway,*string)

	// The interface ID of the external VPN gateway to which this VPN tunnel is connected.
	// +kubebuilder:validation:Optional
	peerExternalGatewayInterface?: null | float64 @go(PeerExternalGatewayInterface,*float64)

	// URL of the peer side HA GCP VPN gateway to which this VPN tunnel is connected.
	// If provided, the VPN tunnel will automatically use the same vpn_gateway_interface
	// ID in the peer GCP VPN gateway.
	// This field must reference a google_compute_ha_vpn_gateway resource.
	// +kubebuilder:validation:Optional
	peerGcpGateway?: null | string @go(PeerGCPGateway,*string)

	// IP address of the peer VPN gateway. Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	peerIp?: null | string @go(PeerIP,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The region where the tunnel is located. If unset, is set to the region of target_vpn_gateway.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Remote traffic selector to use when establishing the VPN tunnel with
	// peer VPN gateway. The value should be a CIDR formatted string,
	// for example 192.168.0.0/16. The ranges should be disjoint.
	// Only IPv4 is supported.
	// +kubebuilder:validation:Optional
	remoteTrafficSelector?: [...null | string] @go(RemoteTrafficSelector,[]*string)

	// URL of router resource to be used for dynamic routing.
	// +crossplane:generate:reference:type=Router
	// +kubebuilder:validation:Optional
	router?: null | string @go(Router,*string)

	// URL of the Target VPN gateway with which this VPN tunnel is
	// associated.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.VPNGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	targetVpnGateway?: null | string @go(TargetVPNGateway,*string)

	// URL of the VPN gateway with which this VPN tunnel is associated.
	// This must be used if a High Availability VPN gateway resource is created.
	// This field must reference a google_compute_ha_vpn_gateway resource.
	// +crossplane:generate:reference:type=HaVPNGateway
	// +kubebuilder:validation:Optional
	vpnGateway?: null | string @go(VPNGateway,*string)

	// The interface ID of the VPN gateway with which this VPN tunnel is associated.
	// +kubebuilder:validation:Optional
	vpnGatewayInterface?: null | float64 @go(VPNGatewayInterface,*float64)
}

// VPNTunnelSpec defines the desired state of VPNTunnel
#VPNTunnelSpec: {
	forProvider: #VPNTunnelParameters @go(ForProvider)

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
	initProvider?: #VPNTunnelInitParameters @go(InitProvider)
}

// VPNTunnelStatus defines the observed state of VPNTunnel.
#VPNTunnelStatus: {
	atProvider?: #VPNTunnelObservation @go(AtProvider)
}

// VPNTunnel is the Schema for the VPNTunnels API. VPN tunnel resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#VPNTunnel: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.sharedSecretSecretRef)",message="spec.forProvider.sharedSecretSecretRef is a required parameter"
	spec:    #VPNTunnelSpec   @go(Spec)
	status?: #VPNTunnelStatus @go(Status)
}

// VPNTunnelList contains a list of VPNTunnels
#VPNTunnelList: {
	items: [...#VPNTunnel] @go(Items,[]VPNTunnel)
}
