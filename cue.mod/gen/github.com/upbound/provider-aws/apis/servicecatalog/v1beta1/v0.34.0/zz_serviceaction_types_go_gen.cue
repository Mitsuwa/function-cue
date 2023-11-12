// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/servicecatalog/v1beta1

package v1beta1

#DefinitionObservation: {
	// ARN of the role that performs the self-service actions on your behalf. For example, arn:aws:iam::12345678910:role/ActionRole. To reuse the provisioned product launch role, set to LAUNCH_ROLE.
	assumeRole?: null | string @go(AssumeRole,*string)

	// Name of the SSM document. For example, AWS-RestartEC2Instance. If you are using a shared SSM document, you must provide the ARN instead of the name.
	name?: null | string @go(Name,*string)

	// List of parameters in JSON format. For example: [{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}] or [{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}].
	parameters?: null | string @go(Parameters,*string)

	// Service action definition type. Valid value is SSM_AUTOMATION. Default is SSM_AUTOMATION.
	type?: null | string @go(Type,*string)

	// SSM document version. For example, 1.
	version?: null | string @go(Version,*string)
}

#DefinitionParameters: {
	// ARN of the role that performs the self-service actions on your behalf. For example, arn:aws:iam::12345678910:role/ActionRole. To reuse the provisioned product launch role, set to LAUNCH_ROLE.
	// +kubebuilder:validation:Optional
	assumeRole?: null | string @go(AssumeRole,*string)

	// Name of the SSM document. For example, AWS-RestartEC2Instance. If you are using a shared SSM document, you must provide the ARN instead of the name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// List of parameters in JSON format. For example: [{\"Name\":\"InstanceId\",\"Type\":\"TARGET\"}] or [{\"Name\":\"InstanceId\",\"Type\":\"TEXT_VALUE\"}].
	// +kubebuilder:validation:Optional
	parameters?: null | string @go(Parameters,*string)

	// Service action definition type. Valid value is SSM_AUTOMATION. Default is SSM_AUTOMATION.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)

	// SSM document version. For example, 1.
	// +kubebuilder:validation:Required
	version?: null | string @go(Version,*string)
}

#ServiceActionObservation: {
	// Language code. Valid values are en (English), jp (Japanese), and zh (Chinese). Default is en.
	acceptLanguage?: null | string @go(AcceptLanguage,*string)

	// Self-service action definition configuration block. Detailed below.
	definition?: [...#DefinitionObservation] @go(Definition,[]DefinitionObservation)

	// Self-service action description.
	description?: null | string @go(Description,*string)

	// Identifier of the service action.
	id?: null | string @go(ID,*string)

	// Self-service action name.
	name?: null | string @go(Name,*string)
}

#ServiceActionParameters: {
	// Language code. Valid values are en (English), jp (Japanese), and zh (Chinese). Default is en.
	// +kubebuilder:validation:Optional
	acceptLanguage?: null | string @go(AcceptLanguage,*string)

	// Self-service action definition configuration block. Detailed below.
	// +kubebuilder:validation:Optional
	definition?: [...#DefinitionParameters] @go(Definition,[]DefinitionParameters)

	// Self-service action description.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Self-service action name.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// ServiceActionSpec defines the desired state of ServiceAction
#ServiceActionSpec: {
	forProvider: #ServiceActionParameters @go(ForProvider)
}

// ServiceActionStatus defines the observed state of ServiceAction.
#ServiceActionStatus: {
	atProvider?: #ServiceActionObservation @go(AtProvider)
}

// ServiceAction is the Schema for the ServiceActions API. Manages a Service Catalog Service Action
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ServiceAction: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.definition)",message="definition is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.name)",message="name is a required parameter"
	spec:    #ServiceActionSpec   @go(Spec)
	status?: #ServiceActionStatus @go(Status)
}

// ServiceActionList contains a list of ServiceActions
#ServiceActionList: {
	items: [...#ServiceAction] @go(Items,[]ServiceAction)
}
