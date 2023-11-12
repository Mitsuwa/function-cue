// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ds/v1beta1

package v1beta1

#ConditionalForwarderObservation: {
	id?: null | string @go(ID,*string)
}

#ConditionalForwarderParameters: {
	// A list of forwarder IP addresses.
	// +kubebuilder:validation:Required
	dnsIps: [...null | string] @go(DNSIps,[]*string)

	// ID of directory.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ds/v1beta1.Directory
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	directoryId?: null | string @go(DirectoryID,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// The fully qualified domain name of the remote domain for which forwarders will be used.
	// +kubebuilder:validation:Required
	remoteDomainName?: null | string @go(RemoteDomainName,*string)
}

// ConditionalForwarderSpec defines the desired state of ConditionalForwarder
#ConditionalForwarderSpec: {
	forProvider: #ConditionalForwarderParameters @go(ForProvider)
}

// ConditionalForwarderStatus defines the observed state of ConditionalForwarder.
#ConditionalForwarderStatus: {
	atProvider?: #ConditionalForwarderObservation @go(AtProvider)
}

// ConditionalForwarder is the Schema for the ConditionalForwarders API. Provides a conditional forwarder for managed Microsoft AD in AWS Directory Service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#ConditionalForwarder: {
	spec:    #ConditionalForwarderSpec   @go(Spec)
	status?: #ConditionalForwarderStatus @go(Status)
}

// ConditionalForwarderList contains a list of ConditionalForwarders
#ConditionalForwarderList: {
	items: [...#ConditionalForwarder] @go(Items,[]ConditionalForwarder)
}
