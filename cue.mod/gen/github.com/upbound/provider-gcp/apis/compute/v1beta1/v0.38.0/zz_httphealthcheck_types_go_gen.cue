// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#HTTPHealthCheckInitParameters_2: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// The value of the host header in the HTTP health check request. If
	// left empty (default value), the public IP on behalf of which this
	// health check is performed will be used.
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP health check request.
	// The default value is 80.
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The request path of the HTTP health check request.
	// The default value is /.
	requestPath?: null | string @go(RequestPath,*string)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

#HTTPHealthCheckObservation_2: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// The value of the host header in the HTTP health check request. If
	// left empty (default value), the public IP on behalf of which this
	// health check is performed will be used.
	host?: null | string @go(Host,*string)

	// an identifier for the resource with format projects/{{project}}/global/httpHealthChecks/{{name}}
	id?: null | string @go(ID,*string)

	// The TCP port number for the HTTP health check request.
	// The default value is 80.
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The request path of the HTTP health check request.
	// The default value is /.
	requestPath?: null | string @go(RequestPath,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

#HTTPHealthCheckParameters_2: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	// +kubebuilder:validation:Optional
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	// +kubebuilder:validation:Optional
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// The value of the host header in the HTTP health check request. If
	// left empty (default value), the public IP on behalf of which this
	// health check is performed will be used.
	// +kubebuilder:validation:Optional
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP health check request.
	// The default value is 80.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The request path of the HTTP health check request.
	// The default value is /.
	// +kubebuilder:validation:Optional
	requestPath?: null | string @go(RequestPath,*string)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	// +kubebuilder:validation:Optional
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	// +kubebuilder:validation:Optional
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

// HTTPHealthCheckSpec defines the desired state of HTTPHealthCheck
#HTTPHealthCheckSpec: {
	forProvider: #HTTPHealthCheckParameters_2 @go(ForProvider)

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
	initProvider?: #HTTPHealthCheckInitParameters_2 @go(InitProvider)
}

// HTTPHealthCheckStatus defines the observed state of HTTPHealthCheck.
#HTTPHealthCheckStatus: {
	atProvider?: #HTTPHealthCheckObservation_2 @go(AtProvider)
}

// HTTPHealthCheck is the Schema for the HTTPHealthChecks API. An HttpHealthCheck resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#HTTPHealthCheck: {
	spec:    #HTTPHealthCheckSpec   @go(Spec)
	status?: #HTTPHealthCheckStatus @go(Status)
}

// HTTPHealthCheckList contains a list of HTTPHealthChecks
#HTTPHealthCheckList: {
	items: [...#HTTPHealthCheck] @go(Items,[]HTTPHealthCheck)
}
