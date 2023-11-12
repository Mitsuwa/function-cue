// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/appconfig/v1beta1

package v1beta1

#ActionObservation: {
}

#ActionParameters: {
	// Information about the action.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The action name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// An Amazon Resource Name (ARN) for an Identity and Access Management assume role.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	roleArn?: null | string @go(RoleArn,*string)

	// The extension URI associated to the action point in the extension definition. The URI can be an Amazon Resource Name (ARN) for one of the following: an Lambda function, an Amazon Simple Queue Service queue, an Amazon Simple Notification Service topic, or the Amazon EventBridge default event bus.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/sns/v1beta1.Topic
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	uri?: null | string @go(URI,*string)
}

#ActionPointObservation: {
}

#ActionPointParameters: {
	// An action defines the tasks the extension performs during the AppConfig workflow. Detailed below.
	// +kubebuilder:validation:Required
	action: [...#ActionParameters] @go(Action,[]ActionParameters)

	// The point at which to perform the defined actions. Valid points are PRE_CREATE_HOSTED_CONFIGURATION_VERSION, PRE_START_DEPLOYMENT, ON_DEPLOYMENT_START, ON_DEPLOYMENT_STEP, ON_DEPLOYMENT_BAKING, ON_DEPLOYMENT_COMPLETE, ON_DEPLOYMENT_ROLLED_BACK.
	// +kubebuilder:validation:Required
	point?: null | string @go(Point,*string)
}

#ExtensionObservation: {
	// ARN of the AppConfig Extension.
	arn?: null | string @go(Arn,*string)

	// AppConfig Extension ID.
	id?: null | string @go(ID,*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// The version number for the extension.
	version?: null | float64 @go(Version,*float64)
}

#ExtensionParameters: {
	// The action points defined in the extension. Detailed below.
	// +kubebuilder:validation:Required
	actionPoint: [...#ActionPointParameters] @go(ActionPoint,[]ActionPointParameters)

	// Information about the extension.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A name for the extension. Each extension name in your account must be unique. Extension versions use the same name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The parameters accepted by the extension. You specify parameter values when you associate the extension to an AppConfig resource by using the CreateExtensionAssociation API action. For Lambda extension actions, these parameters are included in the Lambda request object. Detailed below.
	// +kubebuilder:validation:Optional
	parameter?: [...#ParameterParameters] @go(Parameter,[]ParameterParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

#ParameterObservation: {
}

#ParameterParameters: {
	// Information about the parameter.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The parameter name.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Determines if a parameter value must be specified in the extension association.
	// +kubebuilder:validation:Optional
	required?: null | bool @go(Required,*bool)
}

// ExtensionSpec defines the desired state of Extension
#ExtensionSpec: {
	forProvider: #ExtensionParameters @go(ForProvider)
}

// ExtensionStatus defines the observed state of Extension.
#ExtensionStatus: {
	atProvider?: #ExtensionObservation @go(AtProvider)
}

// Extension is the Schema for the Extensions API. Provides an AppConfig Extension resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Extension: {
	spec:    #ExtensionSpec   @go(Spec)
	status?: #ExtensionStatus @go(Status)
}

// ExtensionList contains a list of Extensions
#ExtensionList: {
	items: [...#Extension] @go(Items,[]Extension)
}
