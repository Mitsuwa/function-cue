// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

// GatewayResponseParameters defines the desired state of GatewayResponse
#GatewayResponseParameters: {
	// Region is which region the GatewayResponse will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Response parameters (paths, query strings and headers) of the GatewayResponse
	// as a string-to-string map of key-value pairs.
	responseParameters?: {[string]: null | string} @go(ResponseParameters,map[string]*string)

	// Response templates of the GatewayResponse as a string-to-string map of key-value
	// pairs.
	responseTemplates?: {[string]: null | string} @go(ResponseTemplates,map[string]*string)

	// The response type of the associated GatewayResponse
	// +kubebuilder:validation:Required
	responseType?: null | string @go(ResponseType,*string)

	// The HTTP status code of the GatewayResponse.
	statusCode?: null | string @go(StatusCode,*string)

	#CustomGatewayResponseParameters
}

// GatewayResponseSpec defines the desired state of GatewayResponse
#GatewayResponseSpec: {
	forProvider: #GatewayResponseParameters @go(ForProvider)
}

// GatewayResponseObservation defines the observed state of GatewayResponse
#GatewayResponseObservation: {
	// A Boolean flag to indicate whether this GatewayResponse is the default gateway
	// response (true) or not (false). A default gateway response is one generated
	// by API Gateway without any customization by an API developer.
	defaultResponse?: null | bool @go(DefaultResponse,*bool)
}

// GatewayResponseStatus defines the observed state of GatewayResponse.
#GatewayResponseStatus: {
	atProvider?: #GatewayResponseObservation @go(AtProvider)
}

// GatewayResponse is the Schema for the GatewayResponses API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#GatewayResponse: {
	spec:    #GatewayResponseSpec   @go(Spec)
	status?: #GatewayResponseStatus @go(Status)
}

// GatewayResponseList contains a list of GatewayResponses
#GatewayResponseList: {
	items: [...#GatewayResponse] @go(Items,[]GatewayResponse)
}
