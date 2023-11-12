// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/orbital/v1beta1

package v1beta1

#ChannelsInitParameters: {
	// Bandwidth in MHz.
	bandwidthMhz?: null | float64 @go(BandwidthMhz,*float64)

	// Center frequency in MHz.
	centerFrequencyMhz?: null | float64 @go(CenterFrequencyMhz,*float64)

	// Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
	demodulationConfiguration?: null | string @go(DemodulationConfiguration,*string)

	// Customer End point to store/retrieve data during a contact. An end_point block as defined below.
	endPoint?: [...#EndPointInitParameters] @go(EndPoint,[]EndPointInitParameters)

	// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
	modulationConfiguration?: null | string @go(ModulationConfiguration,*string)

	// The name of the contact profile. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#ChannelsObservation: {
	// Bandwidth in MHz.
	bandwidthMhz?: null | float64 @go(BandwidthMhz,*float64)

	// Center frequency in MHz.
	centerFrequencyMhz?: null | float64 @go(CenterFrequencyMhz,*float64)

	// Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
	demodulationConfiguration?: null | string @go(DemodulationConfiguration,*string)

	// Customer End point to store/retrieve data during a contact. An end_point block as defined below.
	endPoint?: [...#EndPointObservation] @go(EndPoint,[]EndPointObservation)

	// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
	modulationConfiguration?: null | string @go(ModulationConfiguration,*string)

	// The name of the contact profile. Changing this forces a new resource to be created.
	name?: null | string @go(Name,*string)
}

#ChannelsParameters: {
	// Bandwidth in MHz.
	// +kubebuilder:validation:Optional
	bandwidthMhz?: null | float64 @go(BandwidthMhz,*float64)

	// Center frequency in MHz.
	// +kubebuilder:validation:Optional
	centerFrequencyMhz?: null | float64 @go(CenterFrequencyMhz,*float64)

	// Copy of the modem configuration file such as Kratos QRadio or Kratos QuantumRx. Only valid for downlink directions. If provided, the modem connects to the customer endpoint and sends demodulated data instead of a VITA.49 stream.
	// +kubebuilder:validation:Optional
	demodulationConfiguration?: null | string @go(DemodulationConfiguration,*string)

	// Customer End point to store/retrieve data during a contact. An end_point block as defined below.
	// +kubebuilder:validation:Optional
	endPoint?: [...#EndPointParameters] @go(EndPoint,[]EndPointParameters)

	// Copy of the modem configuration file such as Kratos QRadio. Only valid for uplink directions. If provided, the modem connects to the customer endpoint and accepts commands from the customer instead of a VITA.49 stream.
	// +kubebuilder:validation:Optional
	modulationConfiguration?: null | string @go(ModulationConfiguration,*string)

	// The name of the contact profile. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#ContactProfileInitParameters: {
	// Auto-tracking configurations for a spacecraft. Possible values are disabled, xBand and sBand.
	autoTracking?: null | string @go(AutoTracking,*string)

	// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
	eventHubUri?: null | string @go(EventHubURI,*string)

	// A list of spacecraft links. A links block as defined below. Changing this forces a new resource to be created.
	links?: [...#LinksInitParameters] @go(Links,[]LinksInitParameters)

	// The location where the contact profile exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Maximum elevation of the antenna during the contact in decimal degrees.
	minimumElevationDegrees?: null | float64 @go(MinimumElevationDegrees,*float64)

	// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
	minimumVariableContactDuration?: null | string @go(MinimumVariableContactDuration,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ContactProfileObservation: {
	// Auto-tracking configurations for a spacecraft. Possible values are disabled, xBand and sBand.
	autoTracking?: null | string @go(AutoTracking,*string)

	// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
	eventHubUri?: null | string @go(EventHubURI,*string)

	// The ID of the contact profile.
	id?: null | string @go(ID,*string)

	// A list of spacecraft links. A links block as defined below. Changing this forces a new resource to be created.
	links?: [...#LinksObservation] @go(Links,[]LinksObservation)

	// The location where the contact profile exists. Changing this forces a new resource to be created.
	location?: null | string @go(Location,*string)

	// Maximum elevation of the antenna during the contact in decimal degrees.
	minimumElevationDegrees?: null | float64 @go(MinimumElevationDegrees,*float64)

	// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
	minimumVariableContactDuration?: null | string @go(MinimumVariableContactDuration,*string)

	// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
	networkConfigurationSubnetId?: null | string @go(NetworkConfigurationSubnetID,*string)

	// The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ContactProfileParameters: {
	// Auto-tracking configurations for a spacecraft. Possible values are disabled, xBand and sBand.
	// +kubebuilder:validation:Optional
	autoTracking?: null | string @go(AutoTracking,*string)

	// ARM resource identifier of the Event Hub used for telemetry. Requires granting Orbital Resource Provider the rights to send telemetry into the hub.
	// +kubebuilder:validation:Optional
	eventHubUri?: null | string @go(EventHubURI,*string)

	// A list of spacecraft links. A links block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	links?: [...#LinksParameters] @go(Links,[]LinksParameters)

	// The location where the contact profile exists. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	location?: null | string @go(Location,*string)

	// Maximum elevation of the antenna during the contact in decimal degrees.
	// +kubebuilder:validation:Optional
	minimumElevationDegrees?: null | float64 @go(MinimumElevationDegrees,*float64)

	// Minimum viable contact duration in ISO 8601 format. Used for listing the available contacts with a spacecraft at a given ground station.
	// +kubebuilder:validation:Optional
	minimumVariableContactDuration?: null | string @go(MinimumVariableContactDuration,*string)

	// ARM resource identifier of the subnet delegated to the Microsoft.Orbital/orbitalGateways. Needs to be at least a class C subnet, and should not have any IP created in it. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.Subnet
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	networkConfigurationSubnetId?: null | string @go(NetworkConfigurationSubnetID,*string)

	// The name of the Resource Group where the contact profile exists. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// A mapping of tags to assign to the resource.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#EndPointInitParameters: {
	// Name of an end point.
	endPointName?: null | string @go(EndPointName,*string)

	// IP address of an end point.
	ipAddress?: null | string @go(IPAddress,*string)

	// TCP port to listen on to receive data.
	port?: null | string @go(Port,*string)

	// Protocol of an end point. Possible values are TCP and UDP.
	protocol?: null | string @go(Protocol,*string)
}

#EndPointObservation: {
	// Name of an end point.
	endPointName?: null | string @go(EndPointName,*string)

	// IP address of an end point.
	ipAddress?: null | string @go(IPAddress,*string)

	// TCP port to listen on to receive data.
	port?: null | string @go(Port,*string)

	// Protocol of an end point. Possible values are TCP and UDP.
	protocol?: null | string @go(Protocol,*string)
}

#EndPointParameters: {
	// Name of an end point.
	// +kubebuilder:validation:Optional
	endPointName?: null | string @go(EndPointName,*string)

	// IP address of an end point.
	// +kubebuilder:validation:Optional
	ipAddress?: null | string @go(IPAddress,*string)

	// TCP port to listen on to receive data.
	// +kubebuilder:validation:Optional
	port?: null | string @go(Port,*string)

	// Protocol of an end point. Possible values are TCP and UDP.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)
}

#LinksInitParameters: {
	// A list of contact profile link channels. A channels block as defined below. Changing this forces a new resource to be created.
	channels?: [...#ChannelsInitParameters] @go(Channels,[]ChannelsInitParameters)

	// Direction of the link. Possible values are Uplink and Downlink.
	direction?: null | string @go(Direction,*string)

	// Name of the link.
	name?: null | string @go(Name,*string)

	// Polarization of the link. Possible values are LHCP, RHCP, linearVertical and linearHorizontal.
	polarization?: null | string @go(Polarization,*string)
}

#LinksObservation: {
	// A list of contact profile link channels. A channels block as defined below. Changing this forces a new resource to be created.
	channels?: [...#ChannelsObservation] @go(Channels,[]ChannelsObservation)

	// Direction of the link. Possible values are Uplink and Downlink.
	direction?: null | string @go(Direction,*string)

	// Name of the link.
	name?: null | string @go(Name,*string)

	// Polarization of the link. Possible values are LHCP, RHCP, linearVertical and linearHorizontal.
	polarization?: null | string @go(Polarization,*string)
}

#LinksParameters: {
	// A list of contact profile link channels. A channels block as defined below. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	channels?: [...#ChannelsParameters] @go(Channels,[]ChannelsParameters)

	// Direction of the link. Possible values are Uplink and Downlink.
	// +kubebuilder:validation:Optional
	direction?: null | string @go(Direction,*string)

	// Name of the link.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Polarization of the link. Possible values are LHCP, RHCP, linearVertical and linearHorizontal.
	// +kubebuilder:validation:Optional
	polarization?: null | string @go(Polarization,*string)
}

// ContactProfileSpec defines the desired state of ContactProfile
#ContactProfileSpec: {
	forProvider: #ContactProfileParameters @go(ForProvider)

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
	initProvider?: #ContactProfileInitParameters @go(InitProvider)
}

// ContactProfileStatus defines the observed state of ContactProfile.
#ContactProfileStatus: {
	atProvider?: #ContactProfileObservation @go(AtProvider)
}

// ContactProfile is the Schema for the ContactProfiles API. Manages a orbital contact profile resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#ContactProfile: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.autoTracking) || has(self.initProvider.autoTracking)",message="autoTracking is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.links) || has(self.initProvider.links)",message="links is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.location) || has(self.initProvider.location)",message="location is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.minimumVariableContactDuration) || has(self.initProvider.minimumVariableContactDuration)",message="minimumVariableContactDuration is a required parameter"
	spec:    #ContactProfileSpec   @go(Spec)
	status?: #ContactProfileStatus @go(Status)
}

// ContactProfileList contains a list of ContactProfiles
#ContactProfileList: {
	items: [...#ContactProfile] @go(Items,[]ContactProfile)
}
