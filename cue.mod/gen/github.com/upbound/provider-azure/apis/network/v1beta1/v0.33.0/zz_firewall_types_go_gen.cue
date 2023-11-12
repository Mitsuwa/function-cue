// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#FirewallIPConfigurationObservation: {
	// Specifies the name of the IP Configuration.
	name?: null | string @go(Name,*string)

	// The Private IP address of the Azure Firewall.
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)

	// The ID of the Public IP Address associated with the firewall.
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
	subnetId?: null | string @go(SubnetID,*string)
}

#FirewallIPConfigurationParameters: {
	// Specifies the name of the IP Configuration.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The ID of the Public IP Address associated with the firewall.
	// +crossplane:generate:reference:type=PublicIP
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

#FirewallObservation: {
	// A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution.
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// The ID of the Firewall Policy applied to this Firewall.
	firewallPolicyId?: null | string @go(FirewallPolicyID,*string)

	// The ID of the Azure Firewall.
	id?: null | string @go(ID,*string)

	// An ip_configuration block as documented below.
	ipConfiguration?: [...#FirewallIPConfigurationObservation] @go(IPConfiguration,[]FirewallIPConfigurationObservation)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// A management_ip_configuration block as documented below, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the subnet_id in an existing block forces a new resource to be created. Changing this forces a new resource to be created.
	managementIpConfiguration?: [...#ManagementIPConfigurationObservation] @go(ManagementIPConfiguration,[]ManagementIPConfigurationObservation)

	// A list of SNAT private CIDR IP ranges, or the special string IANAPrivateRanges, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918.
	privateIpRanges?: [...null | string] @go(PrivateIPRanges,[]*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// SKU name of the Firewall. Possible values are AZFW_Hub and AZFW_VNet. Changing this forces a new resource to be created.
	skuName?: null | string @go(SkuName,*string)

	// SKU tier of the Firewall. Possible values are Premium, Standard and Basic.
	skuTier?: null | string @go(SkuTier,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The operation mode for threat intelligence-based filtering. Possible values are: Off, Alert and Deny. Defaults to Alert.
	threatIntelMode?: null | string @go(ThreatIntelMode,*string)

	// A virtual_hub block as documented below.
	virtualHub?: [...#VirtualHubObservation] @go(VirtualHub,[]VirtualHubObservation)

	// Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created.
	zones?: [...null | string] @go(Zones,[]*string)
}

#FirewallParameters: {
	// A list of DNS servers that the Azure Firewall will direct DNS traffic to the for name resolution.
	// +kubebuilder:validation:Optional
	dnsServers?: [...null | string] @go(DNSServers,[]*string)

	// The ID of the Firewall Policy applied to this Firewall.
	// +kubebuilder:validation:Optional
	firewallPolicyId?: null | string @go(FirewallPolicyID,*string)

	// An ip_configuration block as documented below.
	// +kubebuilder:validation:Optional
	ipConfiguration?: [...#FirewallIPConfigurationParameters] @go(IPConfiguration,[]FirewallIPConfigurationParameters)

	// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// A management_ip_configuration block as documented below, which allows force-tunnelling of traffic to be performed by the firewall. Adding or removing this block or changing the subnet_id in an existing block forces a new resource to be created. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	managementIpConfiguration?: [...#ManagementIPConfigurationParameters] @go(ManagementIPConfiguration,[]ManagementIPConfigurationParameters)

	// A list of SNAT private CIDR IP ranges, or the special string IANAPrivateRanges, which indicates Azure Firewall does not SNAT when the destination IP address is a private range per IANA RFC 1918.
	// +kubebuilder:validation:Optional
	privateIpRanges?: [...null | string] @go(PrivateIPRanges,[]*string)

	// The name of the resource group in which to create the resource. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// SKU name of the Firewall. Possible values are AZFW_Hub and AZFW_VNet. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	skuName?: null | string @go(SkuName,*string)

	// SKU tier of the Firewall. Possible values are Premium, Standard and Basic.
	// +kubebuilder:validation:Optional
	skuTier?: null | string @go(SkuTier,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The operation mode for threat intelligence-based filtering. Possible values are: Off, Alert and Deny. Defaults to Alert.
	// +kubebuilder:validation:Optional
	threatIntelMode?: null | string @go(ThreatIntelMode,*string)

	// A virtual_hub block as documented below.
	// +kubebuilder:validation:Optional
	virtualHub?: [...#VirtualHubParameters] @go(VirtualHub,[]VirtualHubParameters)

	// Specifies a list of Availability Zones in which this Azure Firewall should be located. Changing this forces a new Azure Firewall to be created.
	// +kubebuilder:validation:Optional
	zones?: [...null | string] @go(Zones,[]*string)
}

#ManagementIPConfigurationObservation: {
	// Specifies the name of the IP Configuration.
	name?: null | string @go(Name,*string)

	// The private IP address associated with the Firewall.
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)

	// The ID of the Public IP Address associated with the firewall.
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
	subnetId?: null | string @go(SubnetID,*string)
}

#ManagementIPConfigurationParameters: {
	// Specifies the name of the IP Configuration.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The ID of the Public IP Address associated with the firewall.
	// +kubebuilder:validation:Required
	publicIpAddressId?: null | string @go(PublicIPAddressID,*string)

	// Reference to the subnet associated with the IP Configuration. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	subnetId?: null | string @go(SubnetID,*string)
}

#VirtualHubObservation: {
	// The private IP address associated with the Firewall.
	privateIpAddress?: null | string @go(PrivateIPAddress,*string)

	// The list of public IP addresses associated with the Firewall.
	publicIpAddresses?: [...null | string] @go(PublicIPAddresses,[]*string)

	// Specifies the number of public IPs to assign to the Firewall. Defaults to 1.
	publicIpCount?: null | float64 @go(PublicIPCount,*float64)

	// Specifies the ID of the Virtual Hub where the Firewall resides in.
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

#VirtualHubParameters: {
	// Specifies the number of public IPs to assign to the Firewall. Defaults to 1.
	// +kubebuilder:validation:Optional
	publicIpCount?: null | float64 @go(PublicIPCount,*float64)

	// Specifies the ID of the Virtual Hub where the Firewall resides in.
	// +kubebuilder:validation:Required
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

// FirewallSpec defines the desired state of Firewall
#FirewallSpec: {
	forProvider: #FirewallParameters @go(ForProvider)
}

// FirewallStatus defines the observed state of Firewall.
#FirewallStatus: {
	atProvider?: #FirewallObservation @go(AtProvider)
}

// Firewall is the Schema for the Firewalls API. Manages an Azure Firewall.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Firewall: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.skuName)",message="skuName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.skuTier)",message="skuTier is a required parameter"
	spec:    #FirewallSpec   @go(Spec)
	status?: #FirewallStatus @go(Status)
}

// FirewallList contains a list of Firewalls
#FirewallList: {
	items: [...#Firewall] @go(Items,[]Firewall)
}
