// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#GRPCHealthCheckObservation: {
	// The gRPC service name for the health check.
	// The value of grpcServiceName has the following meanings by convention:
	grpcServiceName?: null | string @go(GRPCServiceName,*string)

	// The port number for the health check request.
	// Must be specified if portName and portSpecification are not set
	// or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)
}

#GRPCHealthCheckParameters: {
	// The gRPC service name for the health check.
	// The value of grpcServiceName has the following meanings by convention:
	// +kubebuilder:validation:Optional
	grpcServiceName?: null | string @go(GRPCServiceName,*string)

	// The port number for the health check request.
	// Must be specified if portName and portSpecification are not set
	// or if port_specification is USE_FIXED_PORT. Valid values are 1 through 65535.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)
}

#HTTPHealthCheckObservation: {
	// The value of the host header in the HTTP health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP health check request.
	// The default value is 80.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTP health check request.
	// The default value is /.
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	response?: null | string @go(Response,*string)
}

#HTTPHealthCheckParameters: {
	// The value of the host header in the HTTP health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	// +kubebuilder:validation:Optional
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP health check request.
	// The default value is 80.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	// +kubebuilder:validation:Optional
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTP health check request.
	// The default value is /.
	// +kubebuilder:validation:Optional
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	// +kubebuilder:validation:Optional
	response?: null | string @go(Response,*string)
}

#HTTPSHealthCheckObservation: {
	// The value of the host header in the HTTPS health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTPS health check request.
	// The default value is 443.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTPS health check request.
	// The default value is /.
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	response?: null | string @go(Response,*string)
}

#HTTPSHealthCheckParameters: {
	// The value of the host header in the HTTPS health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	// +kubebuilder:validation:Optional
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTPS health check request.
	// The default value is 443.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	// +kubebuilder:validation:Optional
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTPS health check request.
	// The default value is /.
	// +kubebuilder:validation:Optional
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	// +kubebuilder:validation:Optional
	response?: null | string @go(Response,*string)
}

#HealthCheckLogConfigObservation: {
	// Indicates whether or not to export logs. This is false by default,
	// which means no health check logging will be done.
	enable?: null | bool @go(Enable,*bool)
}

#HealthCheckLogConfigParameters: {
	// Indicates whether or not to export logs. This is false by default,
	// which means no health check logging will be done.
	// +kubebuilder:validation:Optional
	enable?: null | bool @go(Enable,*bool)
}

