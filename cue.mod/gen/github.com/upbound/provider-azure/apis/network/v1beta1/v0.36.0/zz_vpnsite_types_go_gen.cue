// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#BGPInitParameters: {
	// The BGP speaker's ASN.
	asn?: null | float64 @go(Asn,*float64)

	// The BGP peering IP address.
	peeringAddress?: null | string @go(PeeringAddress,*string)
}

#BGPObservation: {
	// The BGP speaker's ASN.
	asn?: null | float64 @go(Asn,*float64)

	// The BGP peering IP address.
	peeringAddress?: null | string @go(PeeringAddress,*string)
}

#BGPParameters: {
	// The BGP speaker's ASN.
	// +kubebuilder:validation:Optional
	asn?: null | float64 @go(Asn,*float64)

	// The BGP peering IP address.
	// +kubebuilder:validation:Optional
	peeringAddress?: null | string @go(PeeringAddress,*string)
}

#LinkInitParameters: {
	// A bgp block as defined above.
	bgp?: [...#BGPInitParameters] @go(BGP,[]BGPInitParameters)

	// The FQDN of this VPN Site Link.
	fqdn?: null | string @go(Fqdn,*string)

	// The IP address of this VPN Site Link.
	ipAddress?: null | string @go(IPAddress,*string)

	// The name which should be used for this VPN Site Link.
	name?: null | string @go(Name,*string)

	// The name of the physical link at the VPN Site. Example: ATT, Verizon.
	providerName?: null | string @go(ProviderName,*string)

	// The speed of the VPN device at the branch location in unit of mbps. Defaults to 0.
	speedInMbps?: null | float64 @go(SpeedInMbps,*float64)
}

#LinkObservation: {
	// A bgp block as defined above.
	bgp?: [...#BGPObservation] @go(BGP,[]BGPObservation)

	// The FQDN of this VPN Site Link.
	fqdn?: null | string @go(Fqdn,*string)

	// The ID of the VPN Site Link.
	id?: null | string @go(ID,*string)

	// The IP address of this VPN Site Link.
	ipAddress?: null | string @go(IPAddress,*string)

	// The name which should be used for this VPN Site Link.
	name?: null | string @go(Name,*string)

	// The name of the physical link at the VPN Site. Example: ATT, Verizon.
	providerName?: null | string @go(ProviderName,*string)

	// The speed of the VPN device at the branch location in unit of mbps. Defaults to 0.
	speedInMbps?: null | float64 @go(SpeedInMbps,*float64)
}

#LinkParameters: {
	// A bgp block as defined above.
	// +kubebuilder:validation:Optional
	bgp?: [...#BGPParameters] @go(BGP,[]BGPParameters)

	// The FQDN of this VPN Site Link.
	// +kubebuilder:validation:Optional
	fqdn?: null | string @go(Fqdn,*string)

	// The IP address of this VPN Site Link.
	// +kubebuilder:validation:Optional
	ipAddress?: null | string @go(IPAddress,*string)

	// The name which should be used for this VPN Site Link.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The name of the physical link at the VPN Site. Example: ATT, Verizon.
	// +kubebuilder:validation:Optional
	providerName?: null | string @go(ProviderName,*string)

	// The speed of the VPN device at the branch location in unit of mbps. Defaults to 0.
	// +kubebuilder:validation:Optional
	speedInMbps?: null | float64 @go(SpeedInMbps,*float64)
}

#O365PolicyInitParameters: {
	// A traffic_category block as defined above.
	trafficCategory?: [...#TrafficCategoryInitParameters] @go(TrafficCategory,[]TrafficCategoryInitParameters)
}

#O365PolicyObservation: {
	// A traffic_category block as defined above.
	trafficCategory?: [...#TrafficCategoryObservation] @go(TrafficCategory,[]TrafficCategoryObservation)
}

#O365PolicyParameters: {
	// A traffic_category block as defined above.
	// +kubebuilder:validation:Optional
	trafficCategory?: [...#TrafficCategoryParameters] @go(TrafficCategory,[]TrafficCategoryParameters)
}

#TrafficCategoryInitParameters: {
	// Is allow endpoint enabled? The Allow endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to false.
	allowEndpointEnabled?: null | bool @go(AllowEndpointEnabled,*bool)

	// Is default endpoint enabled? The Default endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to false.
	defaultEndpointEnabled?: null | bool @go(DefaultEndpointEnabled,*bool)

	// Is optimize endpoint enabled? The Optimize endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to false.
	optimizeEndpointEnabled?: null | bool @go(OptimizeEndpointEnabled,*bool)
}

#TrafficCategoryObservation: {
	// Is allow endpoint enabled? The Allow endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to false.
	allowEndpointEnabled?: null | bool @go(AllowEndpointEnabled,*bool)

	// Is default endpoint enabled? The Default endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to false.
	defaultEndpointEnabled?: null | bool @go(DefaultEndpointEnabled,*bool)

	// Is optimize endpoint enabled? The Optimize endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to false.
	optimizeEndpointEnabled?: null | bool @go(OptimizeEndpointEnabled,*bool)
}

