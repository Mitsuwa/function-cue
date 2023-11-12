// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/beyondcorp/v1beta1

package v1beta1

#AllocatedConnectionsInitParameters: {
}

#AllocatedConnectionsObservation: {
	// The ingress port of an allocated connection.
	ingressPort?: null | float64 @go(IngressPort,*float64)

	// The PSC uri of an allocated connection.
	pscUri?: null | string @go(PscURI,*string)
}

#AllocatedConnectionsParameters: {
}

#AppGatewayInitParameters: {
	// An arbitrary user-provided name for the AppGateway.
	displayName?: null | string @go(DisplayName,*string)

	// The type of hosting used by the AppGateway.
	// Default value is HOST_TYPE_UNSPECIFIED.
	// Possible values are: HOST_TYPE_UNSPECIFIED, GCP_REGIONAL_MIG.
	hostType?: null | string @go(HostType,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The type of network connectivity used by the AppGateway.
	// Default value is TYPE_UNSPECIFIED.
	// Possible values are: TYPE_UNSPECIFIED, TCP_PROXY.
	type?: null | string @go(Type,*string)
}

#AppGatewayObservation: {
	// A list of connections allocated for the Gateway.
	// Structure is documented below.
	allocatedConnections?: [...#AllocatedConnectionsObservation] @go(AllocatedConnections,[]AllocatedConnectionsObservation)

	// An arbitrary user-provided name for the AppGateway.
	displayName?: null | string @go(DisplayName,*string)

	// The type of hosting used by the AppGateway.
	// Default value is HOST_TYPE_UNSPECIFIED.
	// Possible values are: HOST_TYPE_UNSPECIFIED, GCP_REGIONAL_MIG.
	hostType?: null | string @go(HostType,*string)

	// an identifier for the resource with format projects/{{project}}/locations/{{region}}/appGateways/{{name}}
	id?: null | string @go(ID,*string)

	// Resource labels to represent user provided metadata.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The region of the AppGateway.
	region?: null | string @go(Region,*string)

	// Represents the different states of a AppGateway.
	state?: null | string @go(State,*string)

	// The type of network connectivity used by the AppGateway.
	// Default value is TYPE_UNSPECIFIED.
	// Possible values are: TYPE_UNSPECIFIED, TCP_PROXY.
	type?: null | string @go(Type,*string)

	// Server-defined URI for this resource.
	uri?: null | string @go(URI,*string)
}

#AppGatewayParameters: {
	// An arbitrary user-provided name for the AppGateway.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The type of hosting used by the AppGateway.
	// Default value is HOST_TYPE_UNSPECIFIED.
	// Possible values are: HOST_TYPE_UNSPECIFIED, GCP_REGIONAL_MIG.
	// +kubebuilder:validation:Optional
	hostType?: null | string @go(HostType,*string)

	// Resource labels to represent user provided metadata.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The region of the AppGateway.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The type of network connectivity used by the AppGateway.
	// Default value is TYPE_UNSPECIFIED.
	// Possible values are: TYPE_UNSPECIFIED, TCP_PROXY.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// AppGatewaySpec defines the desired state of AppGateway
#AppGatewaySpec: {
	forProvider: #AppGatewayParameters @go(ForProvider)

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
	initProvider?: #AppGatewayInitParameters @go(InitProvider)
}

// AppGatewayStatus defines the observed state of AppGateway.
#AppGatewayStatus: {
	atProvider?: #AppGatewayObservation @go(AtProvider)
}

// AppGateway is the Schema for the AppGateways API. A BeyondCorp AppGateway resource represents a BeyondCorp protected AppGateway to a remote application.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#AppGateway: {
	spec:    #AppGatewaySpec   @go(Spec)
	status?: #AppGatewayStatus @go(Status)
}

// AppGatewayList contains a list of AppGateways
#AppGatewayList: {
	items: [...#AppGateway] @go(Items,[]AppGateway)
}
