// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/medialive/v1beta1

package v1beta1

#InputDestinationsObservation: {
}

#InputDestinationsParameters: {
	// A unique name for the location the RTMP stream is being pushed to.
	// +kubebuilder:validation:Required
	streamName?: null | string @go(StreamName,*string)
}

#InputDevicesObservation: {
}

#InputDevicesParameters: {
	// The unique ID for the device.
	// +kubebuilder:validation:Required
	id?: null | string @go(ID,*string)
}

#InputObservation: {
	// ARN of the Input.
	arn?: null | string @go(Arn,*string)

	// Channels attached to Input.
	attachedChannels?: [...null | string] @go(AttachedChannels,[]*string)

	// The unique ID for the device.
	id?: null | string @go(ID,*string)

	// The input class.
	inputClass?: null | string @go(InputClass,*string)

	// A list of IDs for all Inputs which are partners of this one.
	inputPartnerIds?: [...null | string] @go(InputPartnerIds,[]*string)

	// Source type of the input.
	inputSourceType?: null | string @go(InputSourceType,*string)
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#InputParameters: {
	// Destination settings for PUSH type inputs. See Destinations for more details.
	// +kubebuilder:validation:Optional
	destinations?: [...#InputDestinationsParameters] @go(Destinations,[]InputDestinationsParameters)

	// Settings for the devices. See Input Devices for more details.
	// +kubebuilder:validation:Optional
	inputDevices?: [...#InputDevicesParameters] @go(InputDevices,[]InputDevicesParameters)

	// List of input security groups.
	// +kubebuilder:validation:Optional
	inputSecurityGroups?: [...null | string] @go(InputSecurityGroups,[]*string)

	// A list of the MediaConnect Flows. See Media Connect Flows for more details.
	// +kubebuilder:validation:Optional
	mediaConnectFlows?: [...#MediaConnectFlowsParameters] @go(MediaConnectFlows,[]MediaConnectFlowsParameters)

	// Name of the input.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The ARN of the role this input assumes during and after creation.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	roleArn?: null | string @go(RoleArn,*string)

	// The source URLs for a PULL-type input. See Sources for more details.
	// +kubebuilder:validation:Optional
	sources?: [...#SourcesParameters] @go(Sources,[]SourcesParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// The different types of inputs that AWS Elemental MediaLive supports.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)

	// Settings for a private VPC Input. See VPC for more details.
	// +kubebuilder:validation:Optional
	vpc?: [...#InputVPCParameters] @go(VPC,[]InputVPCParameters)
}

#InputVPCObservation: {
}

#InputVPCParameters: {
	// A list of up to 5 EC2 VPC security group IDs to attach to the Input.
	// +kubebuilder:validation:Optional
	securityGroupIds?: [...null | string] @go(SecurityGroupIds,[]*string)

	// A list of 2 VPC subnet IDs from the same VPC.
	// +kubebuilder:validation:Required
	subnetIds: [...null | string] @go(SubnetIds,[]*string)
}

#MediaConnectFlowsObservation: {
}

#MediaConnectFlowsParameters: {
	// The ARN of the MediaConnect Flow
	// +kubebuilder:validation:Required
	flowArn?: null | string @go(FlowArn,*string)
}

#SourcesObservation: {
}

#SourcesParameters: {
	// The key used to extract the password from EC2 Parameter store.
	// +kubebuilder:validation:Required
	passwordParam?: null | string @go(PasswordParam,*string)

	// The URL where the stream is pulled from.
	// +kubebuilder:validation:Required
	url?: null | string @go(URL,*string)

	// The username for the input source.
	// +kubebuilder:validation:Required
	username?: null | string @go(Username,*string)
}

// InputSpec defines the desired state of Input
#InputSpec: {
	forProvider: #InputParameters @go(ForProvider)
}

// InputStatus defines the observed state of Input.
#InputStatus: {
	atProvider?: #InputObservation @go(AtProvider)
}

// Input is the Schema for the Inputs API.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Input: {
	spec:    #InputSpec   @go(Spec)
	status?: #InputStatus @go(Status)
}

// InputList contains a list of Inputs
#InputList: {
	items: [...#Input] @go(Items,[]Input)
}
