// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#QuotaInitParameters: {
	// Specifies the required cpu of the Spring Cloud Deployment. Possible Values are 500m, 1, 2, 3 and 4. Defaults to 1 if not specified.
	cpu?: null | string @go(CPU,*string)

	// Specifies the required memory size of the Spring Cloud Deployment. Possible Values are 512Mi, 1Gi, 2Gi, 3Gi, 4Gi, 5Gi, 6Gi, 7Gi, and 8Gi. Defaults to 1Gi if not specified.
	memory?: null | string @go(Memory,*string)
}

#QuotaObservation: {
	// Specifies the required cpu of the Spring Cloud Deployment. Possible Values are 500m, 1, 2, 3 and 4. Defaults to 1 if not specified.
	cpu?: null | string @go(CPU,*string)

	// Specifies the required memory size of the Spring Cloud Deployment. Possible Values are 512Mi, 1Gi, 2Gi, 3Gi, 4Gi, 5Gi, 6Gi, 7Gi, and 8Gi. Defaults to 1Gi if not specified.
	memory?: null | string @go(Memory,*string)
}

#QuotaParameters: {
	// Specifies the required cpu of the Spring Cloud Deployment. Possible Values are 500m, 1, 2, 3 and 4. Defaults to 1 if not specified.
	// +kubebuilder:validation:Optional
	cpu?: null | string @go(CPU,*string)

	// Specifies the required memory size of the Spring Cloud Deployment. Possible Values are 512Mi, 1Gi, 2Gi, 3Gi, 4Gi, 5Gi, 6Gi, 7Gi, and 8Gi. Defaults to 1Gi if not specified.
	// +kubebuilder:validation:Optional
	memory?: null | string @go(Memory,*string)
}

#SpringCloudBuildDeploymentInitParameters: {
	// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
	addonJson?: null | string @go(AddonJSON,*string)

	// The ID of the Spring Cloud Build Result.
	buildResultId?: null | string @go(BuildResultID,*string)

	// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
	environmentVariables?: {[string]: null | string} @go(EnvironmentVariables,map[string]*string)

	// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between 1 and 500. Defaults to 1 if not specified.
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// A quota block as defined below.
	quota?: [...#QuotaInitParameters] @go(Quota,[]QuotaInitParameters)
}

#SpringCloudBuildDeploymentObservation: {
	// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
	addonJson?: null | string @go(AddonJSON,*string)

	// The ID of the Spring Cloud Build Result.
	buildResultId?: null | string @go(BuildResultID,*string)

	// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
	environmentVariables?: {[string]: null | string} @go(EnvironmentVariables,map[string]*string)

	// The ID of the Spring Cloud Build Deployment.
	id?: null | string @go(ID,*string)

	// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between 1 and 500. Defaults to 1 if not specified.
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// A quota block as defined below.
	quota?: [...#QuotaObservation] @go(Quota,[]QuotaObservation)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
	springCloudAppId?: null | string @go(SpringCloudAppID,*string)
}

#SpringCloudBuildDeploymentParameters: {
	// A JSON object that contains the addon configurations of the Spring Cloud Build Deployment.
	// +kubebuilder:validation:Optional
	addonJson?: null | string @go(AddonJSON,*string)

	// The ID of the Spring Cloud Build Result.
	// +kubebuilder:validation:Optional
	buildResultId?: null | string @go(BuildResultID,*string)

	// Specifies the environment variables of the Spring Cloud Deployment as a map of key-value pairs.
	// +kubebuilder:validation:Optional
	environmentVariables?: {[string]: null | string} @go(EnvironmentVariables,map[string]*string)

	// Specifies the required instance count of the Spring Cloud Deployment. Possible Values are between 1 and 500. Defaults to 1 if not specified.
	// +kubebuilder:validation:Optional
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// A quota block as defined below.
	// +kubebuilder:validation:Optional
	quota?: [...#QuotaParameters] @go(Quota,[]QuotaParameters)

	// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Build Deployment to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudApp
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudAppId?: null | string @go(SpringCloudAppID,*string)
}

// SpringCloudBuildDeploymentSpec defines the desired state of SpringCloudBuildDeployment
#SpringCloudBuildDeploymentSpec: {
	forProvider: #SpringCloudBuildDeploymentParameters @go(ForProvider)

	// THIS IS AN ALPHA FIELD. Do not use it in production. It is not honored
	// unless the relevant Crossplane feature flag is enabled, and may be
	// changed or removed without notice.
	// InitProvider holds the same fields as ForProvider, with the exception
	// of Identifier and other resource reference fields. The fields that are
	// in InitProvider are merged into ForProvider when the resource is created.
	// The same fields are also added to the terraform ignore_changes hook, to
	// avoid updating them after creation. This is useful for fields that are
	// required on creation, but we do not desire to update them after creation,
	// for example because of an external controller is managing them, like an
	// autoscaler.
	initProvider?: #SpringCloudBuildDeploymentInitParameters @go(InitProvider)
}

// SpringCloudBuildDeploymentStatus defines the observed state of SpringCloudBuildDeployment.
#SpringCloudBuildDeploymentStatus: {
	atProvider?: #SpringCloudBuildDeploymentObservation @go(AtProvider)
}

// SpringCloudBuildDeployment is the Schema for the SpringCloudBuildDeployments API. Manages a Spring Cloud Build Deployment.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudBuildDeployment: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.buildResultId) || has(self.initProvider.buildResultId)",message="buildResultId is a required parameter"
	spec:    #SpringCloudBuildDeploymentSpec   @go(Spec)
	status?: #SpringCloudBuildDeploymentStatus @go(Status)
}

// SpringCloudBuildDeploymentList contains a list of SpringCloudBuildDeployments
#SpringCloudBuildDeploymentList: {
	items: [...#SpringCloudBuildDeployment] @go(Items,[]SpringCloudBuildDeployment)
}
