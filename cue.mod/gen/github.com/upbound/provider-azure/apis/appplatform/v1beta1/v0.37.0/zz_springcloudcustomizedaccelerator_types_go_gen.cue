// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/appplatform/v1beta1

package v1beta1

#BasicAuthInitParameters: {
	// Specifies the username of git repository basic auth.
	username?: null | string @go(Username,*string)
}

#BasicAuthObservation: {
	// Specifies the username of git repository basic auth.
	username?: null | string @go(Username,*string)
}

#BasicAuthParameters: {
	// Specifies the username of git repository basic auth.
	// +kubebuilder:validation:Optional
	username?: null | string @go(Username,*string)
}

#GitRepositoryInitParameters: {
	// A basic_auth block as defined below. Conflicts with git_repository.0.ssh_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	basicAuth?: [...#BasicAuthInitParameters] @go(BasicAuth,[]BasicAuthInitParameters)

	// Specifies the Git repository branch to be used.
	branch?: null | string @go(Branch,*string)

	// Specifies the Git repository commit to be used.
	commit?: null | string @go(Commit,*string)

	// Specifies the Git repository tag to be used.
	gitTag?: null | string @go(GitTag,*string)

	// Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)

	// A ssh_auth block as defined below. Conflicts with git_repository.0.basic_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	sshAuth?: [...#SSHAuthInitParameters] @go(SSHAuth,[]SSHAuthInitParameters)

	// Specifies Git repository URL for the accelerator.
	url?: null | string @go(URL,*string)
}

#GitRepositoryObservation: {
	// A basic_auth block as defined below. Conflicts with git_repository.0.ssh_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	basicAuth?: [...#BasicAuthObservation] @go(BasicAuth,[]BasicAuthObservation)

	// Specifies the Git repository branch to be used.
	branch?: null | string @go(Branch,*string)

	// Specifies the Git repository commit to be used.
	commit?: null | string @go(Commit,*string)

	// Specifies the Git repository tag to be used.
	gitTag?: null | string @go(GitTag,*string)

	// Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)

	// A ssh_auth block as defined below. Conflicts with git_repository.0.basic_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	sshAuth?: [...#SSHAuthObservation] @go(SSHAuth,[]SSHAuthObservation)

	// Specifies Git repository URL for the accelerator.
	url?: null | string @go(URL,*string)
}

#GitRepositoryParameters: {
	// A basic_auth block as defined below. Conflicts with git_repository.0.ssh_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	// +kubebuilder:validation:Optional
	basicAuth?: [...#BasicAuthParameters] @go(BasicAuth,[]BasicAuthParameters)

	// Specifies the Git repository branch to be used.
	// +kubebuilder:validation:Optional
	branch?: null | string @go(Branch,*string)

	// Specifies the Git repository commit to be used.
	// +kubebuilder:validation:Optional
	commit?: null | string @go(Commit,*string)

	// Specifies the Git repository tag to be used.
	// +kubebuilder:validation:Optional
	gitTag?: null | string @go(GitTag,*string)

	// Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
	// +kubebuilder:validation:Optional
	intervalInSeconds?: null | float64 @go(IntervalInSeconds,*float64)

	// A ssh_auth block as defined below. Conflicts with git_repository.0.basic_auth. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	// +kubebuilder:validation:Optional
	sshAuth?: [...#SSHAuthParameters] @go(SSHAuth,[]SSHAuthParameters)

	// Specifies Git repository URL for the accelerator.
	// +kubebuilder:validation:Optional
	url?: null | string @go(URL,*string)
}

#SSHAuthInitParameters: {
	// Specifies the SSH Key algorithm of git repository basic auth.
	hostKeyAlgorithm?: null | string @go(HostKeyAlgorithm,*string)
}

#SSHAuthObservation: {
	// Specifies the SSH Key algorithm of git repository basic auth.
	hostKeyAlgorithm?: null | string @go(HostKeyAlgorithm,*string)
}

#SSHAuthParameters: {
	// Specifies the SSH Key algorithm of git repository basic auth.
	// +kubebuilder:validation:Optional
	hostKeyAlgorithm?: null | string @go(HostKeyAlgorithm,*string)
}

