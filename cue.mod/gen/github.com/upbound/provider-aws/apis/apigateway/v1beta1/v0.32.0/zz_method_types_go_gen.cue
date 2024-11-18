// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigateway/v1beta1

package v1beta1

#MethodObservation: {
	id?: null | string @go(ID,*string)
}

#MethodParameters: {
	// Specify if the method requires an API key
	// +kubebuilder:validation:Optional
	apiKeyRequired?: null | bool @go(APIKeyRequired,*bool)

	// Type of authorization used for the method (NONE, CUSTOM, AWS_IAM, COGNITO_USER_POOLS)
	// +kubebuilder:validation:Required
	authorization?: null | string @go(Authorization,*string)

	// Authorization scopes used when the authorization is COGNITO_USER_POOLS
	// +kubebuilder:validation:Optional
	authorizationScopes?: [...null | string] @go(AuthorizationScopes,[]*string)

	// Authorizer id to be used when the authorization is CUSTOM or COGNITO_USER_POOLS
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.Authorizer
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	authorizerId?: null | string @go(AuthorizerID,*string)

	// HTTP Method (GET, POST, PUT, DELETE, HEAD, OPTIONS, ANY)
	// +kubebuilder:validation:Required
	httpMethod?: null | string @go(HTTPMethod,*string)

	// Function name that will be given to the method when generating an SDK through API Gateway. If omitted, API Gateway will generate a function name based on the resource path and HTTP verb.
	// +kubebuilder:validation:Optional
	operationName?: null | string @go(OperationName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Map of the API models used for the request's content type
	// where key is the content type (e.g., application/json)
	// and value is either Error, Empty (built-in models) or aws_api_gateway_model's name.
	// +kubebuilder:validation:Optional
	requestModels?: {[string]: null | string} @go(RequestModels,map[string]*string)

	// Map of request parameters (from the path, query string and headers) that should be passed to the integration. The boolean value indicates whether the parameter is required (true) or optional (false).
	// For example: request_parameters = {"method.request.header.X-Some-Header" = true "method.request.querystring.some-query-param" = true} would define that the header X-Some-Header and the query string some-query-param must be provided in the request.
	// +kubebuilder:validation:Optional
	requestParameters?: {[string]: null | bool} @go(RequestParameters,map[string]*bool)

	// ID of a aws_api_gateway_request_validator
	// +kubebuilder:validation:Optional
	requestValidatorId?: null | string @go(RequestValidatorID,*string)

	// API resource ID
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.Resource
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	resourceId?: null | string @go(ResourceID,*string)

	// ID of the associated REST API
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/apigateway/v1beta1.RestAPI
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	restApiId?: null | string @go(RestAPIID,*string)
}

// MethodSpec defines the desired state of Method
#MethodSpec: {
	forProvider: #MethodParameters @go(ForProvider)
}

// MethodStatus defines the observed state of Method.
#MethodStatus: {
	atProvider?: #MethodObservation @go(AtProvider)
}

// Method is the Schema for the Methods API. Provides a HTTP Method for an API Gateway Resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Method: {
	spec:    #MethodSpec   @go(Spec)
	status?: #MethodStatus @go(Status)
}

// MethodList contains a list of Methods
#MethodList: {
	items: [...#Method] @go(Items,[]Method)
}