#HealthCheckObservation: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// Creation timestamp in RFC3339 text format.
	creationTimestamp?: null | string @go(CreationTimestamp,*string)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// A nested object resource
	// Structure is documented below.
	grpcHealthCheck?: [...#GRPCHealthCheckObservation] @go(GRPCHealthCheck,[]GRPCHealthCheckObservation)

	// A nested object resource
	// Structure is documented below.
	httpHealthCheck?: [...#HTTPHealthCheckObservation] @go(HTTPHealthCheck,[]HTTPHealthCheckObservation)

	// A nested object resource
	// Structure is documented below.
	httpsHealthCheck?: [...#HTTPSHealthCheckObservation] @go(HTTPSHealthCheck,[]HTTPSHealthCheckObservation)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// A nested object resource
	// Structure is documented below.
	http2HealthCheck?: [...#Http2HealthCheckObservation] @go(Http2HealthCheck,[]Http2HealthCheckObservation)

	// an identifier for the resource with format projects/{{project}}/global/healthChecks/{{name}}
	id?: null | string @go(ID,*string)

	// Configure logging on this health check.
	// Structure is documented below.
	logConfig?: [...#HealthCheckLogConfigObservation] @go(LogConfig,[]HealthCheckLogConfigObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A nested object resource
	// Structure is documented below.
	sslHealthCheck?: [...#SSLHealthCheckObservation] @go(SSLHealthCheck,[]SSLHealthCheckObservation)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// A nested object resource
	// Structure is documented below.
	tcpHealthCheck?: [...#TCPHealthCheckObservation] @go(TCPHealthCheck,[]TCPHealthCheckObservation)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// The type of the health check. One of HTTP, HTTPS, TCP, or SSL.
	type?: null | string @go(Type,*string)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

#HealthCheckParameters: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	// +kubebuilder:validation:Optional
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	grpcHealthCheck?: [...#GRPCHealthCheckParameters] @go(GRPCHealthCheck,[]GRPCHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpHealthCheck?: [...#HTTPHealthCheckParameters] @go(HTTPHealthCheck,[]HTTPHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpsHealthCheck?: [...#HTTPSHealthCheckParameters] @go(HTTPSHealthCheck,[]HTTPSHealthCheckParameters)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	// +kubebuilder:validation:Optional
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	http2HealthCheck?: [...#Http2HealthCheckParameters] @go(Http2HealthCheck,[]Http2HealthCheckParameters)

	// Configure logging on this health check.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	logConfig?: [...#HealthCheckLogConfigParameters] @go(LogConfig,[]HealthCheckLogConfigParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	sslHealthCheck?: [...#SSLHealthCheckParameters] @go(SSLHealthCheck,[]SSLHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	tcpHealthCheck?: [...#TCPHealthCheckParameters] @go(TCPHealthCheck,[]TCPHealthCheckParameters)

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

#Http2HealthCheckObservation: {
	// The value of the host header in the HTTP2 health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP2 health check request.
	// The default value is 443.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTP2 health check request.
	// The default value is /.
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	response?: null | string @go(Response,*string)
}

#Http2HealthCheckParameters: {
	// The value of the host header in the HTTP2 health check request.
	// If left empty (default value), the public IP on behalf of which this health
	// check is performed will be used.
	// +kubebuilder:validation:Optional
	host?: null | string @go(Host,*string)

	// The TCP port number for the HTTP2 health check request.
	// The default value is 443.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	// +kubebuilder:validation:Optional
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The request path of the HTTP2 health check request.
	// The default value is /.
	// +kubebuilder:validation:Optional
	requestPath?: null | string @go(RequestPath,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	// +kubebuilder:validation:Optional
	response?: null | string @go(Response,*string)
}

#SSLHealthCheckObservation: {
	// The TCP port number for the SSL health check request.
	// The default value is 443.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The application data to send once the SSL connection has been
	// established (default value is empty). If both request and response are
	// empty, the connection establishment alone will indicate health. The request
	// data can only be ASCII.
	request?: null | string @go(Request,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	response?: null | string @go(Response,*string)
}

#SSLHealthCheckParameters: {
	// The TCP port number for the SSL health check request.
	// The default value is 443.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	// +kubebuilder:validation:Optional
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The application data to send once the SSL connection has been
	// established (default value is empty). If both request and response are
	// empty, the connection establishment alone will indicate health. The request
	// data can only be ASCII.
	// +kubebuilder:validation:Optional
	request?: null | string @go(Request,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	// +kubebuilder:validation:Optional
	response?: null | string @go(Response,*string)
}

#TCPHealthCheckObservation: {
	// The TCP port number for the TCP health check request.
	// The default value is 443.
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The application data to send once the TCP connection has been
	// established (default value is empty). If both request and response are
	// empty, the connection establishment alone will indicate health. The request
	// data can only be ASCII.
	request?: null | string @go(Request,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	response?: null | string @go(Response,*string)
}

#TCPHealthCheckParameters: {
	// The TCP port number for the TCP health check request.
	// The default value is 443.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// Port name as defined in InstanceGroup#NamedPort#name. If both port and
	// port_name are defined, port takes precedence.
	// +kubebuilder:validation:Optional
	portName?: null | string @go(PortName,*string)

	// Specifies how port is selected for health checking, can be one of the
	// following values:
	// +kubebuilder:validation:Optional
	portSpecification?: null | string @go(PortSpecification,*string)

	// Specifies the type of proxy header to append before sending data to the
	// backend.
	// Default value is NONE.
	// Possible values are: NONE, PROXY_V1.
	// +kubebuilder:validation:Optional
	proxyHeader?: null | string @go(ProxyHeader,*string)

	// The application data to send once the TCP connection has been
	// established (default value is empty). If both request and response are
	// empty, the connection establishment alone will indicate health. The request
	// data can only be ASCII.
	// +kubebuilder:validation:Optional
	request?: null | string @go(Request,*string)

	// The bytes to match against the beginning of the response data. If left empty
	// (the default value), any response will indicate health. The response data
	// can only be ASCII.
	// +kubebuilder:validation:Optional
	response?: null | string @go(Response,*string)
}

// HealthCheckSpec defines the desired state of HealthCheck
#HealthCheckSpec: {
	forProvider: #HealthCheckParameters @go(ForProvider)
}

// HealthCheckStatus defines the observed state of HealthCheck.
#HealthCheckStatus: {
	atProvider?: #HealthCheckObservation @go(AtProvider)
}

// HealthCheck is the Schema for the HealthChecks API. Health Checks determine whether instances are responsive and able to do work.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#HealthCheck: {
	spec:    #HealthCheckSpec   @go(Spec)
	status?: #HealthCheckStatus @go(Status)
}

// HealthCheckList contains a list of HealthChecks
#HealthCheckList: {
	items: [...#HealthCheck] @go(Items,[]HealthCheck)
}
