// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#CustomRouteObservation: {
	// A list of address blocks reserved for this virtual network in CIDR notation as defined below.
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)
}

#CustomRouteParameters: {
	// A list of address blocks reserved for this virtual network in CIDR notation as defined below.
	// +kubebuilder:validation:Optional
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)
}

#PeeringAddressesObservation: {
	// A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
	apipaAddresses?: [...null | string] @go(ApipaAddresses,[]*string)

	// A list of peering address assigned to the BGP peer of the Virtual Network Gateway.
	defaultAddresses?: [...null | string] @go(DefaultAddresses,[]*string)

	// The name of the IP configuration of this Virtual Network Gateway. In case there are multiple ip_configuration blocks defined, this property is required to specify.
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)

	// A list of tunnel IP addresses assigned to the BGP peer of the Virtual Network Gateway.
	tunnelIpAddresses?: [...null | string] @go(TunnelIPAddresses,[]*string)
}

#PeeringAddressesParameters: {
	// A list of Azure custom APIPA addresses assigned to the BGP peer of the Virtual Network Gateway.
	// +kubebuilder:validation:Optional
	apipaAddresses?: [...null | string] @go(ApipaAddresses,[]*string)

	// The name of the IP configuration of this Virtual Network Gateway. In case there are multiple ip_configuration blocks defined, this property is required to specify.
	// +kubebuilder:validation:Optional
	ipConfigurationName?: null | string @go(IPConfigurationName,*string)
}

#RevokedCertificateObservation: {
	// A user-defined name of the root certificate.
	name?: null | string @go(Name,*string)

	// Specifies the public data of the certificate.
	thumbprint?: null | string @go(Thumbprint,*string)
}

#RevokedCertificateParameters: {
	// A user-defined name of the root certificate.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Specifies the public data of the certificate.
	// +kubebuilder:validation:Required
	thumbprint?: null | string @go(Thumbprint,*string)
}

#RootCertificateObservation: {
	// A user-defined name of the root certificate.
	name?: null | string @go(Name,*string)

	// The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument must not include the -----BEGIN CERTIFICATE----- or -----END CERTIFICATE----- markers.
	publicCertData?: null | string @go(PublicCertData,*string)
}

#RootCertificateParameters: {
	// A user-defined name of the root certificate.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The public certificate of the root certificate authority. The certificate must be provided in Base-64 encoded X.509 format (PEM). In particular, this argument must not include the -----BEGIN CERTIFICATE----- or -----END CERTIFICATE----- markers.
	// +kubebuilder:validation:Required
	publicCertData?: null | string @go(PublicCertData,*string)
}

