// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/amplify/v1beta1

package v1beta1

#BranchObservation: {
	// ARN for the branch.
	arn?: null | string @go(Arn,*string)

	// A list of custom resources that are linked to this branch.
	associatedResources?: [...null | string] @go(AssociatedResources,[]*string)

	// Custom domains for the branch.
	customDomains?: [...null | string] @go(CustomDomains,[]*string)

	// Destination branch if the branch is a pull request branch.
	destinationBranch?: null | string @go(DestinationBranch,*string)
	id?:                null | string @go(ID,*string)

	// Source branch if the branch is a pull request branch.
	sourceBranch?: null | string @go(SourceBranch,*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#BranchParameters: {
	// Unique ID for an Amplify app.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/amplify/v1beta1.App
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	appId?: null | string @go(AppID,*string)

	// ARN for a backend environment that is part of an Amplify app.
	// +kubebuilder:validation:Optional
	backendEnvironmentArn?: null | string @go(BackendEnvironmentArn,*string)

	// Description for the branch.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// Display name for a branch. This is used as the default domain prefix.
	// +kubebuilder:validation:Optional
	displayName?: null | string @go(DisplayName,*string)

	// Enables auto building for the branch.
	// +kubebuilder:validation:Optional
	enableAutoBuild?: null | bool @go(EnableAutoBuild,*bool)

	// Enables basic authorization for the branch.
	// +kubebuilder:validation:Optional
	enableBasicAuth?: null | bool @go(EnableBasicAuth,*bool)

	// Enables notifications for the branch.
	// +kubebuilder:validation:Optional
	enableNotification?: null | bool @go(EnableNotification,*bool)

	// Enables performance mode for the branch.
	// +kubebuilder:validation:Optional
	enablePerformanceMode?: null | bool @go(EnablePerformanceMode,*bool)

	// Enables pull request previews for this branch.
	// +kubebuilder:validation:Optional
	enablePullRequestPreview?: null | bool @go(EnablePullRequestPreview,*bool)

	// Environment variables for the branch.
	// +kubebuilder:validation:Optional
	environmentVariables?: {[string]: null | string} @go(EnvironmentVariables,map[string]*string)

	// Framework for the branch.
	// +kubebuilder:validation:Optional
	framework?: null | string @go(Framework,*string)

	// Amplify environment name for the pull request.
	// +kubebuilder:validation:Optional
	pullRequestEnvironmentName?: null | string @go(PullRequestEnvironmentName,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Describes the current stage for the branch. Valid values: PRODUCTION, BETA, DEVELOPMENT, EXPERIMENTAL, PULL_REQUEST.
	// +kubebuilder:validation:Optional
	stage?: null | string @go(Stage,*string)

	// Content Time To Live (TTL) for the website in seconds.
	// +kubebuilder:validation:Optional
	ttl?: null | string @go(TTL,*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)
}

// BranchSpec defines the desired state of Branch
#BranchSpec: {
	forProvider: #BranchParameters @go(ForProvider)
}

// BranchStatus defines the observed state of Branch.
#BranchStatus: {
	atProvider?: #BranchObservation @go(AtProvider)
}

// Branch is the Schema for the Branchs API. Provides an Amplify Branch resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Branch: {
	spec:    #BranchSpec   @go(Spec)
	status?: #BranchStatus @go(Status)
}

// BranchList contains a list of Branchs
#BranchList: {
	items: [...#Branch] @go(Items,[]Branch)
}
