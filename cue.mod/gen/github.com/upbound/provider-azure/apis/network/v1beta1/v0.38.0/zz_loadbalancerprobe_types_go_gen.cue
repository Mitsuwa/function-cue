// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/network/v1beta1

package v1beta1

#LoadBalancerProbeInitParameters: {
	// The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)

	// The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is 2. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
	numberOfProbes?: null | float64 @go(NumberOfProbes,*float64)

	// Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
	port?: null | float64 @go(Port,*float64)

	// The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from 1 to 100. The default value is 1.
	probeThreshold?: null | float64 @go(ProbeThreshold,*float64)

	// Specifies the protocol of the end point. Possible values are Http, Https or Tcp. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful.
	protocol?: null | string @go(Protocol,*string)

	// The URI used for requesting health status from the backend endpoint. Required if protocol is set to Http or Https. Otherwise, it is not allowed.
	requestPath?: null | string @go(RequestPath,*string)
}

#LoadBalancerProbeObservation: {
	// The ID of the Load Balancer Probe.
	id?: null | string @go(ID,*string)

	// The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)
	loadBalancerRules?: [...null | string] @go(LoadBalancerRules,[]*string)

	// The ID of the LoadBalancer in which to create the NAT Rule. Changing this forces a new resource to be created.
	loadbalancerId?: null | string @go(LoadbalancerID,*string)

	// The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is 2. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
	numberOfProbes?: null | float64 @go(NumberOfProbes,*float64)

	// Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
	port?: null | float64 @go(Port,*float64)

	// The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from 1 to 100. The default value is 1.
	probeThreshold?: null | float64 @go(ProbeThreshold,*float64)

	// Specifies the protocol of the end point. Possible values are Http, Https or Tcp. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful.
	protocol?: null | string @go(Protocol,*string)

	// The URI used for requesting health status from the backend endpoint. Required if protocol is set to Http or Https. Otherwise, it is not allowed.
	requestPath?: null | string @go(RequestPath,*string)
}

#LoadBalancerProbeParameters: {
	// The interval, in seconds between probes to the backend endpoint for health status. The default value is 15, the minimum value is 5.
	// +kubebuilder:validation:Optional
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)

	// The ID of the LoadBalancer in which to create the NAT Rule. Changing this forces a new resource to be created.
	// +crossplane:generate:reference:type=LoadBalancer
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-azure/apis/rconfig.ExtractResourceID()
	// +kubebuilder:validation:Optional
	loadbalancerId?: null | string @go(LoadbalancerID,*string)

	// The number of failed probe attempts after which the backend endpoint is removed from rotation. The default value is 2. NumberOfProbes multiplied by intervalInSeconds value must be greater or equal to 10.Endpoints are returned to rotation when at least one probe is successful.
	// +kubebuilder:validation:Optional
	numberOfProbes?: null | float64 @go(NumberOfProbes,*float64)

	// Port on which the Probe queries the backend endpoint. Possible values range from 1 to 65535, inclusive.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The number of consecutive successful or failed probes that allow or deny traffic to this endpoint. Possible values range from 1 to 100. The default value is 1.
	// +kubebuilder:validation:Optional
	probeThreshold?: null | float64 @go(ProbeThreshold,*float64)

	// Specifies the protocol of the end point. Possible values are Http, Https or Tcp. If TCP is specified, a received ACK is required for the probe to be successful. If HTTP is specified, a 200 OK response from the specified URI is required for the probe to be successful.
	// +kubebuilder:validation:Optional
	protocol?: null | string @go(Protocol,*string)

	// The URI used for requesting health status from the backend endpoint. Required if protocol is set to Http or Https. Otherwise, it is not allowed.
	// +kubebuilder:validation:Optional
	requestPath?: null | string @go(RequestPath,*string)
}

// LoadBalancerProbeSpec defines the desired state of LoadBalancerProbe
#LoadBalancerProbeSpec: {
	forProvider: #LoadBalancerProbeParameters @go(ForProvider)

	// THIS IS A BETA FIELD. It will be honored
	// unless the Management Policies feature flag is disabled.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #LoadBalancerProbeInitParameters @go(InitProvider)
}

// LoadBalancerProbeStatus defines the observed state of LoadBalancerProbe.
#LoadBalancerProbeStatus: {
	atProvider?: #LoadBalancerProbeObservation @go(AtProvider)
}

// LoadBalancerProbe is the Schema for the LoadBalancerProbes API. Manages a Load Balancer Probe Resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#LoadBalancerProbe: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.port) || (has(self.initProvider) && has(self.initProvider.port))",message="spec.forProvider.port is a required parameter"
	spec:    #LoadBalancerProbeSpec   @go(Spec)
	status?: #LoadBalancerProbeStatus @go(Status)
}

// LoadBalancerProbeList contains a list of LoadBalancerProbes
#LoadBalancerProbeList: {
	items: [...#LoadBalancerProbe] @go(Items,[]LoadBalancerProbe)
}
