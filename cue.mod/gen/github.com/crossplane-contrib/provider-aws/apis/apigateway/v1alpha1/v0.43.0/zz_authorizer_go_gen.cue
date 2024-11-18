// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigateway/v1alpha1

package v1alpha1

// AuthorizerParameters defines the desired state of Authorizer
#AuthorizerParameters: {
	// Region is which region the Authorizer will be created.
	// +kubebuilder:validation:Required
	region: string @go(Region)

	// Optional customer-defined field, used in OpenAPI imports and exports without
	// functional impact.
	authType?: null | string @go(AuthType,*string)

	// Specifies the required credentials as an IAM role for API Gateway to invoke
	// the authorizer. To specify an IAM role for API Gateway to assume, use the
	// role's Amazon Resource Name (ARN). To use resource-based permissions on the
	// Lambda function, specify null.
	authorizerCredentials?: null | string @go(AuthorizerCredentials,*string)

	// The TTL in seconds of cached authorizer results. If it equals 0, authorization
	// caching is disabled. If it is greater than 0, API Gateway will cache authorizer
	// responses. If this field is not set, the default value is 300. The maximum
	// value is 3600, or 1 hour.
	authorizerResultTtlInSeconds?: null | int64 @go(AuthorizerResultTtlInSeconds,*int64)

	// Specifies the authorizer's Uniform Resource Identifier (URI). For TOKEN or
	// REQUEST authorizers, this must be a well-formed Lambda function URI, for
	// example, arn:aws:apigateway:us-west-2:lambda:path/2015-03-31/functions/arn:aws:lambda:us-west-2:{account_id}:function:{lambda_function_name}/invocations.
	// In general, the URI has this form arn:aws:apigateway:{region}:lambda:path/{service_api},
	// where {region} is the same as the region hosting the Lambda function, path
	// indicates that the remaining substring in the URI should be treated as the
	// path to the resource, including the initial /. For Lambda functions, this
	// is usually of the form /2015-03-31/functions/[FunctionARN]/invocations.
	authorizerURI?: null | string @go(AuthorizerURI,*string)

	// The identity source for which authorization is requested. For a TOKEN or
	// COGNITO_USER_POOLS authorizer, this is required and specifies the request
	// header mapping expression for the custom header holding the authorization
	// token submitted by the client. For example, if the token header name is Auth,
	// the header mapping expression is method.request.header.Auth. For the REQUEST
	// authorizer, this is required when authorization caching is enabled. The value
	// is a comma-separated string of one or more mapping expressions of the specified
	// request parameters. For example, if an Auth header, a Name query string parameter
	// are defined as identity sources, this value is method.request.header.Auth,
	// method.request.querystring.Name. These parameters will be used to derive
	// the authorization caching key and to perform runtime validation of the REQUEST
	// authorizer by verifying all of the identity-related request parameters are
	// present, not null and non-empty. Only when this is true does the authorizer
	// invoke the authorizer Lambda function, otherwise, it returns a 401 Unauthorized
	// response without calling the Lambda function. The valid value is a string
	// of comma-separated mapping expressions of the specified request parameters.
	// When the authorization caching is not enabled, this property is optional.
	identitySource?: null | string @go(IdentitySource,*string)

	// A validation expression for the incoming identity token. For TOKEN authorizers,
	// this value is a regular expression. For COGNITO_USER_POOLS authorizers, API
	// Gateway will match the aud field of the incoming token from the client against
	// the specified regular expression. It will invoke the authorizer's Lambda
	// function when there is a match. Otherwise, it will return a 401 Unauthorized
	// response without calling the Lambda function. The validation expression does
	// not apply to the REQUEST authorizer.
	identityValidationExpression?: null | string @go(IdentityValidationExpression,*string)

	// The name of the authorizer.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The authorizer type. Valid values are TOKEN for a Lambda function using a
	// single authorization token submitted in a custom header, REQUEST for a Lambda
	// function using incoming request parameters, and COGNITO_USER_POOLS for using
	// an Amazon Cognito user pool.
	// +kubebuilder:validation:Required
	type_?: null | string @go(Type,*string)

	#CustomAuthorizerParameters
}

// AuthorizerSpec defines the desired state of Authorizer
#AuthorizerSpec: {
	forProvider: #AuthorizerParameters @go(ForProvider)
}

// AuthorizerObservation defines the observed state of Authorizer
#AuthorizerObservation: {
	// The identifier for the authorizer resource.
	id?: null | string @go(ID,*string)

	// A list of the Amazon Cognito user pool ARNs for the COGNITO_USER_POOLS authorizer.
	// Each element is of this format: arn:aws:cognito-idp:{region}:{account_id}:userpool/{user_pool_id}.
	// For a TOKEN or REQUEST authorizer, this is not defined.
	providerARNs?: [...null | string] @go(ProviderARNs,[]*string)
}

// AuthorizerStatus defines the observed state of Authorizer.
#AuthorizerStatus: {
	atProvider?: #AuthorizerObservation @go(AtProvider)
}

// Authorizer is the Schema for the Authorizers API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Authorizer: {
	spec:    #AuthorizerSpec   @go(Spec)
	status?: #AuthorizerStatus @go(Status)
}

// AuthorizerList contains a list of Authorizers
#AuthorizerList: {
	items: [...#Authorizer] @go(Items,[]Authorizer)
}
