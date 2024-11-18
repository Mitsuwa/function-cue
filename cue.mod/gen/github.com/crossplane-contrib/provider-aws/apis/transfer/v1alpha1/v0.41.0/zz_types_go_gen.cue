// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-aws/apis/transfer/v1alpha1

package v1alpha1

// +kubebuilder:skipversion
#DescribedAccess: {
	homeDirectory?: null | string @go(HomeDirectory,*string)
	homeDirectoryMappings?: [...null | #HomeDirectoryMapEntry] @go(HomeDirectoryMappings,[]*HomeDirectoryMapEntry)
	homeDirectoryType?: null | string @go(HomeDirectoryType,*string)
	policy?:            null | string @go(Policy,*string)

	// The full POSIX identity, including user ID (Uid), group ID (Gid), and any
	// secondary groups IDs (SecondaryGids), that controls your users' access to
	// your Amazon EFS file systems. The POSIX permissions that are set on files
	// and directories in your file system determine the level of access your users
	// get when transferring files into and out of your Amazon EFS file systems.
	posixProfile?: null | #PosixProfile @go(PosixProfile,*PosixProfile)
	role?:         null | string        @go(Role,*string)
}

// +kubebuilder:skipversion
#DescribedAgreement: {
	accessRole?:    null | string @go(AccessRole,*string)
	arn?:           null | string @go(ARN,*string)
	baseDirectory?: null | string @go(BaseDirectory,*string)
	serverID?:      null | string @go(ServerID,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#DescribedCertificate: {
	arn?: null | string @go(ARN,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#DescribedConnector: {
	accessRole?:  null | string @go(AccessRole,*string)
	arn?:         null | string @go(ARN,*string)
	loggingRole?: null | string @go(LoggingRole,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	url?: null | string @go(URL,*string)
}

// +kubebuilder:skipversion
#DescribedExecution: {
	executionRole?: null | string @go(ExecutionRole,*string)

	// The full POSIX identity, including user ID (Uid), group ID (Gid), and any
	// secondary groups IDs (SecondaryGids), that controls your users' access to
	// your Amazon EFS file systems. The POSIX permissions that are set on files
	// and directories in your file system determine the level of access your users
	// get when transferring files into and out of your Amazon EFS file systems.
	posixProfile?: null | #PosixProfile @go(PosixProfile,*PosixProfile)
}

// +kubebuilder:skipversion
#DescribedHostKey: {
	arn?:                null | string @go(ARN,*string)
	hostKeyFingerprint?: null | string @go(HostKeyFingerprint,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#DescribedProfile: {
	arn?: null | string @go(ARN,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
}

// +kubebuilder:skipversion
#DescribedSecurityPolicy: {
	securityPolicyName?: null | string @go(SecurityPolicyName,*string)
}

// +kubebuilder:skipversion
#DescribedServer: {
	arn?:         null | string @go(ARN,*string)
	certificate?: null | string @go(Certificate,*string)
	domain?:      null | string @go(Domain,*string)

	// The virtual private cloud (VPC) endpoint settings that are configured for
	// your file transfer protocol-enabled server. With a VPC endpoint, you can
	// restrict access to your server and resources only within your VPC. To control
	// incoming internet traffic, invoke the UpdateServer API and attach an Elastic
	// IP address to your server's endpoint.
	//
	// After May 19, 2021, you won't be able to create a server using EndpointType=VPC_ENDPOINT
	// in your Amazon Web Servicesaccount if your account hasn't already done so
	// before May 19, 2021. If you have already created servers with EndpointType=VPC_ENDPOINT
	// in your Amazon Web Servicesaccount on or before May 19, 2021, you will not
	// be affected. After this date, use EndpointType=VPC.
	//
	// For more information, see https://docs.aws.amazon.com/transfer/latest/userguide/create-server-in-vpc.html#deprecate-vpc-endpoint.
	endpointDetails?:    null | #EndpointDetails @go(EndpointDetails,*EndpointDetails)
	endpointType?:       null | string           @go(EndpointType,*string)
	hostKeyFingerprint?: null | string           @go(HostKeyFingerprint,*string)

	// Returns information related to the type of user authentication that is in
	// use for a file transfer protocol-enabled server's users. A server can have
	// only one method of authentication.
	identityProviderDetails?: null | #IdentityProviderDetails @go(IdentityProviderDetails,*IdentityProviderDetails)

	// Returns information related to the type of user authentication that is in
	// use for a file transfer protocol-enabled server's users. For AWS_DIRECTORY_SERVICE
	// or SERVICE_MANAGED authentication, the Secure Shell (SSH) public keys are
	// stored with a user on the server instance. For API_GATEWAY authentication,
	// your custom authentication method is implemented by using an API call. The
	// server can have only one method of authentication.
	identityProviderType?:          null | string @go(IdentityProviderType,*string)
	loggingRole?:                   null | string @go(LoggingRole,*string)
	postAuthenticationLoginBanner?: null | string @go(PostAuthenticationLoginBanner,*string)
	preAuthenticationLoginBanner?:  null | string @go(PreAuthenticationLoginBanner,*string)

	// The protocol settings that are configured for your server.
	protocolDetails?: null | #ProtocolDetails @go(ProtocolDetails,*ProtocolDetails)
	protocols?: [...null | string] @go(Protocols,[]*string)
	securityPolicyName?: null | string @go(SecurityPolicyName,*string)
	serverID?:           null | string @go(ServerID,*string)

	// Describes the condition of a file transfer protocol-enabled server with respect
	// to its ability to perform file operations. There are six possible states:
	// OFFLINE, ONLINE, STARTING, STOPPING, START_FAILED, and STOP_FAILED.
	//
	// OFFLINE indicates that the server exists, but that it is not available for
	// file operations. ONLINE indicates that the server is available to perform
	// file operations. STARTING indicates that the server's was instantiated, but
	// the server is not yet available to perform file operations. Under normal
	// conditions, it can take a couple of minutes for the server to be completely
	// operational. Both START_FAILED and STOP_FAILED are error conditions.
	state?: null | string @go(State,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	userCount?: null | int64 @go(UserCount,*int64)

	// Container for the WorkflowDetail data type. It is used by actions that trigger
	// a workflow to begin execution.
	workflowDetails?: null | #WorkflowDetails @go(WorkflowDetails,*WorkflowDetails)
}

// +kubebuilder:skipversion
#DescribedUser: {
	arn?:           null | string @go(ARN,*string)
	homeDirectory?: null | string @go(HomeDirectory,*string)
	homeDirectoryMappings?: [...null | #HomeDirectoryMapEntry] @go(HomeDirectoryMappings,[]*HomeDirectoryMapEntry)
	homeDirectoryType?: null | string @go(HomeDirectoryType,*string)
	policy?:            null | string @go(Policy,*string)

	// The full POSIX identity, including user ID (Uid), group ID (Gid), and any
	// secondary groups IDs (SecondaryGids), that controls your users' access to
	// your Amazon EFS file systems. The POSIX permissions that are set on files
	// and directories in your file system determine the level of access your users
	// get when transferring files into and out of your Amazon EFS file systems.
	posixProfile?: null | #PosixProfile @go(PosixProfile,*PosixProfile)
	role?:         null | string        @go(Role,*string)
	sshPublicKeys?: [...null | #SshPublicKey] @go(SshPublicKeys,[]*SshPublicKey)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	userName?: null | string @go(UserName,*string)
}

// +kubebuilder:skipversion
#DescribedWorkflow: {
	arn?: null | string @go(ARN,*string)
	tags?: [...null | #Tag] @go(Tags,[]*Tag)
	workflowID?: null | string @go(WorkflowID,*string)
}

// +kubebuilder:skipversion
#EndpointDetails: {
	addressAllocationIDs?: [...null | string] @go(AddressAllocationIDs,[]*string)
	securityGroupIDs?: [...null | string] @go(SecurityGroupIDs,[]*string)
	subnetIDs?: [...null | string] @go(SubnetIDs,[]*string)
	vpcEndpointID?: null | string @go(VPCEndpointID,*string)
	vpcID?:         null | string @go(VPCID,*string)
}

// +kubebuilder:skipversion
#HomeDirectoryMapEntry: {
	entry?:  null | string @go(Entry,*string)
	target?: null | string @go(Target,*string)
}

