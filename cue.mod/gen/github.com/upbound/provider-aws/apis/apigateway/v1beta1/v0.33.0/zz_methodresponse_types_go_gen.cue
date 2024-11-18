// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigateway/v1beta1

package v1beta1

#MethodResponseObservation: {
	id?: null | string @go(ID,*string)
}

#MethodResponseParameters: {
	// HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.Method
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("http_method",false)
	// +kubebuilder:validation:Optional
	httpMethod?: null | string @go(HTTPMethod,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// API resource ID
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.Resource
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	resourceId?: null | string @go(ResourceID,*string)

	// Map of the API models used for the response's content type
	// +kubebuilder:validation:Optional
	responseModels?: {[string]: null | string} @go(ResponseModels,map[string]*string)

	// Map of response parameters that can be sent to the caller.
	// For example: response_parameters = { "method.response.header.X-Some-Header" = true }
	// would define that the header X-Some-Header can be provided on the response.
	// +kubebuilder:validation:Optional
	responseParameters?: {[string]: null | bool} @go(ResponseParameters,map[string]*bool)

	// ID of the associated REST API
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.RestAPI
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	restApiId?: null | string @go(RestAPIID,*string)

	// HTTP status code
	// +kubebuilder:validation:Required
	statusCode?: null | string @go(StatusCode,*string)
}

// MethodResponseSpec defines the desired state of MethodResponse
#MethodResponseSpec: {
	forProvider: #MethodResponseParameters @go(ForProvider)
}

// MethodResponseStatus defines the observed state of MethodResponse.
#MethodResponseStatus: {
	atProvider?: #MethodResponseObservation @go(AtProvider)
}

// MethodResponse is the Schema for the MethodResponses API. Provides an HTTP Method Response for an API Gateway Resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#MethodResponse: {
	spec:    #MethodResponseSpec   @go(Spec)
	status?: #MethodResponseStatus @go(Status)
}

// MethodResponseList contains a list of MethodResponses
#MethodResponseList: {
	items: [...#MethodResponse] @go(Items,[]MethodResponse)
}
