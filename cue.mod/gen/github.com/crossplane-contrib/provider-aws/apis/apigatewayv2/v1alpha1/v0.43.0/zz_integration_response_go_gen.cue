// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/apigatewayv2/v1alpha1

package v1alpha1

// IntegrationResponseParameters defines the desired state of IntegrationResponse
#IntegrationResponseParameters: {
	// Region is which region the IntegrationResponse will be created.
	// +kubebuilder:validation:Required
	region:                   string        @go(Region)
	contentHandlingStrategy?: null | string @go(ContentHandlingStrategy,*string)

	// +kubebuilder:validation:Required
	integrationResponseKey?: null | string @go(IntegrationResponseKey,*string)
	responseParameters?: {[string]: null | string} @go(ResponseParameters,map[string]*string)
	responseTemplates?: {[string]: null | string} @go(ResponseTemplates,map[string]*string)
	templateSelectionExpression?: null | string @go(TemplateSelectionExpression,*string)

	#CustomIntegrationResponseParameters
}

// IntegrationResponseSpec defines the desired state of IntegrationResponse
#IntegrationResponseSpec: {
	forProvider: #IntegrationResponseParameters @go(ForProvider)
}

// IntegrationResponseObservation defines the observed state of IntegrationResponse
#IntegrationResponseObservation: {
	integrationResponseID?: null | string @go(IntegrationResponseID,*string)
}

// IntegrationResponseStatus defines the observed state of IntegrationResponse.
#IntegrationResponseStatus: {
	atProvider?: #IntegrationResponseObservation @go(AtProvider)
}

// IntegrationResponse is the Schema for the IntegrationResponses API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#IntegrationResponse: {
	spec:    #IntegrationResponseSpec   @go(Spec)
	status?: #IntegrationResponseStatus @go(Status)
}

// IntegrationResponseList contains a list of IntegrationResponses
#IntegrationResponseList: {
	items: [...#IntegrationResponse] @go(Items,[]IntegrationResponse)
}