// +kubebuilder:skipversion
#IdentityProviderDetails: {
	directoryID?:    null | string @go(DirectoryID,*string)
	function?:       null | string @go(Function,*string)
	invocationRole?: null | string @go(InvocationRole,*string)
	url?:            null | string @go(URL,*string)
}

// +kubebuilder:skipversion
#ListedAccess: {
	homeDirectory?:     null | string @go(HomeDirectory,*string)
	homeDirectoryType?: null | string @go(HomeDirectoryType,*string)
	role?:              null | string @go(Role,*string)
}

// +kubebuilder:skipversion
#ListedAgreement: {
	arn?:      null | string @go(ARN,*string)
	serverID?: null | string @go(ServerID,*string)
}

// +kubebuilder:skipversion
#ListedCertificate: {
	arn?: null | string @go(ARN,*string)
}

// +kubebuilder:skipversion
#ListedConnector: {
	arn?: null | string @go(ARN,*string)
	url?: null | string @go(URL,*string)
}

// +kubebuilder:skipversion
#ListedHostKey: {
	arn?:         null | string @go(ARN,*string)
	fingerprint?: null | string @go(Fingerprint,*string)
}

// +kubebuilder:skipversion
#ListedProfile: {
	arn?: null | string @go(ARN,*string)
}

