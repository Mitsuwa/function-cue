// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ec2/v1beta1

package v1beta1

#CloudwatchLogOptionsObservation: {
	// Enable or disable VPN tunnel logging feature. The default is false.
	logEnabled?: null | bool @go(LogEnabled,*bool)

	// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
	logGroupArn?: null | string @go(LogGroupArn,*string)

	// Set log format. Default format is json. Possible values are: json and text. The default is json.
	logOutputFormat?: null | string @go(LogOutputFormat,*string)
}

#CloudwatchLogOptionsParameters: {
	// Enable or disable VPN tunnel logging feature. The default is false.
	// +kubebuilder:validation:Optional
	logEnabled?: null | bool @go(LogEnabled,*bool)

	// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
	// +kubebuilder:validation:Optional
	logGroupArn?: null | string @go(LogGroupArn,*string)

	// Set log format. Default format is json. Possible values are: json and text. The default is json.
	// +kubebuilder:validation:Optional
	logOutputFormat?: null | string @go(LogOutputFormat,*string)
}

#RoutesObservation: {
	// The CIDR block associated with the local subnet of the customer data center.
	destinationCidrBlock?: null | string @go(DestinationCidrBlock,*string)

	// Indicates how the routes were provided.
	source?: null | string @go(Source,*string)

	// The current state of the static route.
	state?: null | string @go(State,*string)
}

#RoutesParameters: {
}

#Tunnel1LogOptionsObservation: {
	// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
	cloudwatchLogOptions?: [...#CloudwatchLogOptionsObservation] @go(CloudwatchLogOptions,[]CloudwatchLogOptionsObservation)
}

#Tunnel1LogOptionsParameters: {
	// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
	// +kubebuilder:validation:Optional
	cloudwatchLogOptions?: [...#CloudwatchLogOptionsParameters] @go(CloudwatchLogOptions,[]CloudwatchLogOptionsParameters)
}

#Tunnel2LogOptionsCloudwatchLogOptionsObservation: {
	// Enable or disable VPN tunnel logging feature. The default is false.
	logEnabled?: null | bool @go(LogEnabled,*bool)

	// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
	logGroupArn?: null | string @go(LogGroupArn,*string)

	// Set log format. Default format is json. Possible values are: json and text. The default is json.
	logOutputFormat?: null | string @go(LogOutputFormat,*string)
}

#Tunnel2LogOptionsCloudwatchLogOptionsParameters: {
	// Enable or disable VPN tunnel logging feature. The default is false.
	// +kubebuilder:validation:Optional
	logEnabled?: null | bool @go(LogEnabled,*bool)

	// The Amazon Resource Name (ARN) of the CloudWatch log group to send logs to.
	// +kubebuilder:validation:Optional
	logGroupArn?: null | string @go(LogGroupArn,*string)

	// Set log format. Default format is json. Possible values are: json and text. The default is json.
	// +kubebuilder:validation:Optional
	logOutputFormat?: null | string @go(LogOutputFormat,*string)
}

#Tunnel2LogOptionsObservation: {
	// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
	cloudwatchLogOptions?: [...#Tunnel2LogOptionsCloudwatchLogOptionsObservation] @go(CloudwatchLogOptions,[]Tunnel2LogOptionsCloudwatchLogOptionsObservation)
}

#Tunnel2LogOptionsParameters: {
	// Options for sending VPN tunnel logs to CloudWatch. See CloudWatch Log Options below for more details.
	// +kubebuilder:validation:Optional
	cloudwatchLogOptions?: [...#Tunnel2LogOptionsCloudwatchLogOptionsParameters] @go(CloudwatchLogOptions,[]Tunnel2LogOptionsCloudwatchLogOptionsParameters)
}

