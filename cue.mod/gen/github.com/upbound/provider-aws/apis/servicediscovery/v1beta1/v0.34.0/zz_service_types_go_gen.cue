// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/servicediscovery/v1beta1

package v1beta1

#DNSConfigObservation: {
	// An array that contains one DnsRecord object for each resource record set.
	dnsRecords?: [...#DNSRecordsObservation] @go(DNSRecords,[]DNSRecordsObservation)

	// The ID of the namespace to use for DNS configuration.
	namespaceId?: null | string @go(NamespaceID,*string)

	// The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
	routingPolicy?: null | string @go(RoutingPolicy,*string)
}

#DNSConfigParameters: {
	// An array that contains one DnsRecord object for each resource record set.
	// +kubebuilder:validation:Required
	dnsRecords: [...#DNSRecordsParameters] @go(DNSRecords,[]DNSRecordsParameters)

	// The ID of the namespace to use for DNS configuration.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/servicediscovery/v1beta1.PrivateDNSNamespace
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	namespaceId?: null | string @go(NamespaceID,*string)

	// The routing policy that you want to apply to all records that Route 53 creates when you register an instance and specify the service. Valid Values: MULTIVALUE, WEIGHTED
	// +kubebuilder:validation:Optional
	routingPolicy?: null | string @go(RoutingPolicy,*string)
}

#DNSRecordsObservation: {
	// The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
	ttl?: null | float64 @go(TTL,*float64)

	// The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
	type?: null | string @go(Type,*string)
}

#DNSRecordsParameters: {
	// The amount of time, in seconds, that you want DNS resolvers to cache the settings for this resource record set.
	// +kubebuilder:validation:Required
	ttl?: null | float64 @go(TTL,*float64)

	// The type of the resource, which indicates the value that Amazon Route 53 returns in response to DNS queries. Valid Values: A, AAAA, SRV, CNAME
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#HealthCheckConfigObservation: {
	// The number of consecutive health checks. Maximum value of 10.
	failureThreshold?: null | float64 @go(FailureThreshold,*float64)

	// The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
	resourcePath?: null | string @go(ResourcePath,*string)

	// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
	type?: null | string @go(Type,*string)
}

#HealthCheckConfigParameters: {
	// The number of consecutive health checks. Maximum value of 10.
	// +kubebuilder:validation:Optional
	failureThreshold?: null | float64 @go(FailureThreshold,*float64)

	// The path that you want Route 53 to request when performing health checks. Route 53 automatically adds the DNS name for the service. If you don't specify a value, the default value is /.
	// +kubebuilder:validation:Optional
	resourcePath?: null | string @go(ResourcePath,*string)

	// The type of health check that you want to create, which indicates how Route 53 determines whether an endpoint is healthy. Valid Values: HTTP, HTTPS, TCP
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#HealthCheckCustomConfigObservation: {
	// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
	failureThreshold?: null | float64 @go(FailureThreshold,*float64)
}

#HealthCheckCustomConfigParameters: {
	// The number of 30-second intervals that you want service discovery to wait before it changes the health status of a service instance.  Maximum value of 10.
	// +kubebuilder:validation:Optional
	failureThreshold?: null | float64 @go(FailureThreshold,*float64)
}

#ServiceObservation: {
	// The ARN of the service.
	arn?: null | string @go(Arn,*string)

	// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance.
	dnsConfig?: [...#DNSConfigObservation] @go(DNSConfig,[]DNSConfigObservation)

	// The description of the service.
	description?: null | string @go(Description,*string)

	// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable.
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// A complex type that contains settings for an optional health check. Only for Public DNS namespaces.
	healthCheckConfig?: [...#HealthCheckConfigObservation] @go(HealthCheckConfig,[]HealthCheckConfigObservation)

	// A complex type that contains settings for ECS managed health checks.
	healthCheckCustomConfig?: [...#HealthCheckCustomConfigObservation] @go(HealthCheckCustomConfig,[]HealthCheckCustomConfigObservation)

	// The ID of the service.
	id?: null | string @go(ID,*string)

	// The name of the service.
	name?: null | string @go(Name,*string)

	// The ID of the namespace that you want to use to create the service.
	namespaceId?: null | string @go(NamespaceID,*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// If present, specifies that the service instances are only discoverable using the DiscoverInstances API operation. No DNS records is registered for the service instances. The only valid value is HTTP.
	type?: null | string @go(Type,*string)
}

#ServiceParameters: {
	// A complex type that contains information about the resource record sets that you want Amazon Route 53 to create when you register an instance.
	// +kubebuilder:validation:Optional
	dnsConfig?: [...#DNSConfigParameters] @go(DNSConfig,[]DNSConfigParameters)

	// The description of the service.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A boolean that indicates all instances should be deleted from the service so that the service can be destroyed without error. These instances are not recoverable.
	// +kubebuilder:validation:Optional
	forceDestroy?: null | bool @go(ForceDestroy,*bool)

	// A complex type that contains settings for an optional health check. Only for Public DNS namespaces.
	// +kubebuilder:validation:Optional
	healthCheckConfig?: [...#HealthCheckConfigParameters] @go(HealthCheckConfig,[]HealthCheckConfigParameters)

	// A complex type that contains settings for ECS managed health checks.
	// +kubebuilder:validation:Optional
	healthCheckCustomConfig?: [...#HealthCheckCustomConfigParameters] @go(HealthCheckCustomConfig,[]HealthCheckCustomConfigParameters)

	// The name of the service.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// The ID of the namespace that you want to use to create the service.
	// +kubebuilder:validation:Optional
	namespaceId?: null | string @go(NamespaceID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// If present, specifies that the service instances are only discoverable using the DiscoverInstances API operation. No DNS records is registered for the service instances. The only valid value is HTTP.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

// ServiceSpec defines the desired state of Service
#ServiceSpec: {
	forProvider: #ServiceParameters @go(ForProvider)
}

// ServiceStatus defines the observed state of Service.
#ServiceStatus: {
	atProvider?: #ServiceObservation @go(AtProvider)
}

// Service is the Schema for the Services API. Provides a Service Discovery Service resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Service: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #ServiceSpec   @go(Spec)
	status?: #ServiceStatus @go(Status)
}

// ServiceList contains a list of Services
#ServiceList: {
	items: [...#Service] @go(Items,[]Service)
}