#VPNClientConfigurationObservation: {
	// The client id of the Azure VPN application.
	// See Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections for values
	aadAudience?: null | string @go(AADAudience,*string)

	// The STS url for your tenant
	aadIssuer?: null | string @go(AADIssuer,*string)

	// AzureAD Tenant URL
	aadTenant?: null | string @go(AADTenant,*string)

	// The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
	addressSpace?: [...null | string] @go(AddressSpace,[]*string)

	// The address of the Radius server.
	radiusServerAddress?: null | string @go(RadiusServerAddress,*string)

	// The secret used by the Radius server.
	radiusServerSecret?: null | string @go(RadiusServerSecret,*string)

	// One or more revoked_certificate blocks which are defined below.
	revokedCertificate?: [...#RevokedCertificateObservation] @go(RevokedCertificate,[]RevokedCertificateObservation)

	// One or more root_certificate blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
	rootCertificate?: [...#RootCertificateObservation] @go(RootCertificate,[]RootCertificateObservation)

	// List of the vpn authentication types for the virtual network gateway.
	// The supported values are AAD, Radius and Certificate.
	vpnAuthTypes?: [...null | string] @go(VPNAuthTypes,[]*string)

	// List of the protocols supported by the vpn client.
	// The supported values are SSTP, IkeV2 and OpenVPN.
	// Values SSTP and IkeV2 are incompatible with the use of
	// aad_tenant, aad_audience and aad_issuer.
	vpnClientProtocols?: [...null | string] @go(VPNClientProtocols,[]*string)
}

#VPNClientConfigurationParameters: {
	// The client id of the Azure VPN application.
	// See Create an Active Directory (AD) tenant for P2S OpenVPN protocol connections for values
	// +kubebuilder:validation:Optional
	aadAudience?: null | string @go(AADAudience,*string)

	// The STS url for your tenant
	// +kubebuilder:validation:Optional
	aadIssuer?: null | string @go(AADIssuer,*string)

	// AzureAD Tenant URL
	// +kubebuilder:validation:Optional
	aadTenant?: null | string @go(AADTenant,*string)

	// The address space out of which IP addresses for vpn clients will be taken. You can provide more than one address space, e.g. in CIDR notation.
	// +kubebuilder:validation:Required
	addressSpace: [...null | string] @go(AddressSpace,[]*string)

	// The address of the Radius server.
	// +kubebuilder:validation:Optional
	radiusServerAddress?: null | string @go(RadiusServerAddress,*string)

	// The secret used by the Radius server.
	// +kubebuilder:validation:Optional
	radiusServerSecret?: null | string @go(RadiusServerSecret,*string)

	// One or more revoked_certificate blocks which are defined below.
	// +kubebuilder:validation:Optional
	revokedCertificate?: [...#RevokedCertificateParameters] @go(RevokedCertificate,[]RevokedCertificateParameters)

	// One or more root_certificate blocks which are defined below. These root certificates are used to sign the client certificate used by the VPN clients to connect to the gateway.
	// +kubebuilder:validation:Optional
	rootCertificate?: [...#RootCertificateParameters] @go(RootCertificate,[]RootCertificateParameters)

	// List of the vpn authentication types for the virtual network gateway.
	// The supported values are AAD, Radius and Certificate.
	// +kubebuilder:validation:Optional
	vpnAuthTypes?: [...null | string] @go(VPNAuthTypes,[]*string)

	// List of the protocols supported by the vpn client.
	// The supported values are SSTP, IkeV2 and OpenVPN.
	// Values SSTP and IkeV2 are incompatible with the use of
	// aad_tenant, aad_audience and aad_issuer.
	// +kubebuilder:validation:Optional
	vpnClientProtocols?: [...null | string] @go(VPNClientProtocols,[]*string)
}

#VirtualNetworkGatewayBGPSettingsObservation: {
	// The Autonomous System Number (ASN) to use as part of the BGP.
	asn?: null | float64 @go(Asn,*float64)

	// The weight added to routes which have been learned through BGP peering. Valid values can be between 0 and 100.
	peerWeight?: null | float64 @go(PeerWeight,*float64)

	// A list of peering_addresses as defined below. Only one peering_addresses block can be specified except when active_active of this Virtual Network Gateway is true.
	peeringAddresses?: [...#PeeringAddressesObservation] @go(PeeringAddresses,[]PeeringAddressesObservation)
}

#VirtualNetworkGatewayBGPSettingsParameters: {
	// The Autonomous System Number (ASN) to use as part of the BGP.
	// +kubebuilder:validation:Optional
	asn?: null | float64 @go(Asn,*float64)

	// The weight added to routes which have been learned through BGP peering. Valid values can be between 0 and 100.
	// +kubebuilder:validation:Optional
	peerWeight?: null | float64 @go(PeerWeight,*float64)

	// A list of peering_addresses as defined below. Only one peering_addresses block can be specified except when active_active of this Virtual Network Gateway is true.
	// +kubebuilder:validation:Optional
	peeringAddresses?: [...#PeeringAddressesParameters] @go(PeeringAddresses,[]PeeringAddressesParameters)
}

#VirtualNetworkGatewayIPConfigurationObservation: {
	// A user-defined name of the IP configuration. Defaults to vnetGatewayConfig.
	name?: null | string @go(Name,*string)

	// Defines how the private IP address of the gateways virtual interface is assigned. Valid options are Static or Dynamic. Defaults to Dynamic.
	privateIpAddressAllocation?: null | string @go(PrivateIPAddressAllocation,*string)

	// The ID of the public IP address to associate with the Virtual Network Gateway.
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named GatewaySubnet. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualNetworkGatewayIPConfigurationParameters: {
	// A user-defined name of the IP configuration. Defaults to vnetGatewayConfig.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Defines how the private IP address of the gateways virtual interface is assigned. Valid options are Static or Dynamic. Defaults to Dynamic.
	// +kubebuilder:validation:Optional
	privateIpAddressAllocation?: null | string @go(PrivateIPAddressAllocation,*string)

	// The ID of the public IP address to associate with the Virtual Network Gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.PublicIP
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// The ID of the gateway subnet of a virtual network in which the virtual network gateway will be created. It is mandatory that the associated subnet is named GatewaySubnet. Therefore, each virtual network can contain at most a single Virtual Network Gateway.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualNetworkGatewayObservation: {
	// If true, an active-active Virtual Network Gateway will be created. An active-active gateway requires a HighPerformance or an UltraPerformance SKU. If false, an active-standby gateway will be created. Defaults to false.
	activeActive?: null | bool @go(ActiveActive,*bool)

	// A bgp_settings block which is documented below. In this block the BGP specific settings can be defined.
	bgpSettings?: [...#VirtualNetworkGatewayBGPSettingsObservation] @go(BGPSettings,[]VirtualNetworkGatewayBGPSettingsObservation)

	// A custom_route block as defined below. Specifies a custom routes address space for a virtual network gateway and a VpnClient.
	customRoute?: [...#CustomRouteObservation] @go(CustomRoute,[]CustomRouteObservation)

	// The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (forced tunnelling). Refer to the Azure documentation on forced tunnelling. If not specified, forced tunnelling is disabled.
	defaultLocalNetworkGatewayId?: null | string @go(DefaultLocalNetworkGatewayID,*string)

	// Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created.
	edgeZone?: null | string @go(EdgeZone,*string)

	// If true, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to false.
	enableBgp?: null | bool @go(EnableBGP,*bool)

	// The Generation of the Virtual Network gateway. Possible values include Generation1, Generation2 or None. Changing this forces a new resource to be created.
	generation?: null | string @go(Generation,*string)

	// The ID of the Virtual Network Gateway.
	id?: null | string @go(ID,*string)

	// One, two or three ip_configuration blocks documented below.
	// An active-standby gateway requires exactly one ip_configuration block,
	// an active-active gateway requires exactly two ip_configuration blocks whereas
	// an active-active zone redundant gateway with P2S configuration requires exactly three ip_configuration blocks.
	ipConfiguration?: [...#VirtualNetworkGatewayIPConfigurationObservation] @go(IPConfiguration,[]VirtualNetworkGatewayIPConfigurationObservation)

	// The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created.
	privateIpAddressEnabled?: null | bool @go(PrivateIPAddressEnabled,*bool)

	// The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Configuration of the size and capacity of the virtual network gateway. Valid options are Basic, Standard, HighPerformance, UltraPerformance, ErGw1AZ, ErGw2AZ, ErGw3AZ, VpnGw1, VpnGw2, VpnGw3, VpnGw4,VpnGw5, VpnGw1AZ, VpnGw2AZ, VpnGw3AZ,VpnGw4AZ and VpnGw5AZ and depend on the type, vpn_type and generation arguments. A PolicyBased gateway only supports the Basic SKU. Further, the UltraPerformance SKU is only supported by an ExpressRoute gateway.
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of the Virtual Network Gateway. Valid options are Vpn or ExpressRoute. Changing the type forces a new resource to be created.
	type?: null | string @go(Type,*string)

	// A vpn_client_configuration block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections.
	vpnClientConfiguration?: [...#VPNClientConfigurationObservation] @go(VPNClientConfiguration,[]VPNClientConfigurationObservation)

	// The routing type of the Virtual Network Gateway. Valid options are RouteBased or PolicyBased. Defaults to RouteBased. Changing this forces a new resource to be created.
	vpnType?: null | string @go(VPNType,*string)
}

#VirtualNetworkGatewayParameters: {
	// If true, an active-active Virtual Network Gateway will be created. An active-active gateway requires a HighPerformance or an UltraPerformance SKU. If false, an active-standby gateway will be created. Defaults to false.
	// +kubebuilder:validation:Optional
	activeActive?: null | bool @go(ActiveActive,*bool)

	// A bgp_settings block which is documented below. In this block the BGP specific settings can be defined.
	// +kubebuilder:validation:Optional
	bgpSettings?: [...#VirtualNetworkGatewayBGPSettingsParameters] @go(BGPSettings,[]VirtualNetworkGatewayBGPSettingsParameters)

	// A custom_route block as defined below. Specifies a custom routes address space for a virtual network gateway and a VpnClient.
	// +kubebuilder:validation:Optional
	customRoute?: [...#CustomRouteParameters] @go(CustomRoute,[]CustomRouteParameters)

	// The ID of the local network gateway through which outbound Internet traffic from the virtual network in which the gateway is created will be routed (forced tunnelling). Refer to the Azure documentation on forced tunnelling. If not specified, forced tunnelling is disabled.
	// +kubebuilder:validation:Optional
	defaultLocalNetworkGatewayId?: null | string @go(DefaultLocalNetworkGatewayID,*string)

	// Specifies the Edge Zone within the Azure Region where this Virtual Network Gateway should exist. Changing this forces a new Virtual Network Gateway to be created.
	// +kubebuilder:validation:Optional
	edgeZone?: null | string @go(EdgeZone,*string)

	// If true, BGP (Border Gateway Protocol) will be enabled for this Virtual Network Gateway. Defaults to false.
	// +kubebuilder:validation:Optional
	enableBgp?: null | bool @go(EnableBGP,*bool)

	// The Generation of the Virtual Network gateway. Possible values include Generation1, Generation2 or None. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	generation?: null | string @go(Generation,*string)

	// One, two or three ip_configuration blocks documented below.
	// An active-standby gateway requires exactly one ip_configuration block,
	// an active-active gateway requires exactly two ip_configuration blocks whereas
	// an active-active zone redundant gateway with P2S configuration requires exactly three ip_configuration blocks.
	// +kubebuilder:validation:Optional
	ipConfiguration?: [...#VirtualNetworkGatewayIPConfigurationParameters] @go(IPConfiguration,[]VirtualNetworkGatewayIPConfigurationParameters)

	// The location/region where the Virtual Network Gateway is located. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Should private IP be enabled on this gateway for connections? Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	privateIpAddressEnabled?: null | bool @go(PrivateIPAddressEnabled,*bool)

	// The name of the resource group in which to create the Virtual Network Gateway. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// Configuration of the size and capacity of the virtual network gateway. Valid options are Basic, Standard, HighPerformance, UltraPerformance, ErGw1AZ, ErGw2AZ, ErGw3AZ, VpnGw1, VpnGw2, VpnGw3, VpnGw4,VpnGw5, VpnGw1AZ, VpnGw2AZ, VpnGw3AZ,VpnGw4AZ and VpnGw5AZ and depend on the type, vpn_type and generation arguments. A PolicyBased gateway only supports the Basic SKU. Further, the UltraPerformance SKU is only supported by an ExpressRoute gateway.
	// +kubebuilder:validation:Optional
	sku?: null | string @go(Sku,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The type of the Virtual Network Gateway. Valid options are Vpn or ExpressRoute. Changing the type forces a new resource to be created.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// A vpn_client_configuration block which is documented below. In this block the Virtual Network Gateway can be configured to accept IPSec point-to-site connections.
	// +kubebuilder:validation:Optional
	vpnClientConfiguration?: [...#VPNClientConfigurationParameters] @go(VPNClientConfiguration,[]VPNClientConfigurationParameters)

	// The routing type of the Virtual Network Gateway. Valid options are RouteBased or PolicyBased. Defaults to RouteBased. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	vpnType?: null | string @go(VPNType,*string)
}

// VirtualNetworkGatewaySpec defines the desired state of VirtualNetworkGateway
#VirtualNetworkGatewaySpec: {
	forProvider: #VirtualNetworkGatewayParameters @go(ForProvider)
}

// VirtualNetworkGatewayStatus defines the observed state of VirtualNetworkGateway.
#VirtualNetworkGatewayStatus: {
	atProvider?: #VirtualNetworkGatewayObservation @go(AtProvider)
}

// VirtualNetworkGateway is the Schema for the VirtualNetworkGateways API. Manages a virtual network gateway to establish secure, cross-premises connectivity.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#VirtualNetworkGateway: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.ipConfiguration)",message="ipConfiguration is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.sku)",message="sku is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.type)",message="type is a required parameter"
	spec:    #VirtualNetworkGatewaySpec   @go(Spec)
	status?: #VirtualNetworkGatewayStatus @go(Status)
}

// VirtualNetworkGatewayList contains a list of VirtualNetworkGateways
#VirtualNetworkGatewayList: {
	items: [...#VirtualNetworkGateway] @go(Items,[]VirtualNetworkGateway)
}
