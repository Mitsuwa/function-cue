// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

// RouteParameters defines the desired state of Route
#RouteParameters: {
	// Region is which region the Route will be created.
	// +kubebuilder:validation:Required
	region:          string      @go(Region)
	apiKeyRequired?: null | bool @go(APIKeyRequired,*bool)
	authorizationScopes?: [...null | string] @go(AuthorizationScopes,[]*string)
	authorizationType?:        null | string @go(AuthorizationType,*string)
	authorizerID?:             null | string @go(AuthorizerID,*string)
	modelSelectionExpression?: null | string @go(ModelSelectionExpression,*string)
	operationName?:            null | string @go(OperationName,*string)
	requestModels?: {[string]: null | string} @go(RequestModels,map[string]*string)
	requestParameters?: {[string]: null | #ParameterConstraints} @go(RequestParameters,map[string]*ParameterConstraints)

	// +kubebuilder:validation:Required
	routeKey?:                         null | string @go(RouteKey,*string)
	routeResponseSelectionExpression?: null | string @go(RouteResponseSelectionExpression,*string)

	#CustomRouteParameters
}

// RouteSpec defines the desired state of Route
#RouteSpec: {
	forProvider: #RouteParameters @go(ForProvider)
}

// RouteObservation defines the observed state of Route
#RouteObservation: {
	apiGatewayManaged?: null | bool   @go(APIGatewayManaged,*bool)
	routeID?:           null | string @go(RouteID,*string)
	target?:            null | string @go(Target,*string)
}

// RouteStatus defines the observed state of Route.
#RouteStatus: {
	atProvider?: #RouteObservation @go(AtProvider)
}

// Route is the Schema for the Routes API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Route: {
	spec:    #RouteSpec   @go(Spec)
	status?: #RouteStatus @go(Status)
}

// RouteList contains a list of Routes
#RouteList: {
	items: [...#Route] @go(Items,[]Route)
}
