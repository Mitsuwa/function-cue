// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/route53/v1alpha1

package v1alpha1

// HostedZone is a managed resource that represents an AWS Route53 Hosted HostedZone.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="ID",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="RRs",type="integer",JSONPath=".status.atProvider.hostedZone.resourceRecordSetCount"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#HostedZone: {
	spec:    #HostedZoneSpec   @go(Spec)
	status?: #HostedZoneStatus @go(Status)
}

// HostedZoneSpec defines the desired state of an AWS Route53 Hosted HostedZone.
#HostedZoneSpec: {
	forProvider: #HostedZoneParameters @go(ForProvider)
}

// HostedZoneStatus represents the observed state of a HostedZone.
#HostedZoneStatus: {
	atProvider?: #HostedZoneObservation @go(AtProvider)
}

// HostedZoneParameters define the desired state of an AWS Route53 Hosted HostedZone.
#HostedZoneParameters: {
	// The name of the domain. Specify a fully qualified domain name, for example,
	// www.example.com. The trailing dot is optional; Amazon Route 53 assumes that
	// the domain name is fully qualified. This means that Route 53 treats www.example.com
	// (without a trailing dot) and www.example.com. (with a trailing dot) as identical.
	//
	// If you're creating a public hosted zone, this is the name you have registered
	// with your DNS registrar. If your domain name is registered with a registrar
	// other than Route 53, change the name servers for your domain to the set of
	// NameServers that CreateHostedHostedZone returns in DelegationSet.
	// +immutable
	name: string @go(Name)

	// Config includes the Comment and PrivateZone elements. If you
	// omitted the Config and Comment elements from the request, the Config
	// and Comment elements don't appear in the response.
	// +optional
	config?: null | #Config @go(Config,*Config)

	// DelegationSetId let you associate a reusable delegation set with this hosted zone.
	// It has to be the ID that Amazon Route 53 assigned to the reusable delegation set when
	// you created it. For more information about reusable delegation sets, see
	// CreateReusableDelegationSet (https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html).
	// +optional
	delegationSetId?: null | string @go(DelegationSetID,*string)

	// (Private hosted zones only) A complex type that contains information about
	// the Amazon VPC that you're associating with this hosted zone.
	//
	// You can specify only one Amazon VPC when you create a private hosted zone.
	// To associate additional Amazon VPCs with the hosted zone, use AssociateVPCWithHostedZone
	// (https://docs.aws.amazon.com/Route53/latest/APIReference/API_AssociateVPCWithHostedZone.html)
	// after you create a hosted zone.
	// +immutable
	// +optional
	vpc?: null | #VPC @go(VPC,*VPC)

	// Tags for this hosted zone.
	// +optional
	tags?: {[string]: string} @go(Tags,map[string]string)
}

// Config represents the configuration of a Hosted Zone.
#Config: {
	// Comment that you want to include about the hosted zone.
	comment?: null | string @go(Comment,*string)

	// PrivateZone indicates whether this is a private hosted zone.
	// +immutable
	privateZone?: null | bool @go(PrivateZone,*bool)
}

// VPC is used to refer to specific VPC.
#VPC: {
	// (Private hosted zones only) The ID of an Amazon VPC.
	// +immutable
	// +optional
	vpcId?: null | string @go(VPCID,*string)

	// (Private hosted zones only) The region that an Amazon VPC was created in.
	// +immutable
	// +optional
	vpcRegion?: null | string @go(VPCRegion,*string)
}

// HostedZoneObservation keeps the state for the external resource.
#HostedZoneObservation: {
	// DelegationSet describes the name servers for this hosted zone.
	delegationSet?: #DelegationSet @go(DelegationSet)

	// HostedZone contains general information about the hosted zone.
	hostedZone?: #HostedZoneResponse @go(HostedZone)

	// A complex type that contains information about the VPCs that are associated
	// with the specified hosted zone.
	vpcs?: [...#VPCObservation] @go(VPCs,[]VPCObservation)
}

// HostedZoneResponse stores the Hosted Zone received in the response output
#HostedZoneResponse: {
	// CallerReference is an unique string that identifies the request and that
	// allows failed HostedZone create requests to be retried without the risk of
	// executing the operation twice.
	callerReference?: string @go(CallerReference)

	// ID that Amazon Route 53 assigned to the hosted zone when you created
	// it.
	id?: string @go(ID)

	// LinkedService is the service that created the hosted zone.
	linkedService?: #LinkedService @go(LinkedService)

	// The number of resource record sets in the hosted zone.
	resourceRecordSetCount?: int64 @go(ResourceRecordSetCount)
}

// DelegationSet describes the name servers for this hosted Hostedzone.
#DelegationSet: {
	// The value that you specified for CallerReference when you created the reusable
	// delegation set.
	callerReference?: string @go(CallerReference)

	// The ID that Amazon Route 53 assigns to a reusable delegation set.
	id?: string @go(ID)

	// NameServers contains a list of the authoritative name servers for a hosted Hostedzone.
	nameServers?: [...string] @go(NameServers,[]string)
}

// VPCObservation is used to represent the VPC object in the HostedZone response
// object.
#VPCObservation: {
	// VPCID is the ID of the VPC.
	vpcId?: string @go(VPCID)

	// VPCRegion is the region where the VPC resides.
	vpcRegion?: string @go(VPCRegion)
}

// LinkedService is the service that created the hosted zone.
#LinkedService: {
	// Description provided by the other service.
	description?: string @go(Description)

	// ServicePrincipal is the service that created the resource.
	servicePrincipal?: string @go(ServicePrincipal)
}

// HostedZoneList contains a list of HostedZone.
#HostedZoneList: {
	items: [...#HostedZone] @go(Items,[]HostedZone)
}
