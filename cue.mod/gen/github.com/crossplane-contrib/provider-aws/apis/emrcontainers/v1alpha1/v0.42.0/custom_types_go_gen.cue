// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/emrcontainers/v1alpha1

package v1alpha1

// CustomJobRunParameters includes the custom fields of JobRun.
#CustomJobRunParameters: {
	// The virtual cluster ID for which the job run request is submitted.
	// +kubebuilder:validation:Required
	// +crossplane:generate:reference:type=VirtualCluster
	virtualClusterId?: null | string @go(VirtualClusterID,*string)
}

// CustomVirtualClusterParameters includes the custom fields of VirtualCluster.
#CustomVirtualClusterParameters: {
}