#VPNConnectionObservation_2: {
	// Amazon Resource Name (ARN) of the VPN Connection.
	arn?: null | string @go(Arn,*string)

	// The ARN of the core network.
	coreNetworkArn?: null | string @go(CoreNetworkArn,*string)

	// The ARN of the core network attachment.
	coreNetworkAttachmentArn?: null | string @go(CoreNetworkAttachmentArn,*string)

	// The ID of the customer gateway.
	customerGatewayId?: null | string @go(CustomerGatewayID,*string)

	// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
	enableAcceleration?: null | bool @go(EnableAcceleration,*bool)

	// The amazon-assigned ID of the VPN connection.
	id?: null | string @go(ID,*string)

	// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
	localIpv4NetworkCidr?: null | string @go(LocalIPv4NetworkCidr,*string)

	// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
	localIpv6NetworkCidr?: null | string @go(LocalIPv6NetworkCidr,*string)

	// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are PublicIpv4 | PrivateIpv4
	outsideIpAddressType?: null | string @go(OutsideIPAddressType,*string)

	// The IPv4 CIDR on the AWS side of the VPN connection.
	remoteIpv4NetworkCidr?: null | string @go(RemoteIPv4NetworkCidr,*string)

	// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
	remoteIpv6NetworkCidr?: null | string @go(RemoteIPv6NetworkCidr,*string)

	// The static routes associated with the VPN connection. Detailed below.
	routes?: [...#RoutesObservation] @go(Routes,[]RoutesObservation)

	// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
	staticRoutesOnly?: null | bool @go(StaticRoutesOnly,*bool)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// When associated with an EC2 Transit Gateway (transit_gateway_id argument), the attachment ID. See also the aws_ec2_tag resource for tagging the EC2 Transit Gateway VPN Attachment.
	transitGatewayAttachmentId?: null | string @go(TransitGatewayAttachmentID,*string)

	// The ID of the EC2 Transit Gateway.
	transitGatewayId?: null | string @go(TransitGatewayID,*string)

	// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
	transportTransitGatewayAttachmentId?: null | string @go(TransportTransitGatewayAttachmentID,*string)

	// The public IP address of the first VPN tunnel.
	tunnel1Address?: null | string @go(Tunnel1Address,*string)

	// The bgp asn number of the first VPN tunnel.
	tunnel1BgpAsn?: null | string @go(Tunnel1BGPAsn,*string)

	// The bgp holdtime of the first VPN tunnel.
	tunnel1BgpHoldtime?: null | float64 @go(Tunnel1BGPHoldtime,*float64)

	// The RFC 6890 link-local address of the first VPN tunnel (Customer Gateway Side).
	tunnel1CgwInsideAddress?: null | string @go(Tunnel1CgwInsideAddress,*string)

	// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart.
	tunnel1DpdTimeoutAction?: null | string @go(Tunnel1DpdTimeoutAction,*string)

	// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than 30.
	tunnel1DpdTimeoutSeconds?: null | float64 @go(Tunnel1DpdTimeoutSeconds,*float64)

	// The IKE versions that are permitted for the first VPN tunnel. Valid values are ikev1 | ikev2.
	tunnel1IkeVersions?: [...null | string] @go(Tunnel1IkeVersions,[]*string)

	// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
	tunnel1InsideCidr?: null | string @go(Tunnel1InsideCidr,*string)

	// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
	tunnel1InsideIpv6Cidr?: null | string @go(Tunnel1InsideIPv6Cidr,*string)

	// Options for logging VPN tunnel activity. See Log Options below for more details.
	tunnel1LogOptions?: [...#Tunnel1LogOptionsObservation] @go(Tunnel1LogOptions,[]Tunnel1LogOptionsObservation)

	// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	tunnel1Phase1DhGroupNumbers?: [...null | float64] @go(Tunnel1Phase1DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	tunnel1Phase1EncryptionAlgorithms?: [...null | string] @go(Tunnel1Phase1EncryptionAlgorithms,[]*string)

	// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	tunnel1Phase1IntegrityAlgorithms?: [...null | string] @go(Tunnel1Phase1IntegrityAlgorithms,[]*string)

	// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 28800.
	tunnel1Phase1LifetimeSeconds?: null | float64 @go(Tunnel1Phase1LifetimeSeconds,*float64)

	// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	tunnel1Phase2DhGroupNumbers?: [...null | float64] @go(Tunnel1Phase2DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	tunnel1Phase2EncryptionAlgorithms?: [...null | string] @go(Tunnel1Phase2EncryptionAlgorithms,[]*string)

	// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	tunnel1Phase2IntegrityAlgorithms?: [...null | string] @go(Tunnel1Phase2IntegrityAlgorithms,[]*string)

	// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 3600.
	tunnel1Phase2LifetimeSeconds?: null | float64 @go(Tunnel1Phase2LifetimeSeconds,*float64)

	// The percentage of the rekey window for the first VPN tunnel (determined by tunnel1_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100.
	tunnel1RekeyFuzzPercentage?: null | float64 @go(Tunnel1RekeyFuzzPercentage,*float64)

	// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel1_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel1_phase2_lifetime_seconds.
	tunnel1RekeyMarginTimeSeconds?: null | float64 @go(Tunnel1RekeyMarginTimeSeconds,*float64)

	// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between 64 and 2048.
	tunnel1ReplayWindowSize?: null | float64 @go(Tunnel1ReplayWindowSize,*float64)

	// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.
	tunnel1StartupAction?: null | string @go(Tunnel1StartupAction,*string)

	// The RFC 6890 link-local address of the first VPN tunnel (VPN Gateway Side).
	tunnel1VgwInsideAddress?: null | string @go(Tunnel1VgwInsideAddress,*string)

	// The public IP address of the second VPN tunnel.
	tunnel2Address?: null | string @go(Tunnel2Address,*string)

	// The bgp asn number of the second VPN tunnel.
	tunnel2BgpAsn?: null | string @go(Tunnel2BGPAsn,*string)

	// The bgp holdtime of the second VPN tunnel.
	tunnel2BgpHoldtime?: null | float64 @go(Tunnel2BGPHoldtime,*float64)

	// The RFC 6890 link-local address of the second VPN tunnel (Customer Gateway Side).
	tunnel2CgwInsideAddress?: null | string @go(Tunnel2CgwInsideAddress,*string)

	// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart.
	tunnel2DpdTimeoutAction?: null | string @go(Tunnel2DpdTimeoutAction,*string)

	// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than 30.
	tunnel2DpdTimeoutSeconds?: null | float64 @go(Tunnel2DpdTimeoutSeconds,*float64)

	// The IKE versions that are permitted for the second VPN tunnel. Valid values are ikev1 | ikev2.
	tunnel2IkeVersions?: [...null | string] @go(Tunnel2IkeVersions,[]*string)

	// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
	tunnel2InsideCidr?: null | string @go(Tunnel2InsideCidr,*string)

	// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
	tunnel2InsideIpv6Cidr?: null | string @go(Tunnel2InsideIPv6Cidr,*string)

	// Options for logging VPN tunnel activity. See Log Options below for more details.
	tunnel2LogOptions?: [...#Tunnel2LogOptionsObservation] @go(Tunnel2LogOptions,[]Tunnel2LogOptionsObservation)

	// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	tunnel2Phase1DhGroupNumbers?: [...null | float64] @go(Tunnel2Phase1DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	tunnel2Phase1EncryptionAlgorithms?: [...null | string] @go(Tunnel2Phase1EncryptionAlgorithms,[]*string)

	// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	tunnel2Phase1IntegrityAlgorithms?: [...null | string] @go(Tunnel2Phase1IntegrityAlgorithms,[]*string)

	// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 28800.
	tunnel2Phase1LifetimeSeconds?: null | float64 @go(Tunnel2Phase1LifetimeSeconds,*float64)

	// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	tunnel2Phase2DhGroupNumbers?: [...null | float64] @go(Tunnel2Phase2DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	tunnel2Phase2EncryptionAlgorithms?: [...null | string] @go(Tunnel2Phase2EncryptionAlgorithms,[]*string)

	// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	tunnel2Phase2IntegrityAlgorithms?: [...null | string] @go(Tunnel2Phase2IntegrityAlgorithms,[]*string)

	// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 3600.
	tunnel2Phase2LifetimeSeconds?: null | float64 @go(Tunnel2Phase2LifetimeSeconds,*float64)

	// The percentage of the rekey window for the second VPN tunnel (determined by tunnel2_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100.
	tunnel2RekeyFuzzPercentage?: null | float64 @go(Tunnel2RekeyFuzzPercentage,*float64)

	// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel2_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel2_phase2_lifetime_seconds.
	tunnel2RekeyMarginTimeSeconds?: null | float64 @go(Tunnel2RekeyMarginTimeSeconds,*float64)

	// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between 64 and 2048.
	tunnel2ReplayWindowSize?: null | float64 @go(Tunnel2ReplayWindowSize,*float64)

	// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.
	tunnel2StartupAction?: null | string @go(Tunnel2StartupAction,*string)

	// The RFC 6890 link-local address of the second VPN tunnel (VPN Gateway Side).
	tunnel2VgwInsideAddress?: null | string @go(Tunnel2VgwInsideAddress,*string)

	// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are ipv4 | ipv6. ipv6 Supports only EC2 Transit Gateway.
	tunnelInsideIpVersion?: null | string @go(TunnelInsideIPVersion,*string)

	// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
	type?: null | string @go(Type,*string)

	// The ID of the Virtual Private Gateway.
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)

	// Telemetry for the VPN tunnels. Detailed below.
	vgwTelemetry?: [...#VgwTelemetryObservation] @go(VgwTelemetry,[]VgwTelemetryObservation)
}

#VPNConnectionParameters_2: {
	// The ID of the customer gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.CustomerGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	customerGatewayId?: null | string @go(CustomerGatewayID,*string)

	// Indicate whether to enable acceleration for the VPN connection. Supports only EC2 Transit Gateway.
	// +kubebuilder:validation:Optional
	enableAcceleration?: null | bool @go(EnableAcceleration,*bool)

	// The IPv4 CIDR on the customer gateway (on-premises) side of the VPN connection.
	// +kubebuilder:validation:Optional
	localIpv4NetworkCidr?: null | string @go(LocalIPv4NetworkCidr,*string)

	// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
	// +kubebuilder:validation:Optional
	localIpv6NetworkCidr?: null | string @go(LocalIPv6NetworkCidr,*string)

	// Indicates if a Public S2S VPN or Private S2S VPN over AWS Direct Connect. Valid values are PublicIpv4 | PrivateIpv4
	// +kubebuilder:validation:Optional
	outsideIpAddressType?: null | string @go(OutsideIPAddressType,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The IPv4 CIDR on the AWS side of the VPN connection.
	// +kubebuilder:validation:Optional
	remoteIpv4NetworkCidr?: null | string @go(RemoteIPv4NetworkCidr,*string)

	// The IPv6 CIDR on the customer gateway (on-premises) side of the VPN connection.
	// +kubebuilder:validation:Optional
	remoteIpv6NetworkCidr?: null | string @go(RemoteIPv6NetworkCidr,*string)

	// Whether the VPN connection uses static routes exclusively. Static routes must be used for devices that don't support BGP.
	// +kubebuilder:validation:Optional
	staticRoutesOnly?: null | bool @go(StaticRoutesOnly,*bool)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the EC2 Transit Gateway.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.TransitGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	transitGatewayId?: null | string @go(TransitGatewayID,*string)

	// . The attachment ID of the Transit Gateway attachment to Direct Connect Gateway. The ID is obtained through a data source only.
	// +kubebuilder:validation:Optional
	transportTransitGatewayAttachmentId?: null | string @go(TransportTransitGatewayAttachmentID,*string)

	// The action to take after DPD timeout occurs for the first VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart.
	// +kubebuilder:validation:Optional
	tunnel1DpdTimeoutAction?: null | string @go(Tunnel1DpdTimeoutAction,*string)

	// The number of seconds after which a DPD timeout occurs for the first VPN tunnel. Valid value is equal or higher than 30.
	// +kubebuilder:validation:Optional
	tunnel1DpdTimeoutSeconds?: null | float64 @go(Tunnel1DpdTimeoutSeconds,*float64)

	// The IKE versions that are permitted for the first VPN tunnel. Valid values are ikev1 | ikev2.
	// +kubebuilder:validation:Optional
	tunnel1IkeVersions?: [...null | string] @go(Tunnel1IkeVersions,[]*string)

	// The CIDR block of the inside IP addresses for the first VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
	// +kubebuilder:validation:Optional
	tunnel1InsideCidr?: null | string @go(Tunnel1InsideCidr,*string)

	// The range of inside IPv6 addresses for the first VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
	// +kubebuilder:validation:Optional
	tunnel1InsideIpv6Cidr?: null | string @go(Tunnel1InsideIPv6Cidr,*string)

	// Options for logging VPN tunnel activity. See Log Options below for more details.
	// +kubebuilder:validation:Optional
	tunnel1LogOptions?: [...#Tunnel1LogOptionsParameters] @go(Tunnel1LogOptions,[]Tunnel1LogOptionsParameters)

	// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	// +kubebuilder:validation:Optional
	tunnel1Phase1DhGroupNumbers?: [...null | float64] @go(Tunnel1Phase1DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	// +kubebuilder:validation:Optional
	tunnel1Phase1EncryptionAlgorithms?: [...null | string] @go(Tunnel1Phase1EncryptionAlgorithms,[]*string)

	// One or more integrity algorithms that are permitted for the first VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	// +kubebuilder:validation:Optional
	tunnel1Phase1IntegrityAlgorithms?: [...null | string] @go(Tunnel1Phase1IntegrityAlgorithms,[]*string)

	// The lifetime for phase 1 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 28800.
	// +kubebuilder:validation:Optional
	tunnel1Phase1LifetimeSeconds?: null | float64 @go(Tunnel1Phase1LifetimeSeconds,*float64)

	// List of one or more Diffie-Hellman group numbers that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	// +kubebuilder:validation:Optional
	tunnel1Phase2DhGroupNumbers?: [...null | float64] @go(Tunnel1Phase2DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	// +kubebuilder:validation:Optional
	tunnel1Phase2EncryptionAlgorithms?: [...null | string] @go(Tunnel1Phase2EncryptionAlgorithms,[]*string)

	// List of one or more integrity algorithms that are permitted for the first VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	// +kubebuilder:validation:Optional
	tunnel1Phase2IntegrityAlgorithms?: [...null | string] @go(Tunnel1Phase2IntegrityAlgorithms,[]*string)

	// The lifetime for phase 2 of the IKE negotiation for the first VPN tunnel, in seconds. Valid value is between 900 and 3600.
	// +kubebuilder:validation:Optional
	tunnel1Phase2LifetimeSeconds?: null | float64 @go(Tunnel1Phase2LifetimeSeconds,*float64)

	// The percentage of the rekey window for the first VPN tunnel (determined by tunnel1_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100.
	// +kubebuilder:validation:Optional
	tunnel1RekeyFuzzPercentage?: null | float64 @go(Tunnel1RekeyFuzzPercentage,*float64)

	// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the first VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel1_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel1_phase2_lifetime_seconds.
	// +kubebuilder:validation:Optional
	tunnel1RekeyMarginTimeSeconds?: null | float64 @go(Tunnel1RekeyMarginTimeSeconds,*float64)

	// The number of packets in an IKE replay window for the first VPN tunnel. Valid value is between 64 and 2048.
	// +kubebuilder:validation:Optional
	tunnel1ReplayWindowSize?: null | float64 @go(Tunnel1ReplayWindowSize,*float64)

	// The action to take when the establishing the tunnel for the first VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.
	// +kubebuilder:validation:Optional
	tunnel1StartupAction?: null | string @go(Tunnel1StartupAction,*string)

	// The action to take after DPD timeout occurs for the second VPN tunnel. Specify restart to restart the IKE initiation. Specify clear to end the IKE session. Valid values are clear | none | restart.
	// +kubebuilder:validation:Optional
	tunnel2DpdTimeoutAction?: null | string @go(Tunnel2DpdTimeoutAction,*string)

	// The number of seconds after which a DPD timeout occurs for the second VPN tunnel. Valid value is equal or higher than 30.
	// +kubebuilder:validation:Optional
	tunnel2DpdTimeoutSeconds?: null | float64 @go(Tunnel2DpdTimeoutSeconds,*float64)

	// The IKE versions that are permitted for the second VPN tunnel. Valid values are ikev1 | ikev2.
	// +kubebuilder:validation:Optional
	tunnel2IkeVersions?: [...null | string] @go(Tunnel2IkeVersions,[]*string)

	// The CIDR block of the inside IP addresses for the second VPN tunnel. Valid value is a size /30 CIDR block from the 169.254.0.0/16 range.
	// +kubebuilder:validation:Optional
	tunnel2InsideCidr?: null | string @go(Tunnel2InsideCidr,*string)

	// The range of inside IPv6 addresses for the second VPN tunnel. Supports only EC2 Transit Gateway. Valid value is a size /126 CIDR block from the local fd00::/8 range.
	// +kubebuilder:validation:Optional
	tunnel2InsideIpv6Cidr?: null | string @go(Tunnel2InsideIPv6Cidr,*string)

	// Options for logging VPN tunnel activity. See Log Options below for more details.
	// +kubebuilder:validation:Optional
	tunnel2LogOptions?: [...#Tunnel2LogOptionsParameters] @go(Tunnel2LogOptions,[]Tunnel2LogOptionsParameters)

	// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are  2 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	// +kubebuilder:validation:Optional
	tunnel2Phase1DhGroupNumbers?: [...null | float64] @go(Tunnel2Phase1DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	// +kubebuilder:validation:Optional
	tunnel2Phase1EncryptionAlgorithms?: [...null | string] @go(Tunnel2Phase1EncryptionAlgorithms,[]*string)

	// One or more integrity algorithms that are permitted for the second VPN tunnel for phase 1 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	// +kubebuilder:validation:Optional
	tunnel2Phase1IntegrityAlgorithms?: [...null | string] @go(Tunnel2Phase1IntegrityAlgorithms,[]*string)

	// The lifetime for phase 1 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 28800.
	// +kubebuilder:validation:Optional
	tunnel2Phase1LifetimeSeconds?: null | float64 @go(Tunnel2Phase1LifetimeSeconds,*float64)

	// List of one or more Diffie-Hellman group numbers that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are 2 | 5 | 14 | 15 | 16 | 17 | 18 | 19 | 20 | 21 | 22 | 23 | 24.
	// +kubebuilder:validation:Optional
	tunnel2Phase2DhGroupNumbers?: [...null | float64] @go(Tunnel2Phase2DhGroupNumbers,[]*float64)

	// List of one or more encryption algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are AES128 | AES256 | AES128-GCM-16 | AES256-GCM-16.
	// +kubebuilder:validation:Optional
	tunnel2Phase2EncryptionAlgorithms?: [...null | string] @go(Tunnel2Phase2EncryptionAlgorithms,[]*string)

	// List of one or more integrity algorithms that are permitted for the second VPN tunnel for phase 2 IKE negotiations. Valid values are SHA1 | SHA2-256 | SHA2-384 | SHA2-512.
	// +kubebuilder:validation:Optional
	tunnel2Phase2IntegrityAlgorithms?: [...null | string] @go(Tunnel2Phase2IntegrityAlgorithms,[]*string)

	// The lifetime for phase 2 of the IKE negotiation for the second VPN tunnel, in seconds. Valid value is between 900 and 3600.
	// +kubebuilder:validation:Optional
	tunnel2Phase2LifetimeSeconds?: null | float64 @go(Tunnel2Phase2LifetimeSeconds,*float64)

	// The percentage of the rekey window for the second VPN tunnel (determined by tunnel2_rekey_margin_time_seconds) during which the rekey time is randomly selected. Valid value is between 0 and 100.
	// +kubebuilder:validation:Optional
	tunnel2RekeyFuzzPercentage?: null | float64 @go(Tunnel2RekeyFuzzPercentage,*float64)

	// The margin time, in seconds, before the phase 2 lifetime expires, during which the AWS side of the second VPN connection performs an IKE rekey. The exact time of the rekey is randomly selected based on the value for tunnel2_rekey_fuzz_percentage. Valid value is between 60 and half of tunnel2_phase2_lifetime_seconds.
	// +kubebuilder:validation:Optional
	tunnel2RekeyMarginTimeSeconds?: null | float64 @go(Tunnel2RekeyMarginTimeSeconds,*float64)

	// The number of packets in an IKE replay window for the second VPN tunnel. Valid value is between 64 and 2048.
	// +kubebuilder:validation:Optional
	tunnel2ReplayWindowSize?: null | float64 @go(Tunnel2ReplayWindowSize,*float64)

	// The action to take when the establishing the tunnel for the second VPN connection. By default, your customer gateway device must initiate the IKE negotiation and bring up the tunnel. Specify start for AWS to initiate the IKE negotiation. Valid values are add | start.
	// +kubebuilder:validation:Optional
	tunnel2StartupAction?: null | string @go(Tunnel2StartupAction,*string)

	// Indicate whether the VPN tunnels process IPv4 or IPv6 traffic. Valid values are ipv4 | ipv6. ipv6 Supports only EC2 Transit Gateway.
	// +kubebuilder:validation:Optional
	tunnelInsideIpVersion?: null | string @go(TunnelInsideIPVersion,*string)

	// The type of VPN connection. The only type AWS supports at this time is "ipsec.1".
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.CustomerGateway
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("type",false)
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// The ID of the Virtual Private Gateway.
	// +crossplane:generate:reference:type=VPNGateway
	// +kubebuilder:validation:Optional
	vpnGatewayId?: null | string @go(VPNGatewayID,*string)
}

#VgwTelemetryObservation: {
	// The number of accepted routes.
	acceptedRouteCount?: null | float64 @go(AcceptedRouteCount,*float64)

	// The Amazon Resource Name (ARN) of the VPN tunnel endpoint certificate.
	certificateArn?: null | string @go(CertificateArn,*string)

	// The date and time of the last change in status.
	lastStatusChange?: null | string @go(LastStatusChange,*string)

	// The Internet-routable IP address of the virtual private gateway's outside interface.
	outsideIpAddress?: null | string @go(OutsideIPAddress,*string)

	// The status of the VPN tunnel.
	status?: null | string @go(Status,*string)

	// If an error occurs, a description of the error.
	statusMessage?: null | string @go(StatusMessage,*string)
}

#VgwTelemetryParameters: {
}

// VPNConnectionSpec defines the desired state of VPNConnection
#VPNConnectionSpec: {
	forProvider: #VPNConnectionParameters_2 @go(ForProvider)
}

// VPNConnectionStatus defines the observed state of VPNConnection.
#VPNConnectionStatus: {
	atProvider?: #VPNConnectionObservation_2 @go(AtProvider)
}

// VPNConnection is the Schema for the VPNConnections API. Manages a Site-to-Site VPN connection. A Site-to-Site VPN connection is an Internet Protocol security (IPsec) VPN connection between a VPC and an on-premises network.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VPNConnection: {
	spec:    #VPNConnectionSpec   @go(Spec)
	status?: #VPNConnectionStatus @go(Status)
}

// VPNConnectionList contains a list of VPNConnections
#VPNConnectionList: {
	items: [...#VPNConnection] @go(Items,[]VPNConnection)
}