// +kubebuilder:skipversion
#ListedServer: {
	arn?:          null | string @go(ARN,*string)
	domain?:       null | string @go(Domain,*string)
	endpointType?: null | string @go(EndpointType,*string)

	// Returns information related to the type of user authentication that is in
	// use for a file transfer protocol-enabled server's users. For AWS_DIRECTORY_SERVICE
	// or SERVICE_MANAGED authentication, the Secure Shell (SSH) public keys are
	// stored with a user on the server instance. For API_GATEWAY authentication,
	// your custom authentication method is implemented by using an API call. The
	// server can have only one method of authentication.
	identityProviderType?: null | string @go(IdentityProviderType,*string)
	loggingRole?:          null | string @go(LoggingRole,*string)
	serverID?:             null | string @go(ServerID,*string)

	// Describes the condition of a file transfer protocol-enabled server with respect
	// to its ability to perform file operations. There are six possible states:
	// OFFLINE, ONLINE, STARTING, STOPPING, START_FAILED, and STOP_FAILED.
	//
	// OFFLINE indicates that the server exists, but that it is not available for
	// file operations. ONLINE indicates that the server is available to perform
	// file operations. STARTING indicates that the server's was instantiated, but
	// the server is not yet available to perform file operations. Under normal
	// conditions, it can take a couple of minutes for the server to be completely
	// operational. Both START_FAILED and STOP_FAILED are error conditions.
	state?:     null | string @go(State,*string)
	userCount?: null | int64  @go(UserCount,*int64)
}

// +kubebuilder:skipversion
#ListedUser: {
	arn?:               null | string @go(ARN,*string)
	homeDirectory?:     null | string @go(HomeDirectory,*string)
	homeDirectoryType?: null | string @go(HomeDirectoryType,*string)
	role?:              null | string @go(Role,*string)
	sshPublicKeyCount?: null | int64  @go(SshPublicKeyCount,*int64)
	userName?:          null | string @go(UserName,*string)
}

// +kubebuilder:skipversion
#ListedWorkflow: {
	arn?:        null | string @go(ARN,*string)
	workflowID?: null | string @go(WorkflowID,*string)
}

// +kubebuilder:skipversion
#LoggingConfiguration: {
	loggingRole?: null | string @go(LoggingRole,*string)
}

// +kubebuilder:skipversion
#PosixProfile: {
	gid?: null | int64 @go(Gid,*int64)
	secondaryGids?: [...null | int64] @go(SecondaryGids,[]*int64)
	uid?: null | int64 @go(Uid,*int64)
}

// +kubebuilder:skipversion
#ProtocolDetails: {
	as2Transports?: [...null | string] @go(As2Transports,[]*string)
	passiveIP?:                null | string @go(PassiveIP,*string)
	setStatOption?:            null | string @go(SetStatOption,*string)
	tlsSessionResumptionMode?: null | string @go(TLSSessionResumptionMode,*string)
}

// +kubebuilder:skipversion
#SshPublicKey: {
	sshPublicKeyBody?: null | string @go(SshPublicKeyBody,*string)
	sshPublicKeyID?:   null | string @go(SshPublicKeyID,*string)
}

// +kubebuilder:skipversion
#Tag: {
	key?:   null | string @go(Key,*string)
	value?: null | string @go(Value,*string)
}

// +kubebuilder:skipversion
#UserDetails: {
	serverID?: null | string @go(ServerID,*string)
	userName?: null | string @go(UserName,*string)
}

// +kubebuilder:skipversion
#WorkflowDetail: {
	executionRole?: null | string @go(ExecutionRole,*string)
	workflowID?:    null | string @go(WorkflowID,*string)
}

// +kubebuilder:skipversion
#WorkflowDetails: {
	onPartialUpload?: [...null | #WorkflowDetail] @go(OnPartialUpload,[]*WorkflowDetail)
	onUpload?: [...null | #WorkflowDetail] @go(OnUpload,[]*WorkflowDetail)
}
