// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/transfer/v1alpha1

package v1alpha1

// CustomUserParameters includes custom additional fields for UserParameters.
#CustomUserParameters: {
	// A system-assigned unique identifier for a server instance. This is the specific
	// server that you added your user to.
	// +optional
	// +crossplane:generate:reference:type=Server
	serverID?: null | string @go(ServerID,*string)

	// The IAM role that controls your users' access to your Amazon S3 bucket. The
	// policies attached to this role will determine the level of access you want
	// to provide your users when transferring files into and out of your Amazon
	// S3 bucket or buckets. The IAM role should also contain a trust relationship
	// that allows the server to access your resources when servicing your users'
	// transfer requests.
	// +optional
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	role?: null | string @go(Role,*string)
}

// CustomServerParameters includes custom additional fields for ServerParameters.
#CustomServerParameters: {
	// The virtual private cloud (VPC) endpoint settings that are configured for
	// your server. When you host your endpoint within your VPC, you can make it
	// accessible only to resources within your VPC, or you can attach Elastic IPs
	// and make it accessible to clients over the internet. Your VPC's default security
	// groups are automatically assigned to your endpoint.
	endpointDetails?: null | #CustomEndpointDetails @go(CustomEndpointDetails,*CustomEndpointDetails)

	// The Amazon Resource Name (ARN) of the AWS Certificate Manager (ACM) certificate.
	// Required when Protocols is set to FTPS.
	//
	// To request a new public certificate, see Request a public certificate (https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-public.html)
	// in the AWS Certificate Manager User Guide.
	//
	// To import an existing certificate into ACM, see Importing certificates into
	// ACM (https://docs.aws.amazon.com/acm/latest/userguide/import-certificate.html)
	// in the AWS Certificate Manager User Guide.
	//
	// To request a private certificate to use FTPS through private IP addresses,
	// see Request a private certificate (https://docs.aws.amazon.com/acm/latest/userguide/gs-acm-request-private.html)
	// in the AWS Certificate Manager User Guide.
	//
	// Certificates with the following cryptographic algorithms and key sizes are
	// supported:
	//
	//    * 2048-bit RSA (RSA_2048)
	//
	//    * 4096-bit RSA (RSA_4096)
	//
	//    * Elliptic Prime Curve 256 bit (EC_prime256v1)
	//
	//    * Elliptic Prime Curve 384 bit (EC_secp384r1)
	//
	//    * Elliptic Prime Curve 521 bit (EC_secp521r1)
	//
	// The certificate must be a valid SSL/TLS X.509 version 3 certificate with
	// FQDN or IP address specified and information about the issuer.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/acm/v1beta1.Certificate
	certificate?: null | string @go(Certificate,*string)

	// Allows the service to write your users' activity to your Amazon CloudWatch
	// logs for monitoring and auditing purposes.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/crossplane-contrib/provider-aws/apis/iam/v1beta1.RoleARN()
	loggingRole?: null | string @go(LoggingRole,*string)
}

// CustomEndpointDetails includes custom additional fields for UserParameters.
#CustomEndpointDetails: {
	// A list of address allocation IDs that are required to attach an Elastic IP
	// address to your server's endpoint.
	//
	// This property can only be set when EndpointType is set to VPC and it is only
	// valid in the UpdateServer API.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Address
	// +crossplane:generate:reference:refFieldName=AddressAllocationIDRefs
	// +crossplane:generate:reference:selectorFieldName=AddressAllocationIDSelector
	addressAllocationIDs?: [...null | string] @go(AddressAllocationIDs,[]*string)

	// A list of security groups IDs that are available to attach to your server's
	// endpoint.
	//
	// This property can only be set when EndpointType is set to VPC.
	//
	// You can edit the SecurityGroupIds property in the UpdateServer (https://docs.aws.amazon.com/transfer/latest/userguide/API_UpdateServer.html)
	// API only if you are changing the EndpointType from PUBLIC or VPC_ENDPOINT
	// to VPC. To change security groups associated with your server's VPC endpoint
	// after creation, use the Amazon EC2 ModifyVpcEndpoint (https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_ModifyVpcEndpoint.html)
	// API.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupIDSelector
	securityGroupIDs?: [...null | string] @go(SecurityGroupIDs,[]*string)

	// A list of subnet IDs that are required to host your server endpoint in your
	// VPC.
	//
	// This property can only be set when EndpointType is set to VPC.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetIDRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetIDSelector
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)

	// The ID of the VPC endpoint.
	//
	// This property can only be set when EndpointType is set to VPC_ENDPOINT.
	//
	// For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1alpha1.VPCEndpoint
	vpcEndpointID?: null | string @go(VPCEndpointID,*string)

	// The VPC ID of the VPC in which a server's endpoint will be hosted.
	//
	// This property can only be set when EndpointType is set to VPC.
	// +crossplane:generate:reference:type=github.com/crossplane-contrib/provider-aws/apis/ec2/v1beta1.VPC
	vpcID?: null | string @go(VPCID,*string)
}
