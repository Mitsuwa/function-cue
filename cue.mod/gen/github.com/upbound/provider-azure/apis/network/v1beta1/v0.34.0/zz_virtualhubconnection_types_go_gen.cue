// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#RoutingPropagatedRouteTableObservation: {
	// The list of labels to assign to this route table.
	labels?: [...null | string] @go(Labels,[]*string)

	// A list of Route Table IDs to associated with this Virtual Hub Connection.
	routeTableIds?: [...null | string] @go(RouteTableIds,[]*string)
}

#RoutingPropagatedRouteTableParameters: {
	// The list of labels to assign to this route table.
	// +kubebuilder:validation:Optional
	labels?: [...null | string] @go(Labels,[]*string)

	// A list of Route Table IDs to associated with this Virtual Hub Connection.
	// +kubebuilder:validation:Optional
	routeTableIds?: [...null | string] @go(RouteTableIds,[]*string)
}

#StaticVnetRouteObservation: {
	// A list of CIDR Ranges which should be used as Address Prefixes.
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)

	// The name which should be used for this Static Route.
	name?: null | string @go(Name,*string)

	// The IP Address which should be used for the Next Hop.
	nextHopIpAddress?: null | string @go(NextHopIPAddress,*string)
}

#StaticVnetRouteParameters: {
	// A list of CIDR Ranges which should be used as Address Prefixes.
	// +kubebuilder:validation:Optional
	addressPrefixes?: [...null | string] @go(AddressPrefixes,[]*string)

	// The name which should be used for this Static Route.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The IP Address which should be used for the Next Hop.
	// +kubebuilder:validation:Optional
	nextHopIpAddress?: null | string @go(NextHopIPAddress,*string)
}

#VirtualHubConnectionObservation: {
	// The ID of the Virtual Hub Connection.
	id?: null | string @go(ID,*string)

	// Should Internet Security be enabled to secure internet traffic? Defaults to false.
	internetSecurityEnabled?: null | bool @go(InternetSecurityEnabled,*bool)

	// The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
	remoteVirtualNetworkId?: null | string @go(RemoteVirtualNetworkID,*string)

	// A routing block as defined below.
	routing?: [...#VirtualHubConnectionRoutingObservation] @go(Routing,[]VirtualHubConnectionRoutingObservation)

	// The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

#VirtualHubConnectionParameters: {
	// Should Internet Security be enabled to secure internet traffic? Defaults to false.
	// +kubebuilder:validation:Optional
	internetSecurityEnabled?: null | bool @go(InternetSecurityEnabled,*bool)

	// The ID of the Virtual Network which the Virtual Hub should be connected to. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualNetwork
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	remoteVirtualNetworkId?: null | string @go(RemoteVirtualNetworkID,*string)

	// A routing block as defined below.
	// +kubebuilder:validation:Optional
	routing?: [...#VirtualHubConnectionRoutingParameters] @go(Routing,[]VirtualHubConnectionRoutingParameters)

	// The ID of the Virtual Hub within which this connection should be created. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualHub
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	virtualHubId?: null | string @go(VirtualHubID,*string)
}

#VirtualHubConnectionRoutingObservation: {
	// The ID of the route table associated with this Virtual Hub connection.
	associatedRouteTableId?: null | string @go(AssociatedRouteTableID,*string)

	// A propagated_route_table block as defined below.
	propagatedRouteTable?: [...#RoutingPropagatedRouteTableObservation] @go(PropagatedRouteTable,[]RoutingPropagatedRouteTableObservation)

	// A static_vnet_route block as defined below.
	staticVnetRoute?: [...#StaticVnetRouteObservation] @go(StaticVnetRoute,[]StaticVnetRouteObservation)
}

#VirtualHubConnectionRoutingParameters: {
	// The ID of the route table associated with this Virtual Hub connection.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/network/v1beta1.VirtualHubRouteTable
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	associatedRouteTableId?: null | string @go(AssociatedRouteTableID,*string)

	// A propagated_route_table block as defined below.
	// +kubebuilder:validation:Optional
	propagatedRouteTable?: [...#RoutingPropagatedRouteTableParameters] @go(PropagatedRouteTable,[]RoutingPropagatedRouteTableParameters)

	// A static_vnet_route block as defined below.
	// +kubebuilder:validation:Optional
	staticVnetRoute?: [...#StaticVnetRouteParameters] @go(StaticVnetRoute,[]StaticVnetRouteParameters)
}

// VirtualHubConnectionSpec defines the desired state of VirtualHubConnection
#VirtualHubConnectionSpec: {
	forProvider: #VirtualHubConnectionParameters @go(ForProvider)
}

// VirtualHubConnectionStatus defines the observed state of VirtualHubConnection.
#VirtualHubConnectionStatus: {
	atProvider?: #VirtualHubConnectionObservation @go(AtProvider)
}

// VirtualHubConnection is the Schema for the VirtualHubConnections API. Manages a Connection for a Virtual Hub.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#VirtualHubConnection: {
	spec:    #VirtualHubConnectionSpec   @go(Spec)
	status?: #VirtualHubConnectionStatus @go(Status)
}

// VirtualHubConnectionList contains a list of VirtualHubConnections
#VirtualHubConnectionList: {
	items: [...#VirtualHubConnection] @go(Items,[]VirtualHubConnection)
}
