// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-azure/apis/media/v1beta1

package v1beta1

#InputAssetInitParameters: {
	// A label that is assigned to a JobInputClip, that is used to satisfy a reference used in the Transform. For example, a Transform can be authored so as to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'. Changing this forces a new resource to be created.
	label?: null | string @go(Label,*string)
}

#InputAssetObservation: {
	// A label that is assigned to a JobInputClip, that is used to satisfy a reference used in the Transform. For example, a Transform can be authored so as to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'. Changing this forces a new resource to be created.
	label?: null | string @go(Label,*string)

	// The name of the input Asset. Changing this forces a new Media Job to be created.
	name?: null | string @go(Name,*string)
}

#InputAssetParameters: {
	// A label that is assigned to a JobInputClip, that is used to satisfy a reference used in the Transform. For example, a Transform can be authored so as to take an image file with the label 'xyz' and apply it as an overlay onto the input video before it is encoded. When submitting a Job, exactly one of the JobInputs should be the image file, and it should have the label 'xyz'. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	label?: null | string @go(Label,*string)

	// The name of the input Asset. Changing this forces a new Media Job to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/media/v1beta1.Asset
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

#JobInitParameters: {
	// Optional customer supplied description of the Job.
	description?: null | string @go(Description,*string)

	// A input_asset block as defined below. Changing this forces a new Media Job to be created.
	inputAsset?: [...#InputAssetInitParameters] @go(InputAsset,[]InputAssetInitParameters)

	// One or more output_asset blocks as defined below. Changing this forces a new Media Job to be created.
	outputAsset?: [...#OutputAssetInitParameters] @go(OutputAsset,[]OutputAssetInitParameters)

	// Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. If not set, the default is normal. Changing this forces a new Media Job to be created. Possible values are High, Normal and Low.
	priority?: null | string @go(Priority,*string)
}

#JobObservation: {
	// Optional customer supplied description of the Job.
	description?: null | string @go(Description,*string)

	// The ID of the Media Job.
	id?: null | string @go(ID,*string)

	// A input_asset block as defined below. Changing this forces a new Media Job to be created.
	inputAsset?: [...#InputAssetObservation] @go(InputAsset,[]InputAssetObservation)

	// The Media Services account name. Changing this forces a new Transform to be created.
	mediaServicesAccountName?: null | string @go(MediaServicesAccountName,*string)

	// One or more output_asset blocks as defined below. Changing this forces a new Media Job to be created.
	outputAsset?: [...#OutputAssetObservation] @go(OutputAsset,[]OutputAssetObservation)

	// Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. If not set, the default is normal. Changing this forces a new Media Job to be created. Possible values are High, Normal and Low.
	priority?: null | string @go(Priority,*string)

	// The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created.
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Transform name. Changing this forces a new Media Job to be created.
	transformName?: null | string @go(TransformName,*string)
}

#JobParameters: {
	// Optional customer supplied description of the Job.
	// +kubebuilder:validation:Optional
	description?: null | string @go(Description,*string)

	// A input_asset block as defined below. Changing this forces a new Media Job to be created.
	// +kubebuilder:validation:Optional
	inputAsset?: [...#InputAssetParameters] @go(InputAsset,[]InputAssetParameters)

	// The Media Services account name. Changing this forces a new Transform to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/media/v1beta1.ServicesAccount
	// +kubebuilder:validation:Optional
	mediaServicesAccountName?: null | string @go(MediaServicesAccountName,*string)

	// One or more output_asset blocks as defined below. Changing this forces a new Media Job to be created.
	// +kubebuilder:validation:Optional
	outputAsset?: [...#OutputAssetParameters] @go(OutputAsset,[]OutputAssetParameters)

	// Priority with which the job should be processed. Higher priority jobs are processed before lower priority jobs. If not set, the default is normal. Changing this forces a new Media Job to be created. Possible values are High, Normal and Low.
	// +kubebuilder:validation:Optional
	priority?: null | string @go(Priority,*string)

	// The name of the Resource Group where the Media Job should exist. Changing this forces a new Media Job to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/azure/v1beta1.ResourceGroup
	// +kubebuilder:validation:Optional
	resourceGroupName?: null | string @go(ResourceGroupName,*string)

	// The Transform name. Changing this forces a new Media Job to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/media/v1beta1.Transform
	// +kubebuilder:validation:Optional
	transformName?: null | string @go(TransformName,*string)
}

#OutputAssetInitParameters: {
	// A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. Changing this forces a new resource to be created.
	label?: null | string @go(Label,*string)
}

#OutputAssetObservation: {
	// A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. Changing this forces a new resource to be created.
	label?: null | string @go(Label,*string)

	// The name of the output Asset. Changing this forces a new Media Job to be created.
	name?: null | string @go(Name,*string)
}

#OutputAssetParameters: {
	// A label that is assigned to a JobOutput in order to help uniquely identify it. This is useful when your Transform has more than one TransformOutput, whereby your Job has more than one JobOutput. In such cases, when you submit the Job, you will add two or more JobOutputs, in the same order as TransformOutputs in the Transform. Subsequently, when you retrieve the Job, either through events or on a GET request, you can use the label to easily identify the JobOutput. If a label is not provided, a default value of '{presetName}_{outputIndex}' will be used, where the preset name is the name of the preset in the corresponding TransformOutput and the output index is the relative index of the this JobOutput within the Job. Note that this index is the same as the relative index of the corresponding TransformOutput within its Transform. Changing this forces a new resource to be created.
	// +kubebuilder:validation:Optional
	label?: null | string @go(Label,*string)

	// The name of the output Asset. Changing this forces a new Media Job to be created.
	// +crossplane:generate:reference:type=github.com/upbound/provider-azure/apis/media/v1beta1.Asset
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)
}

// JobSpec defines the desired state of Job
#JobSpec: {
	forProvider: #JobParameters @go(ForProvider)

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
	initProvider?: #JobInitParameters @go(InitProvider)
}

// JobStatus defines the observed state of Job.
#JobStatus: {
	atProvider?: #JobObservation @go(AtProvider)
}

// Job is the Schema for the Jobs API. Manages a Media Job.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,azure}
#Job: {
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.inputAsset) || (has(self.initProvider) && has(self.initProvider.inputAsset))",message="spec.forProvider.inputAsset is a required parameter"
	// +kubebuilder:validation:XValidation:rule="!('*' in self.managementPolicies || 'Create' in self.managementPolicies || 'Update' in self.managementPolicies) || has(self.forProvider.outputAsset) || (has(self.initProvider) && has(self.initProvider.outputAsset))",message="spec.forProvider.outputAsset is a required parameter"
	spec:    #JobSpec   @go(Spec)
	status?: #JobStatus @go(Status)
}

// JobList contains a list of Jobs
#JobList: {
	items: [...#Job] @go(Items,[]Job)
}
