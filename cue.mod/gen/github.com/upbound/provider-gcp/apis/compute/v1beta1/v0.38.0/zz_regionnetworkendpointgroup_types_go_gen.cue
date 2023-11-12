// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/compute/v1beta1

package v1beta1

#AppEngineInitParameters: {
	// Optional serving service.
	// The service name must be 1-63 characters long, and comply with RFC1035.
	// Example value: "default", "my-service".
	service?: null | string @go(Service,*string)

	// A template to parse service and version fields from a request URL.
	// URL mask allows for routing to multiple App Engine services without
	// having to create multiple Network Endpoint Groups and backend services.
	// For example, the request URLs "foo1-dot-appname.appspot.com/v1" and
	// "foo1-dot-appname.appspot.com/v2" can be backed by the same Serverless NEG with
	// URL mask "-dot-appname.appspot.com/". The URL mask will parse
	// them to { service = "foo1", version = "v1" } and { service = "foo1", version = "v2" } respectively.
	urlMask?: null | string @go(URLMask,*string)

	// Optional serving version.
	// The version must be 1-63 characters long, and comply with RFC1035.
	// Example value: "v1", "v2".
	version?: null | string @go(Version,*string)
}

#AppEngineObservation: {
	// Optional serving service.
	// The service name must be 1-63 characters long, and comply with RFC1035.
	// Example value: "default", "my-service".
	service?: null | string @go(Service,*string)

	// A template to parse service and version fields from a request URL.
	// URL mask allows for routing to multiple App Engine services without
	// having to create multiple Network Endpoint Groups and backend services.
	// For example, the request URLs "foo1-dot-appname.appspot.com/v1" and
	// "foo1-dot-appname.appspot.com/v2" can be backed by the same Serverless NEG with
	// URL mask "-dot-appname.appspot.com/". The URL mask will parse
	// them to { service = "foo1", version = "v1" } and { service = "foo1", version = "v2" } respectively.
	urlMask?: null | string @go(URLMask,*string)

	// Optional serving version.
	// The version must be 1-63 characters long, and comply with RFC1035.
	// Example value: "v1", "v2".
	version?: null | string @go(Version,*string)
}

#AppEngineParameters: {
	// Optional serving service.
	// The service name must be 1-63 characters long, and comply with RFC1035.
	// Example value: "default", "my-service".
	// +kubebuilder:validation:Optional
	service?: null | string @go(Service,*string)

	// A template to parse service and version fields from a request URL.
	// URL mask allows for routing to multiple App Engine services without
	// having to create multiple Network Endpoint Groups and backend services.
	// For example, the request URLs "foo1-dot-appname.appspot.com/v1" and
	// "foo1-dot-appname.appspot.com/v2" can be backed by the same Serverless NEG with
	// URL mask "-dot-appname.appspot.com/". The URL mask will parse
	// them to { service = "foo1", version = "v1" } and { service = "foo1", version = "v2" } respectively.
	// +kubebuilder:validation:Optional
	urlMask?: null | string @go(URLMask,*string)

	// Optional serving version.
	// The version must be 1-63 characters long, and comply with RFC1035.
	// Example value: "v1", "v2".
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

#CloudFunctionInitParameters: {
	// A template to parse function field from a request URL. URL mask allows
	// for routing to multiple Cloud Functions without having to create
	// multiple Network Endpoint Groups and backend services.
	// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
	// can be backed by the same Serverless NEG with URL mask "/". The URL mask
	// will parse them to { function = "function1" } and { function = "function2" } respectively.
	urlMask?: null | string @go(URLMask,*string)
}

#CloudFunctionObservation: {
	// A user-defined name of the Cloud Function.
	// The function name is case-sensitive and must be 1-63 characters long.
	// Example value: "func1".
	function?: null | string @go(Function,*string)

	// A template to parse function field from a request URL. URL mask allows
	// for routing to multiple Cloud Functions without having to create
	// multiple Network Endpoint Groups and backend services.
	// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
	// can be backed by the same Serverless NEG with URL mask "/". The URL mask
	// will parse them to { function = "function1" } and { function = "function2" } respectively.
	urlMask?: null | string @go(URLMask,*string)
}

