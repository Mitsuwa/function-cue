// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/emrcontainers/v1alpha1

package v1alpha1

// JobRunParameters defines the desired state of JobRun
#JobRunParameters: {
	// Region is which region the JobRun will be created.
	// +kubebuilder:validation:Required
	region:                  string        @go(Region)
	configurationOverrides?: null | string @go(ConfigurationOverrides,*string)

	// The execution role ARN for the job run.
	executionRoleARN?: null | string @go(ExecutionRoleARN,*string)

	// The job driver for the job run.
	jobDriver?: null | #JobDriver @go(JobDriver,*JobDriver)

	// The job template ID to be used to start the job run.
	jobTemplateID?: null | string @go(JobTemplateID,*string)

	// The values of job template parameters to start a job run.
	jobTemplateParameters?: {[string]: null | string} @go(JobTemplateParameters,map[string]*string)

	// The Amazon EMR release version to use for the job run.
	releaseLabel?: null | string @go(ReleaseLabel,*string)

	// The tags assigned to job runs.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	#CustomJobRunParameters
}

// JobRunSpec defines the desired state of JobRun
#JobRunSpec: {
	forProvider: #JobRunParameters @go(ForProvider)
}

// JobRunObservation defines the observed state of JobRun
#JobRunObservation: {
	// This output lists the ARN of job run.
	arn?: null | string @go(ARN,*string)

	// The reasons why the job run has failed.
	failureReason?: null | string @go(FailureReason,*string)

	// This output displays the started job run ID.
	id?: null | string @go(ID,*string)

	// This output displays the name of the started job run.
	name?: null | string @go(Name,*string)

	// The state of the job run.
	state?: null | string @go(State,*string)

	// Additional details of the job run state.
	stateDetails?: null | string @go(StateDetails,*string)

	// This output displays the virtual cluster ID for which the job run was submitted.
	virtualClusterID?: null | string @go(VirtualClusterID,*string)
}

// JobRunStatus defines the observed state of JobRun.
#JobRunStatus: {
	atProvider?: #JobRunObservation @go(AtProvider)
}

// JobRun is the Schema for the JobRuns API
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:storageversion
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#JobRun: {
	spec:    #JobRunSpec   @go(Spec)
	status?: #JobRunStatus @go(Status)
}

// JobRunList contains a list of JobRuns
#JobRunList: {
	items: [...#JobRun] @go(Items,[]JobRun)
}
