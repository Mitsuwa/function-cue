// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1

package v1beta1

#VersionInitParameters: {
	// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
	description?: null | string @go(Description,*string)

	// The human-readable name of the version. Limit of 64 characters.
	displayName?: null | string @go(DisplayName,*string)
}

#VersionNluSettingsInitParameters: {
}

#VersionNluSettingsObservation: {
	// To filter out false positive results and still get variety in matched natural language inputs for your agent, you can tune the machine learning classification threshold. If the returned score value is less than the threshold value, then a no-match event will be triggered.
	// The score values range from 0.0 (completely uncertain) to 1.0 (completely certain). If set to 0.0, the default of 0.3 is used.
	classificationThreshold?: null | float64 @go(ClassificationThreshold,*float64)

	// Indicates NLU model training mode.
	modelTrainingMode?: null | string @go(ModelTrainingMode,*string)

	// Indicates the type of NLU model.
	modelType?: null | string @go(ModelType,*string)
}

#VersionNluSettingsParameters: {
}

#VersionObservation: {
	// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
	createTime?: null | string @go(CreateTime,*string)

	// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
	description?: null | string @go(Description,*string)

	// The human-readable name of the version. Limit of 64 characters.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format {{parent}}/versions/{{name}}
	id?: null | string @go(ID,*string)

	// Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.
	name?: null | string @go(Name,*string)

	// The NLU settings of the flow at version creation.
	// Structure is documented below.
	nluSettings?: [...#VersionNluSettingsObservation] @go(NluSettings,[]VersionNluSettingsObservation)

	// The Flow to create an Version for.
	// Format: projects//locations//agents//flows/.
	parent?: null | string @go(Parent,*string)

	// The state of this version.
	state?: null | string @go(State,*string)
}

#VersionParameters: {
	// The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The human-readable name of the version. Limit of 64 characters.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The Flow to create an Version for.
	// Format: projects//locations//agents//flows/.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1.Agent
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractParamPath("start_flow",true)
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)
}

// VersionSpec defines the desired state of Version
#VersionSpec: {
	forProvider: #VersionParameters @go(ForProvider)

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
	initProvider?: #VersionInitParameters @go(InitProvider)
}

// VersionStatus defines the observed state of Version.
#VersionStatus: {
	atProvider?: #VersionObservation @go(AtProvider)
}

// Version is the Schema for the Versions API. You can create multiple versions of your agent flows and deploy them to separate serving environments.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Version: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	spec:    #VersionSpec   @go(Spec)
	status?: #VersionStatus @go(Status)
}

// VersionList contains a list of Versions
#VersionList: {
	items: [...#Version] @go(Items,[]Version)
}