#CloudFunctionParameters: {
	// A user-defined name of the Cloud Function.
	// The function name is case-sensitive and must be 1-63 characters long.
	// Example value: "func1".
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudfunctions/v1beta1.Function
	// +kubebuilder:validation:Optional
	function?: null | string @go(Function,*string)

	// A template to parse function field from a request URL. URL mask allows
	// for routing to multiple Cloud Functions without having to create
	// multiple Network Endpoint Groups and backend services.
	// For example, request URLs "mydomain.com/function1" and "mydomain.com/function2"
	// can be backed by the same Serverless NEG with URL mask "/". The URL mask
	// will parse them to { function = "function1" } and { function = "function2" } respectively.
	// +kubebuilder:validation:Optional
	urlMask?: null | string @go(URLMask,*string)
}

#CloudRunInitParameters: {
	// Cloud Run tag represents the "named-revision" to provide
	// additional fine-grained traffic routing information.
	// The tag must be 1-63 characters long, and comply with RFC1035.
	// Example value: "revision-0010".
	tag?: null | string @go(Tag,*string)

	// A template to parse service and tag fields from a request URL.
	// URL mask allows for routing to multiple Run services without having
	// to create multiple network endpoint groups and backend services.
	// For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2"
	// an be backed by the same Serverless Network Endpoint Group (NEG) with
	// URL mask ".domain.com/". The URL mask will parse them to { service="bar1", tag="foo1" }
	// and { service="bar2", tag="foo2" } respectively.
	urlMask?: null | string @go(URLMask,*string)
}

#CloudRunObservation: {
	// Cloud Run service is the main resource of Cloud Run.
	// The service must be 1-63 characters long, and comply with RFC1035.
	// Example value: "run-service".
	service?: null | string @go(Service,*string)

	// Cloud Run tag represents the "named-revision" to provide
	// additional fine-grained traffic routing information.
	// The tag must be 1-63 characters long, and comply with RFC1035.
	// Example value: "revision-0010".
	tag?: null | string @go(Tag,*string)

	// A template to parse service and tag fields from a request URL.
	// URL mask allows for routing to multiple Run services without having
	// to create multiple network endpoint groups and backend services.
	// For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2"
	// an be backed by the same Serverless Network Endpoint Group (NEG) with
	// URL mask ".domain.com/". The URL mask will parse them to { service="bar1", tag="foo1" }
	// and { service="bar2", tag="foo2" } respectively.
	urlMask?: null | string @go(URLMask,*string)
}

#CloudRunParameters: {
	// Cloud Run service is the main resource of Cloud Run.
	// The service must be 1-63 characters long, and comply with RFC1035.
	// Example value: "run-service".
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/cloudrun/v1beta1.Service
	// +kubebuilder:validation:Optional
	service?: null | string @go(Service,*string)

	// Cloud Run tag represents the "named-revision" to provide
	// additional fine-grained traffic routing information.
	// The tag must be 1-63 characters long, and comply with RFC1035.
	// Example value: "revision-0010".
	// +kubebuilder:validation:Optional
	tag?: null | string @go(Tag,*string)

	// A template to parse service and tag fields from a request URL.
	// URL mask allows for routing to multiple Run services without having
	// to create multiple network endpoint groups and backend services.
	// For example, request URLs "foo1.domain.com/bar1" and "foo1.domain.com/bar2"
	// an be backed by the same Serverless Network Endpoint Group (NEG) with
	// URL mask ".domain.com/". The URL mask will parse them to { service="bar1", tag="foo1" }
	// and { service="bar2", tag="foo2" } respectively.
	// +kubebuilder:validation:Optional
	urlMask?: null | string @go(URLMask,*string)
}

#RegionNetworkEndpointGroupInitParameters: {
	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	appEngine?: [...#AppEngineInitParameters] @go(AppEngine,[]AppEngineInitParameters)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	cloudFunction?: [...#CloudFunctionInitParameters] @go(CloudFunction,[]CloudFunctionInitParameters)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	cloudRun?: [...#CloudRunInitParameters] @go(CloudRun,[]CloudRunInitParameters)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS
	// Default value is SERVERLESS.
	// Possible values are: SERVERLESS, PRIVATE_SERVICE_CONNECT.
	networkEndpointType?: null | string @go(NetworkEndpointType,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)
}

