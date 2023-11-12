// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/autoscaling/v1beta1

package v1beta1

#AttachmentObservation: {
	id?: null | string @go(ID,*string)
}

#AttachmentParameters: {
	// ARN of an ALB Target Group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elbv2/v1beta1.LBTargetGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	albTargetGroupArn?: null | string @go(ALBTargetGroupArn,*string)

	// Name of ASG to associate with the ELB.
	// +crossplane:generate:reference:type=AutoscalingGroup
	// +kubebuilder:validation:Optional
	autoscalingGroupName?: null | string @go(AutoscalingGroupName,*string)

	// Name of the ELB.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elb/v1beta1.ELB
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	elb?: null | string @go(ELB,*string)

	// ARN of a load balancer target group.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/elbv2/v1beta1.LBTargetGroup
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractParamPath("arn",true)
	// +kubebuilder:validation:Optional
	lbTargetGroupArn?: null | string @go(LBTargetGroupArn,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)
}

// AttachmentSpec defines the desired state of Attachment
#AttachmentSpec: {
	forProvider: #AttachmentParameters @go(ForProvider)
}

// AttachmentStatus defines the observed state of Attachment.
#AttachmentStatus: {
	atProvider?: #AttachmentObservation @go(AtProvider)
}

// Attachment is the Schema for the Attachments API. Provides an AutoScaling Group Attachment resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Attachment: {
	spec:    #AttachmentSpec   @go(Spec)
	status?: #AttachmentStatus @go(Status)
}

// AttachmentList contains a list of Attachments
#AttachmentList: {
	items: [...#Attachment] @go(Items,[]Attachment)
}
