// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1

package v1beta1

#EnvironmentInitParameters: {
	// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
	description?: null | string @go(Description,*string)

	// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
	displayName?: null | string @go(DisplayName,*string)

	// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
	// Structure is documented below.
	versionConfigs?: [...#VersionConfigsInitParameters] @go(VersionConfigs,[]VersionConfigsInitParameters)
}

#EnvironmentObservation: {
	// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
	description?: null | string @go(Description,*string)

	// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
	displayName?: null | string @go(DisplayName,*string)

	// an identifier for the resource with format {{parent}}/environments/{{name}}
	id?: null | string @go(ID,*string)

	// The name of the environment.
	name?: null | string @go(Name,*string)

	// The Agent to create an Environment for.
	// Format: projects//locations//agents/.
	parent?: null | string @go(Parent,*string)

	// Update time of this environment. A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
	updateTime?: null | string @go(UpdateTime,*string)

	// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
	// Structure is documented below.
	versionConfigs?: [...#VersionConfigsObservation] @go(VersionConfigs,[]VersionConfigsObservation)
}

#EnvironmentParameters: {
	// The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// The human-readable name of the environment (unique in an agent). Limit of 64 characters.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// The Agent to create an Environment for.
	// Format: projects//locations//agents/.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1.Agent
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	parent?: null | string @go(Parent,*string)

	// A list of configurations for flow versions. You should include version configs for all flows that are reachable from [Start Flow][Agent.start_flow] in the agent. Otherwise, an error will be returned.
	// Structure is documented below.
	// +kubebuilder:validation:Optional
	versionConfigs?: [...#VersionConfigsParameters] @go(VersionConfigs,[]VersionConfigsParameters)
}

#VersionConfigsInitParameters: {
}

#VersionConfigsObservation: {
	// Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
	version?: null | string @go(Version,*string)
}

#VersionConfigsParameters: {
	// Format: projects/{{project}}/locations/{{location}}/agents/{{agent}}/flows/{{flow}}/versions/{{version}}.
	// +crossplane:generate:reference:type=github.com/upbound/provider-gcp/apis/dialogflowcx/v1beta1.Version
	// +crossplane:generate:reference:extractor=github.com/crossplane/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	version?: null | string @go(Version,*string)
}

// EnvironmentSpec defines the desired state of Environment
#EnvironmentSpec: {
	forProvider: #EnvironmentParameters @go(ForProvider)

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
	initProvider?: #EnvironmentInitParameters @go(InitProvider)
}

// EnvironmentStatus defines the observed state of Environment.
#EnvironmentStatus: {
	atProvider?: #EnvironmentObservation @go(AtProvider)
}

// Environment is the Schema for the Environments API. Represents an environment for an agent.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#Environment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.displayName) || (has(self.initProvider) && has(self.initProvider.displayName))",message="spec.forProvider.displayName is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.versionConfigs) || (has(self.initProvider) && has(self.initProvider.versionConfigs))",message="spec.forProvider.versionConfigs is a required parameter"
	spec:    #EnvironmentSpec   @go(Spec)
	status?: #EnvironmentStatus @go(Status)
}

// EnvironmentList contains a list of Environments
#EnvironmentList: {
	items: [...#Environment] @go(Items,[]Environment)
}
