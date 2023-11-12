// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/apigatewayv2/v1beta1

package v1beta1

#IntegrationResponseObservation: {
	// API identifier.
	apiId?: null | string @go(APIID,*string)

	// How to handle response payload content type conversions. Valid values: CONVERT_TO_BINARY, CONVERT_TO_TEXT.
	contentHandlingStrategy?: null | string @go(ContentHandlingStrategy,*string)

	// Integration response identifier.
	id?: null | string @go(ID,*string)

	// Identifier of the aws_apigatewayv2_integration.
	integrationId?: null | string @go(IntegrationID,*string)

	// Integration response key.
	integrationResponseKey?: null | string @go(IntegrationResponseKey,*string)

	// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
	responseTemplates?: {[string]: null | string} @go(ResponseTemplates,map[string]*string)

	// The template selection expression for the integration response.
	templateSelectionExpression?: null | string @go(TemplateSelectionExpression,*string)
}

#IntegrationResponseParameters: {
	// API identifier.
	// +crossplane:generate:reference:type=API
	// +kubebuilder:validation:Optional
	apiId?: null | string @go(APIID,*string)

	// How to handle response payload content type conversions. Valid values: CONVERT_TO_BINARY, CONVERT_TO_TEXT.
	// +kubebuilder:validation:Optional
	contentHandlingStrategy?: null | string @go(ContentHandlingStrategy,*string)

	// Identifier of the aws_apigatewayv2_integration.
	// +crossplane:generate:reference:type=Integration
	// +kubebuilder:validation:Optional
	integrationId?: null | string @go(IntegrationID,*string)

	// Integration response key.
	// +kubebuilder:validation:Optional
	integrationResponseKey?: null | string @go(IntegrationResponseKey,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Map of Velocity templates that are applied on the request payload based on the value of the Content-Type header sent by the client.
	// +kubebuilder:validation:Optional
	responseTemplates?: {[string]: null | string} @go(ResponseTemplates,map[string]*string)

	// The template selection expression for the integration response.
	// +kubebuilder:validation:Optional
	templateSelectionExpression?: null | string @go(TemplateSelectionExpression,*string)
}

// IntegrationResponseSpec defines the desired state of IntegrationResponse
#IntegrationResponseSpec: {
	forProvider: #IntegrationResponseParameters @go(ForProvider)
}

// IntegrationResponseStatus defines the observed state of IntegrationResponse.
#IntegrationResponseStatus: {
	atProvider?: #IntegrationResponseObservation @go(AtProvider)
}

// IntegrationResponse is the Schema for the IntegrationResponses API. Manages an Amazon API Gateway Version 2 integration response.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#IntegrationResponse: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.integrationResponseKey)",message="integrationResponseKey is a required parameter"
	spec:    #IntegrationResponseSpec   @go(Spec)
	status?: #IntegrationResponseStatus @go(Status)
}

// IntegrationResponseList contains a list of IntegrationResponses
#IntegrationResponseList: {
	items: [...#IntegrationResponse] @go(Items,[]IntegrationResponse)
}