#SpringCloudCustomizedAcceleratorInitParameters: {
	// Specifies a list of accelerator tags.
	acceleratorTags?: [...null | string] @go(AcceleratorTags,[]*string)

	// Specifies the description of the Spring Cloud Customized Accelerator.
	description?: null | string @go(Description,*string)

	// Specifies the display name of the Spring Cloud Customized Accelerator..
	displayName?: null | string @go(DisplayName,*string)

	// A git_repository block as defined below.
	gitRepository?: [...#GitRepositoryInitParameters] @go(GitRepository,[]GitRepositoryInitParameters)

	// Specifies the icon URL of the Spring Cloud Customized Accelerator..
	iconUrl?: null | string @go(IconURL,*string)
}

#SpringCloudCustomizedAcceleratorObservation: {
	// Specifies a list of accelerator tags.
	acceleratorTags?: [...null | string] @go(AcceleratorTags,[]*string)

	// Specifies the description of the Spring Cloud Customized Accelerator.
	description?: null | string @go(Description,*string)

	// Specifies the display name of the Spring Cloud Customized Accelerator..
	displayName?: null | string @go(DisplayName,*string)

	// A git_repository block as defined below.
	gitRepository?: [...#GitRepositoryObservation] @go(GitRepository,[]GitRepositoryObservation)

	// The ID of the Spring Cloud Customized Accelerator.
	id?: null | string @go(ID,*string)

	// Specifies the icon URL of the Spring Cloud Customized Accelerator..
	iconUrl?: null | string @go(IconURL,*string)

	// The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	springCloudAcceleratorId?: null | string @go(SpringCloudAcceleratorID,*string)
}

#SpringCloudCustomizedAcceleratorParameters: {
	// Specifies a list of accelerator tags.
	// +kubebuilder:validation:Optional
	acceleratorTags?: [...null | string] @go(AcceleratorTags,[]*string)

	// Specifies the description of the Spring Cloud Customized Accelerator.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Specifies the display name of the Spring Cloud Customized Accelerator..
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// A git_repository block as defined below.
	// +kubebuilder:validation:Optional
	gitRepository?: [...#GitRepositoryParameters] @go(GitRepository,[]GitRepositoryParameters)

	// Specifies the icon URL of the Spring Cloud Customized Accelerator..
	// +kubebuilder:validation:Optional
	iconUrl?: null | string @go(IconURL,*string)

	// The ID of the Spring Cloud Accelerator. Changing this forces a new Spring Cloud Customized Accelerator to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/appplatform/v1beta1.SpringCloudAccelerator
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	springCloudAcceleratorId?: null | string @go(SpringCloudAcceleratorID,*string)
}

// SpringCloudCustomizedAcceleratorSpec defines the desired state of SpringCloudCustomizedAccelerator
#SpringCloudCustomizedAcceleratorSpec: {
	forProvider: #SpringCloudCustomizedAcceleratorParameters @go(ForProvider)

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
	initProvider?: #SpringCloudCustomizedAcceleratorInitParameters @go(InitProvider)
}

// SpringCloudCustomizedAcceleratorStatus defines the observed state of SpringCloudCustomizedAccelerator.
#SpringCloudCustomizedAcceleratorStatus: {
	atProvider?: #SpringCloudCustomizedAcceleratorObservation @go(AtProvider)
}

// SpringCloudCustomizedAccelerator is the Schema for the SpringCloudCustomizedAccelerators API. Manages a Spring Cloud Customized Accelerator.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#SpringCloudCustomizedAccelerator: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.gitRepository) || (has(self.initProvider) && has(self.initProvider.gitRepository))",message="spec.forProvider.gitRepository is a required parameter"
	spec:    #SpringCloudCustomizedAcceleratorSpec   @go(Spec)
	status?: #SpringCloudCustomizedAcceleratorStatus @go(Status)
}

// SpringCloudCustomizedAcceleratorList contains a list of SpringCloudCustomizedAccelerators
#SpringCloudCustomizedAcceleratorList: {
	items: [...#SpringCloudCustomizedAccelerator] @go(Items,[]SpringCloudCustomizedAccelerator)
}
