// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/chime/v1beta1

package v1beta1

#VoiceConnectorObservation: {
	id?: null | string @go(ID,*string)

	// The outbound host name for the Amazon Chime Voice Connector.
	outboundHostName?: null | string @go(OutboundHostName,*string)
}

#VoiceConnectorParameters: {
	// The AWS Region in which the Amazon Chime Voice Connector is created. Default value: us-east-1
	// +kubebuilder:validation:Optional
	awsRegion?: null | string @go(AwsRegion,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// When enabled, requires encryption for the Amazon Chime Voice Connector.
	// +kubebuilder:validation:Required
	requireEncryption?: null | bool @go(RequireEncryption,*bool)
}

// VoiceConnectorSpec defines the desired state of VoiceConnector
#VoiceConnectorSpec: {
	forProvider: #VoiceConnectorParameters @go(ForProvider)
}

// VoiceConnectorStatus defines the observed state of VoiceConnector.
#VoiceConnectorStatus: {
	atProvider?: #VoiceConnectorObservation @go(AtProvider)
}

// VoiceConnector is the Schema for the VoiceConnectors API. Enables you to connect your phone system to the telephone network at a substantial cost savings by using SIP trunking.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#VoiceConnector: {
	spec:    #VoiceConnectorSpec   @go(Spec)
	status?: #VoiceConnectorStatus @go(Status)
}

// VoiceConnectorList contains a list of VoiceConnectors
#VoiceConnectorList: {
	items: [...#VoiceConnector] @go(Items,[]VoiceConnector)
}