#TrafficCategoryParameters: {
	// Is allow endpoint enabled? The Allow endpoint is required for connectivity to specific O365 services and features, but are not as sensitive to network performance and latency as other endpoint types. Defaults to false.
	// +kubebuilder:validation:Optional
	allowEndpointEnabled?: null | bool @go(AllowEndpointEnabled,*bool)

	// Is default endpoint enabled? The Default endpoint represents O365 services and dependencies that do not require any optimization, and can be treated by customer networks as normal Internet bound traffic. Defaults to false.
	// +kubebuilder:validation:Optional
	defaultEndpointEnabled?: null | bool @go(DefaultEndpointEnabled,*bool)

	// Is optimize endpoint enabled? The Optimize endpoint is required for connectivity to every O365 service and represents the O365 scenario that is the most sensitive to network performance, latency, and availability. Defaults to false.
	// +kubebuilder:validation:Optional
	optimizeEndpointEnabled?: null | bool @go(OptimizeEndpointEnabled,*bool)
}

#VPNSiteInitParameters: {
	// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
	addressCidrs?: [...null | string] @go(AddressCidrs,[]*string)

	// The model of the VPN device.
	deviceModel?: null | string @go(DeviceModel,*string)

	// The name of the VPN device vendor.
	deviceVendor?: null | string @go(DeviceVendor,*string)

	// One or more link blocks as defined below.
	link?: [...#LinkInitParameters] @go(Link,[]LinkInitParameters)

	// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
	location?: null | string @go(Location,*string)

	// An o365_policy block as defined below.
	o365Policy?: [...#O365PolicyInitParameters] @go(O365Policy,[]O365PolicyInitParameters)

	// A mapping of tags which should be assigned to the VPN Site.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#VPNSiteObservation: {
	// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
	addressCidrs?: [...null | string] @go(AddressCidrs,[]*string)

	// The model of the VPN device.
	deviceModel?: null | string @go(DeviceModel,*string)

	// The name of the VPN device vendor.
	deviceVendor?: null | string @go(DeviceVendor,*string)

	// The ID of the VPN Site.
	id?: null | string @go(ID,*string)

	// One or more link blocks as defined below.
	link?: [...#LinkObservation] @go(Link,[]LinkObservation)

	// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
	location?: null | string @go(Location,*string)

	// An o365_policy block as defined below.
	o365Policy?: [...#O365PolicyObservation] @go(O365Policy,[]O365PolicyObservation)

	// The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the VPN Site.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
	virtualWanId?: null | string @go(VirtualWanID,*string)
}

#VPNSiteParameters: {
	// Specifies a list of IP address CIDRs that are located on your on-premises site. Traffic destined for these address spaces is routed to your local site.
	// +kubebuilder:validation:Optional
	addressCidrs?: [...null | string] @go(AddressCidrs,[]*string)

	// The model of the VPN device.
	// +kubebuilder:validation:Optional
	deviceModel?: null | string @go(DeviceModel,*string)

	// The name of the VPN device vendor.
	// +kubebuilder:validation:Optional
	deviceVendor?: null | string @go(DeviceVendor,*string)

	// One or more link blocks as defined below.
	// +kubebuilder:validation:Optional
	link?: [...#LinkParameters] @go(Link,[]LinkParameters)

	// The Azure Region where the VPN Site should exist. Changing this forces a new VPN Site to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// An o365_policy block as defined below.
	// +kubebuilder:validation:Optional
	o365Policy?: [...#O365PolicyParameters] @go(O365Policy,[]O365PolicyParameters)

	// The name of the Resource Group where the VPN Site should exist. Changing this forces a new VPN Site to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags which should be assigned to the VPN Site.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The ID of the Virtual Wan where this VPN site resides in. Changing this forces a new VPN Site to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualWAN
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualWanId?: null | string @go(VirtualWanID,*string)
}

// VPNSiteSpec defines the desired state of VPNSite
#VPNSiteSpec: {
	forProvider: #VPNSiteParameters @go(ForProvider)

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
	initProvider?: #VPNSiteInitParameters @go(InitProvider)
}

// VPNSiteStatus defines the observed state of VPNSite.
#VPNSiteStatus: {
	atProvider?: #VPNSiteObservation @go(AtProvider)
}

// VPNSite is the Schema for the VPNSites API. Manages a VPN Site.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#VPNSite: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	spec:    #VPNSiteSpec   @go(Spec)
	status?: #VPNSiteStatus @go(Status)
}

// VPNSiteList contains a list of VPNSites
#VPNSiteList: {
	items: [...#VPNSite] @go(Items,[]VPNSite)
}