#RegionNetworkEndpointGroupObservation: {
	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	appEngine?: [...#AppEngineObservation] @go(AppEngine,[]AppEngineObservation)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	cloudFunction?: [...#CloudFunctionObservation] @go(CloudFunction,[]CloudFunctionObservation)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	cloudRun?: [...#CloudRunObservation] @go(CloudRun,[]CloudRunObservation)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	description?: null | string @go(Description,*string)

	// an identifier for the resource with format projects/{{project}}/regions/{{region}}/networkEndpointGroups/{{name}}
	id?: null | string @go(ID,*string)

	// This field is only used for PSC.
	// The URL of the network to which all network endpoints in the NEG belong. Uses
	// "default" project network if unspecified.
	network?: null | string @go(Network,*string)

	// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS
	// Default value is SERVERLESS.
	// Possible values are: SERVERLESS, PRIVATE_SERVICE_CONNECT.
	networkEndpointType?: null | string @go(NetworkEndpointType,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	project?: null | string @go(Project,*string)

	// The target service url used to set up private service connection to
	// a Google API or a PSC Producer Service Attachment.
	pscTargetService?: null | string @go(PscTargetService,*string)

	// A reference to the region where the Serverless NEGs Reside.
	region?: null | string @go(Region,*string)

	// The URI of the created resource.
	selfLink?: null | string @go(SelfLink,*string)

	// This field is only used for PSC.
	// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
	subnetwork?: null | string @go(Subnetwork,*string)
}

#RegionNetworkEndpointGroupParameters: {
	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	appEngine?: [...#AppEngineParameters] @go(AppEngine,[]AppEngineParameters)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cloudFunction?: [...#CloudFunctionParameters] @go(CloudFunction,[]CloudFunctionParameters)

	// Only valid when networkEndpointType is "SERVERLESS".
	// Only one of cloud_run, app_engine, cloud_function or serverless_deployment may be set.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	cloudRun?: [...#CloudRunParameters] @go(CloudRun,[]CloudRunParameters)

	// An optional description of this resource. Provide this property when
	// you create the resource.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// This field is only used for PSC.
	// The URL of the network to which all network endpoints in the NEG belong. Uses
	// "default" project network if unspecified.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Network
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("self_link",true)
	// +kubebuilder:validation:Optional
	network?: null | string @go(Network,*string)

	// Type of network endpoints in this network endpoint group. Defaults to SERVERLESS
	// Default value is SERVERLESS.
	// Possible values are: SERVERLESS, PRIVATE_SERVICE_CONNECT.
	// +kubebuilder:validation:Optional
	networkEndpointType?: null | string @go(NetworkEndpointType,*string)

	// The ID of the project in which the resource belongs.
	// If it is not provided, the provider project is used.
	// +kubebuilder:validation:Optional
	project?: null | string @go(Project,*string)

	// The target service url used to set up private service connection to
	// a Google API or a PSC Producer Service Attachment.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.ServiceAttachment
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("self_link",true)
	// +kubebuilder:validation:Optional
	pscTargetService?: null | string @go(PscTargetService,*string)

	// A reference to the region where the Serverless NEGs Reside.
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// This field is only used for PSC.
	// Optional URL of the subnetwork to which all network endpoints in the NEG belong.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/compute/v1beta1.Subnetwork
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("self_link",true)
	// +kubebuilder:validation:Optional
	subnetwork?: null | string @go(Subnetwork,*string)
}

// RegionNetworkEndpointGroupSpec defines the desired state of RegionNetworkEndpointGroup
#RegionNetworkEndpointGroupSpec: {
	forProvider: #RegionNetworkEndpointGroupParameters @go(ForProvider)

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
	initProvider?: #RegionNetworkEndpointGroupInitParameters @go(InitProvider)
}

// RegionNetworkEndpointGroupStatus defines the observed state of RegionNetworkEndpointGroup.
#RegionNetworkEndpointGroupStatus: {
	atProvider?: #RegionNetworkEndpointGroupObservation @go(AtProvider)
}

// RegionNetworkEndpointGroup is the Schema for the RegionNetworkEndpointGroups API. A regional NEG that can support Serverless Products.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#RegionNetworkEndpointGroup: {
	spec:    #RegionNetworkEndpointGroupSpec   @go(Spec)
	status?: #RegionNetworkEndpointGroupStatus @go(Status)
}

// RegionNetworkEndpointGroupList contains a list of RegionNetworkEndpointGroups
#RegionNetworkEndpointGroupList: {
	items: [...#RegionNetworkEndpointGroup] @go(Items,[]RegionNetworkEndpointGroup)
}
