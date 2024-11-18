// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#RegionHealthCheckGRPCHealthCheckInitParameters: {
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

#RegionHealthCheckGRPCHealthCheckObservation: {
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

#RegionHealthCheckGRPCHealthCheckParameters: {
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

#RegionHealthCheckHTTPHealthCheckInitParameters: {
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

#RegionHealthCheckHTTPHealthCheckObservation: {
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

#RegionHealthCheckHTTPHealthCheckParameters: {
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

#RegionHealthCheckHTTPSHealthCheckInitParameters: {
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

#RegionHealthCheckHTTPSHealthCheckObservation: {
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

#RegionHealthCheckHTTPSHealthCheckParameters: {
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

#RegionHealthCheckHttp2HealthCheckInitParameters: {
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

#RegionHealthCheckHttp2HealthCheckObservation: {
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

#RegionHealthCheckHttp2HealthCheckParameters: {
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

#RegionHealthCheckInitParameters: {
	// How often (in seconds) to send a health check. The default value is 5
	// seconds.
	checkIntervalSec?: null | float64 @go(CheckIntervalSec,*float64)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// A nested object resource
	// Structure is documented below.
	grpcHealthCheck?: [...#RegionHealthCheckGRPCHealthCheckInitParameters] @go(GRPCHealthCheck,[]RegionHealthCheckGRPCHealthCheckInitParameters)

	// A nested object resource
	// Structure is documented below.
	httpHealthCheck?: [...#RegionHealthCheckHTTPHealthCheckInitParameters] @go(HTTPHealthCheck,[]RegionHealthCheckHTTPHealthCheckInitParameters)

	// A nested object resource
	// Structure is documented below.
	httpsHealthCheck?: [...#RegionHealthCheckHTTPSHealthCheckInitParameters] @go(HTTPSHealthCheck,[]RegionHealthCheckHTTPSHealthCheckInitParameters)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// A nested object resource
	// Structure is documented below.
	http2HealthCheck?: [...#RegionHealthCheckHttp2HealthCheckInitParameters] @go(Http2HealthCheck,[]RegionHealthCheckHttp2HealthCheckInitParameters)

	// Configure logging on this health check.
	// Structure is documented below.
	logConfig?: [...#RegionHealthCheckLogConfigInitParameters] @go(LogConfig,[]RegionHealthCheckLogConfigInitParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// A nested object resource
	// Structure is documented below.
	sslHealthCheck?: [...#RegionHealthCheckSSLHealthCheckInitParameters] @go(SSLHealthCheck,[]RegionHealthCheckSSLHealthCheckInitParameters)

	// A nested object resource
	// Structure is documented below.
	tcpHealthCheck?: [...#RegionHealthCheckTCPHealthCheckInitParameters] @go(TCPHealthCheck,[]RegionHealthCheckTCPHealthCheckInitParameters)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

#RegionHealthCheckLogConfigInitParameters: {
	// Indicates whether or not to export logs. This is false by default,
	// which means no health check logging will be done.
	enable?: null | bool @go(Enable,*bool)
}

#RegionHealthCheckLogConfigObservation: {
	// Indicates whether or not to export logs. This is false by default,
	// which means no health check logging will be done.
	enable?: null | bool @go(Enable,*bool)
}

#RegionHealthCheckLogConfigParameters: {
	// Indicates whether or not to export logs. This is false by default,
	// which means no health check logging will be done.
	// +kubebuilder:validation:Optional
	enable?: null | bool @go(Enable,*bool)
}

#RegionHealthCheckObservation: {
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
	grpcHealthCheck?: [...#RegionHealthCheckGRPCHealthCheckObservation] @go(GRPCHealthCheck,[]RegionHealthCheckGRPCHealthCheckObservation)

	// A nested object resource
	// Structure is documented below.
	httpHealthCheck?: [...#RegionHealthCheckHTTPHealthCheckObservation] @go(HTTPHealthCheck,[]RegionHealthCheckHTTPHealthCheckObservation)

	// A nested object resource
	// Structure is documented below.
	httpsHealthCheck?: [...#RegionHealthCheckHTTPSHealthCheckObservation] @go(HTTPSHealthCheck,[]RegionHealthCheckHTTPSHealthCheckObservation)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// A nested object resource
	// Structure is documented below.
	http2HealthCheck?: [...#RegionHealthCheckHttp2HealthCheckObservation] @go(Http2HealthCheck,[]RegionHealthCheckHttp2HealthCheckObservation)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/healthChecks/{{name}}
	id?: null | string @go(ID,*string)

	// Configure logging on this health check.
	// Structure is documented below.
	logConfig?: [...#RegionHealthCheckLogConfigObservation] @go(LogConfig,[]RegionHealthCheckLogConfigObservation)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The Region in which the created health check should reside.
	// If it is not provided, the provider region is used.
	region?: null | string @go(Region,*string)

	// A nested object resource
	// Structure is documented below.
	sslHealthCheck?: [...#RegionHealthCheckSSLHealthCheckObservation] @go(SSLHealthCheck,[]RegionHealthCheckSSLHealthCheckObservation)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// A nested object resource
	// Structure is documented below.
	tcpHealthCheck?: [...#RegionHealthCheckTCPHealthCheckObservation] @go(TCPHealthCheck,[]RegionHealthCheckTCPHealthCheckObservation)

	// How long (in seconds) to wait before claiming failure.
	// The default value is 5 seconds.  It is invalid for timeoutSec to have
	// greater value than checkIntervalSec.
	timeoutSec?: null | float64 @go(TimeoutSec,*float64)

	// The type of the health check. One of HTTP, HTTP2, HTTPS, TCP, or SSL.
	type?: null | string @go(Type,*string)

	// A so-far healthy instance will be marked unhealthy after this many
	// consecutive failures. The default value is 2.
	unhealthyThreshold?: null | float64 @go(UnhealthyThreshold,*float64)
}

#RegionHealthCheckParameters: {
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
	grpcHealthCheck?: [...#RegionHealthCheckGRPCHealthCheckParameters] @go(GRPCHealthCheck,[]RegionHealthCheckGRPCHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpHealthCheck?: [...#RegionHealthCheckHTTPHealthCheckParameters] @go(HTTPHealthCheck,[]RegionHealthCheckHTTPHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	httpsHealthCheck?: [...#RegionHealthCheckHTTPSHealthCheckParameters] @go(HTTPSHealthCheck,[]RegionHealthCheckHTTPSHealthCheckParameters)

	// A so-far unhealthy instance will be marked healthy after this many
	// consecutive successes. The default value is 2.
	// +kubebuilder:validation:Optional
	healthyThreshold?: null | float64 @go(HealthyThreshold,*float64)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	http2HealthCheck?: [...#RegionHealthCheckHttp2HealthCheckParameters] @go(Http2HealthCheck,[]RegionHealthCheckHttp2HealthCheckParameters)

	// Configure logging on this health check.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	logConfig?: [...#RegionHealthCheckLogConfigParameters] @go(LogConfig,[]RegionHealthCheckLogConfigParameters)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The Region in which the created health check should reside.
	// If it is not provided, the provider region is used.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	sslHealthCheck?: [...#RegionHealthCheckSSLHealthCheckParameters] @go(SSLHealthCheck,[]RegionHealthCheckSSLHealthCheckParameters)

	// A nested object resource
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	tcpHealthCheck?: [...#RegionHealthCheckTCPHealthCheckParameters] @go(TCPHealthCheck,[]RegionHealthCheckTCPHealthCheckParameters)

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

#RegionHealthCheckSSLHealthCheckInitParameters: {
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

#RegionHealthCheckSSLHealthCheckObservation: {
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

#RegionHealthCheckSSLHealthCheckParameters: {
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

#RegionHealthCheckTCPHealthCheckInitParameters: {
	// The TCP port number for the TCP health check request.
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

#RegionHealthCheckTCPHealthCheckObservation: {
	// The TCP port number for the TCP health check request.
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

#RegionHealthCheckTCPHealthCheckParameters: {
	// The TCP port number for the TCP health check request.
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

// RegionHealthCheckSpec defines the desired state of RegionHealthCheck
#RegionHealthCheckSpec: {
	forProvider: #RegionHealthCheckParameters @go(ForProvider)

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
	initProvider?: #RegionHealthCheckInitParameters @go(InitProvider)
}

// RegionHealthCheckStatus defines the observed state of RegionHealthCheck.
#RegionHealthCheckStatus: {
	atProvider?: #RegionHealthCheckObservation @go(AtProvider)
}

// RegionHealthCheck is the Schema for the RegionHealthChecks API. Health Checks determine whether instances are responsive and able to do work.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionHealthCheck: {
	spec:    #RegionHealthCheckSpec   @go(Spec)
	status?: #RegionHealthCheckStatus @go(Status)
}

// RegionHealthCheckList contains a list of RegionHealthChecks
#RegionHealthCheckList: {
	items: [...#RegionHealthCheck] @go(Items,[]RegionHealthCheck)
}
