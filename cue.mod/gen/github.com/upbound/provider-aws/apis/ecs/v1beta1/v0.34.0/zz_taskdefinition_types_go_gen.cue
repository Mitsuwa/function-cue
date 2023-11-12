// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ecs/v1beta1

package v1beta1

#AuthorizationConfigObservation: {
	// Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
	accessPointId?: null | string @go(AccessPointID,*string)

	// Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.
	iam?: null | string @go(IAM,*string)
}

#AuthorizationConfigParameters: {
	// Access point ID to use. If an access point is specified, the root directory value will be relative to the directory set for the access point. If specified, transit encryption must be enabled in the EFSVolumeConfiguration.
	// +kubebuilder:validation:Optional
	accessPointId?: null | string @go(AccessPointID,*string)

	// Whether or not to use the Amazon ECS task IAM role defined in a task definition when mounting the Amazon EFS file system. If enabled, transit encryption must be enabled in the EFSVolumeConfiguration. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.
	// +kubebuilder:validation:Optional
	iam?: null | string @go(IAM,*string)
}

#DockerVolumeConfigurationObservation: {
	// If this value is true, the Docker volume is created if it does not already exist. Note: This field is only used if the scope is shared.
	autoprovision?: null | bool @go(Autoprovision,*bool)

	// Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
	driver?: null | string @go(Driver,*string)

	// Map of Docker driver specific options.
	driverOpts?: {[string]: null | string} @go(DriverOpts,map[string]*string)

	// Map of custom metadata to add to your Docker volume.
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Scope for the Docker volume, which determines its lifecycle, either task or shared.  Docker volumes that are scoped to a task are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as shared persist after the task stops.
	scope?: null | string @go(Scope,*string)
}

#DockerVolumeConfigurationParameters: {
	// If this value is true, the Docker volume is created if it does not already exist. Note: This field is only used if the scope is shared.
	// +kubebuilder:validation:Optional
	autoprovision?: null | bool @go(Autoprovision,*bool)

	// Docker volume driver to use. The driver value must match the driver name provided by Docker because it is used for task placement.
	// +kubebuilder:validation:Optional
	driver?: null | string @go(Driver,*string)

	// Map of Docker driver specific options.
	// +kubebuilder:validation:Optional
	driverOpts?: {[string]: null | string} @go(DriverOpts,map[string]*string)

	// Map of custom metadata to add to your Docker volume.
	// +kubebuilder:validation:Optional
	labels?: {[string]: null | string} @go(Labels,map[string]*string)

	// Scope for the Docker volume, which determines its lifecycle, either task or shared.  Docker volumes that are scoped to a task are automatically provisioned when the task starts and destroyed when the task stops. Docker volumes that are scoped as shared persist after the task stops.
	// +kubebuilder:validation:Optional
	scope?: null | string @go(Scope,*string)
}

#EFSVolumeConfigurationObservation: {
	// Configuration block for authorization for the Amazon EFS file system. Detailed below.
	authorizationConfig?: [...#AuthorizationConfigObservation] @go(AuthorizationConfig,[]AuthorizationConfigObservation)

	// ID of the EFS File System.
	fileSystemId?: null | string @go(FileSystemID,*string)

	// Directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying / will have the same effect as omitting this parameter. This argument is ignored when using authorization_config.
	rootDirectory?: null | string @go(RootDirectory,*string)

	// Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.
	transitEncryption?: null | string @go(TransitEncryption,*string)

	// Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
	transitEncryptionPort?: null | float64 @go(TransitEncryptionPort,*float64)
}

#EFSVolumeConfigurationParameters: {
	// Configuration block for authorization for the Amazon EFS file system. Detailed below.
	// +kubebuilder:validation:Optional
	authorizationConfig?: [...#AuthorizationConfigParameters] @go(AuthorizationConfig,[]AuthorizationConfigParameters)

	// ID of the EFS File System.
	// +kubebuilder:validation:Required
	fileSystemId?: null | string @go(FileSystemID,*string)

	// Directory within the Amazon EFS file system to mount as the root directory inside the host. If this parameter is omitted, the root of the Amazon EFS volume will be used. Specifying / will have the same effect as omitting this parameter. This argument is ignored when using authorization_config.
	// +kubebuilder:validation:Optional
	rootDirectory?: null | string @go(RootDirectory,*string)

	// Whether or not to enable encryption for Amazon EFS data in transit between the Amazon ECS host and the Amazon EFS server. Transit encryption must be enabled if Amazon EFS IAM authorization is used. Valid values: ENABLED, DISABLED. If this parameter is omitted, the default value of DISABLED is used.
	// +kubebuilder:validation:Optional
	transitEncryption?: null | string @go(TransitEncryption,*string)

	// Port to use for transit encryption. If you do not specify a transit encryption port, it will use the port selection strategy that the Amazon EFS mount helper uses.
	// +kubebuilder:validation:Optional
	transitEncryptionPort?: null | float64 @go(TransitEncryptionPort,*float64)
}

#EphemeralStorageObservation: {
	// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.
	sizeInGib?: null | float64 @go(SizeInGib,*float64)
}

#EphemeralStorageParameters: {
	// The total amount, in GiB, of ephemeral storage to set for the task. The minimum supported value is 21 GiB and the maximum supported value is 200 GiB.
	// +kubebuilder:validation:Required
	sizeInGib?: null | float64 @go(SizeInGib,*float64)
}

#FSXWindowsFileServerVolumeConfigurationAuthorizationConfigObservation: {
	// The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
	credentialsParameter?: null | string @go(CredentialsParameter,*string)

	// A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
	domain?: null | string @go(Domain,*string)
}

#FSXWindowsFileServerVolumeConfigurationAuthorizationConfigParameters: {
	// The authorization credential option to use. The authorization credential options can be provided using either the Amazon Resource Name (ARN) of an AWS Secrets Manager secret or AWS Systems Manager Parameter Store parameter. The ARNs refer to the stored credentials.
	// +kubebuilder:validation:Required
	credentialsParameter?: null | string @go(CredentialsParameter,*string)

	// A fully qualified domain name hosted by an AWS Directory Service Managed Microsoft AD (Active Directory) or self-hosted AD on Amazon EC2.
	// +kubebuilder:validation:Required
	domain?: null | string @go(Domain,*string)
}

#FSXWindowsFileServerVolumeConfigurationObservation: {
	// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
	authorizationConfig?: [...#FSXWindowsFileServerVolumeConfigurationAuthorizationConfigObservation] @go(AuthorizationConfig,[]FSXWindowsFileServerVolumeConfigurationAuthorizationConfigObservation)

	// The Amazon FSx for Windows File Server file system ID to use.
	fileSystemId?: null | string @go(FileSystemID,*string)

	// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
	rootDirectory?: null | string @go(RootDirectory,*string)
}

#FSXWindowsFileServerVolumeConfigurationParameters: {
	// Configuration block for authorization for the Amazon FSx for Windows File Server file system detailed below.
	// +kubebuilder:validation:Required
	authorizationConfig: [...#FSXWindowsFileServerVolumeConfigurationAuthorizationConfigParameters] @go(AuthorizationConfig,[]FSXWindowsFileServerVolumeConfigurationAuthorizationConfigParameters)

	// The Amazon FSx for Windows File Server file system ID to use.
	// +kubebuilder:validation:Required
	fileSystemId?: null | string @go(FileSystemID,*string)

	// The directory within the Amazon FSx for Windows File Server file system to mount as the root directory inside the host.
	// +kubebuilder:validation:Required
	rootDirectory?: null | string @go(RootDirectory,*string)
}

#InferenceAcceleratorObservation: {
	// Elastic Inference accelerator device name. The deviceName must also be referenced in a container definition as a ResourceRequirement.
	deviceName?: null | string @go(DeviceName,*string)

	// Elastic Inference accelerator type to use.
	deviceType?: null | string @go(DeviceType,*string)
}

#InferenceAcceleratorParameters: {
	// Elastic Inference accelerator device name. The deviceName must also be referenced in a container definition as a ResourceRequirement.
	// +kubebuilder:validation:Required
	deviceName?: null | string @go(DeviceName,*string)

	// Elastic Inference accelerator type to use.
	// +kubebuilder:validation:Required
	deviceType?: null | string @go(DeviceType,*string)
}

#ProxyConfigurationObservation: {
	// Name of the container that will serve as the App Mesh proxy.
	containerName?: null | string @go(ContainerName,*string)

	// Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
	properties?: {[string]: null | string} @go(Properties,map[string]*string)

	// Proxy type. The default value is APPMESH. The only supported value is APPMESH.
	type?: null | string @go(Type,*string)
}

#ProxyConfigurationParameters: {
	// Name of the container that will serve as the App Mesh proxy.
	// +kubebuilder:validation:Required
	containerName?: null | string @go(ContainerName,*string)

	// Set of network configuration parameters to provide the Container Network Interface (CNI) plugin, specified a key-value mapping.
	// +kubebuilder:validation:Optional
	properties?: {[string]: null | string} @go(Properties,map[string]*string)

	// Proxy type. The default value is APPMESH. The only supported value is APPMESH.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#RuntimePlatformObservation: {
	// Must be set to either X86_64 or ARM64; see cpu architecture
	cpuArchitecture?: null | string @go(CPUArchitecture,*string)

	// If the requires_compatibilities is FARGATE this field is required; must be set to a valid option from the operating system family in the runtime platform setting
	operatingSystemFamily?: null | string @go(OperatingSystemFamily,*string)
}

#RuntimePlatformParameters: {
	// Must be set to either X86_64 or ARM64; see cpu architecture
	// +kubebuilder:validation:Optional
	cpuArchitecture?: null | string @go(CPUArchitecture,*string)

	// If the requires_compatibilities is FARGATE this field is required; must be set to a valid option from the operating system family in the runtime platform setting
	// +kubebuilder:validation:Optional
	operatingSystemFamily?: null | string @go(OperatingSystemFamily,*string)
}

#TaskDefinitionObservation: {
	// Full ARN of the Task Definition (including both family and revision).
	arn?: null | string @go(Arn,*string)

	// Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required.
	cpu?: null | string @go(CPU,*string)

	// A list of valid container definitions provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the Task Definition Parameters section from the official Developer Guide.
	containerDefinitions?: null | string @go(ContainerDefinitions,*string)

	// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
	ephemeralStorage?: [...#EphemeralStorageObservation] @go(EphemeralStorage,[]EphemeralStorageObservation)

	// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
	executionRoleArn?: null | string @go(ExecutionRoleArn,*string)

	// A unique name for your task definition.
	family?: null | string @go(Family,*string)
	id?:     null | string @go(ID,*string)

	// Configuration block(s) with Inference Accelerators settings. Detailed below.
	inferenceAccelerator?: [...#InferenceAcceleratorObservation] @go(InferenceAccelerator,[]InferenceAcceleratorObservation)

	// IPC resource namespace to be used for the containers in the task The valid values are host, task, and none.
	ipcMode?: null | string @go(IpcMode,*string)

	// Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required.
	memory?: null | string @go(Memory,*string)

	// Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host.
	networkMode?: null | string @go(NetworkMode,*string)

	// Process namespace to use for the containers in the task. The valid values are host and task.
	pidMode?: null | string @go(PidMode,*string)

	// Configuration block for rules that are taken into consideration during task placement. Maximum number of placement_constraints is 10. Detailed below.
	placementConstraints?: [...#TaskDefinitionPlacementConstraintsObservation] @go(PlacementConstraints,[]TaskDefinitionPlacementConstraintsObservation)

	// Configuration block for the App Mesh proxy. Detailed below.
	proxyConfiguration?: [...#ProxyConfigurationObservation] @go(ProxyConfiguration,[]ProxyConfigurationObservation)

	// Set of launch types required by the task. The valid values are EC2 and FARGATE.
	requiresCompatibilities?: [...null | string] @go(RequiresCompatibilities,[]*string)

	// Revision of the task in a particular family.
	revision?: null | float64 @go(Revision,*float64)

	// Configuration block for runtime_platform that containers in your task may use.
	runtimePlatform?: [...#RuntimePlatformObservation] @go(RuntimePlatform,[]RuntimePlatformObservation)

	// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is false.
	skipDestroy?: null | bool @go(SkipDestroy,*bool)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
	taskRoleArn?: null | string @go(TaskRoleArn,*string)

	// Configuration block for volumes that containers in your task may use. Detailed below.
	volume?: [...#VolumeObservation] @go(Volume,[]VolumeObservation)
}

#TaskDefinitionParameters: {
	// Number of cpu units used by the task. If the requires_compatibilities is FARGATE this field is required.
	// +kubebuilder:validation:Optional
	cpu?: null | string @go(CPU,*string)

	// A list of valid container definitions provided as a single valid JSON document. Please note that you should only provide values that are part of the container definition document. For a detailed description of what parameters are available, see the Task Definition Parameters section from the official Developer Guide.
	// +kubebuilder:validation:Optional
	containerDefinitions?: null | string @go(ContainerDefinitions,*string)

	// The amount of ephemeral storage to allocate for the task. This parameter is used to expand the total amount of ephemeral storage available, beyond the default amount, for tasks hosted on AWS Fargate. See Ephemeral Storage.
	// +kubebuilder:validation:Optional
	ephemeralStorage?: [...#EphemeralStorageParameters] @go(EphemeralStorage,[]EphemeralStorageParameters)

	// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	executionRoleArn?: null | string @go(ExecutionRoleArn,*string)

	// A unique name for your task definition.
	// +kubebuilder:validation:Optional
	family?: null | string @go(Family,*string)

	// Configuration block(s) with Inference Accelerators settings. Detailed below.
	// +kubebuilder:validation:Optional
	inferenceAccelerator?: [...#InferenceAcceleratorParameters] @go(InferenceAccelerator,[]InferenceAcceleratorParameters)

	// IPC resource namespace to be used for the containers in the task The valid values are host, task, and none.
	// +kubebuilder:validation:Optional
	ipcMode?: null | string @go(IpcMode,*string)

	// Amount (in MiB) of memory used by the task. If the requires_compatibilities is FARGATE this field is required.
	// +kubebuilder:validation:Optional
	memory?: null | string @go(Memory,*string)

	// Docker networking mode to use for the containers in the task. Valid values are none, bridge, awsvpc, and host.
	// +kubebuilder:validation:Optional
	networkMode?: null | string @go(NetworkMode,*string)

	// Process namespace to use for the containers in the task. The valid values are host and task.
	// +kubebuilder:validation:Optional
	pidMode?: null | string @go(PidMode,*string)

	// Configuration block for rules that are taken into consideration during task placement. Maximum number of placement_constraints is 10. Detailed below.
	// +kubebuilder:validation:Optional
	placementConstraints?: [...#TaskDefinitionPlacementConstraintsParameters] @go(PlacementConstraints,[]TaskDefinitionPlacementConstraintsParameters)

	// Configuration block for the App Mesh proxy. Detailed below.
	// +kubebuilder:validation:Optional
	proxyConfiguration?: [...#ProxyConfigurationParameters] @go(ProxyConfiguration,[]ProxyConfigurationParameters)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Set of launch types required by the task. The valid values are EC2 and FARGATE.
	// +kubebuilder:validation:Optional
	requiresCompatibilities?: [...null | string] @go(RequiresCompatibilities,[]*string)

	// Configuration block for runtime_platform that containers in your task may use.
	// +kubebuilder:validation:Optional
	runtimePlatform?: [...#RuntimePlatformParameters] @go(RuntimePlatform,[]RuntimePlatformParameters)

	// Whether to retain the old revision when the resource is destroyed or replacement is necessary. Default is false.
	// +kubebuilder:validation:Optional
	skipDestroy?: null | bool @go(SkipDestroy,*bool)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
	// +kubebuilder:validation:Optional
	taskRoleArn?: null | string @go(TaskRoleArn,*string)

	// Configuration block for volumes that containers in your task may use. Detailed below.
	// +kubebuilder:validation:Optional
	volume?: [...#VolumeParameters] @go(Volume,[]VolumeParameters)
}

#TaskDefinitionPlacementConstraintsObservation: {
	// Cluster Query Language expression to apply to the constraint. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.
	expression?: null | string @go(Expression,*string)

	// Type of constraint. Use memberOf to restrict selection to a group of valid candidates. Note that distinctInstance is not supported in task definitions.
	type?: null | string @go(Type,*string)
}

#TaskDefinitionPlacementConstraintsParameters: {
	// Cluster Query Language expression to apply to the constraint. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.
	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// Type of constraint. Use memberOf to restrict selection to a group of valid candidates. Note that distinctInstance is not supported in task definitions.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#VolumeObservation: {
	// Configuration block to configure a docker volume. Detailed below.
	dockerVolumeConfiguration?: [...#DockerVolumeConfigurationObservation] @go(DockerVolumeConfiguration,[]DockerVolumeConfigurationObservation)

	// Configuration block for an EFS volume. Detailed below.
	efsVolumeConfiguration?: [...#EFSVolumeConfigurationObservation] @go(EFSVolumeConfiguration,[]EFSVolumeConfigurationObservation)

	// Configuration block for an FSX Windows File Server volume. Detailed below.
	fsxWindowsFileServerVolumeConfiguration?: [...#FSXWindowsFileServerVolumeConfigurationObservation] @go(FSXWindowsFileServerVolumeConfiguration,[]FSXWindowsFileServerVolumeConfigurationObservation)

	// Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
	hostPath?: null | string @go(HostPath,*string)

	// Name of the volume. This name is referenced in the sourceVolume
	// parameter of container definition in the mountPoints section.
	name?: null | string @go(Name,*string)
}

#VolumeParameters: {
	// Configuration block to configure a docker volume. Detailed below.
	// +kubebuilder:validation:Optional
	dockerVolumeConfiguration?: [...#DockerVolumeConfigurationParameters] @go(DockerVolumeConfiguration,[]DockerVolumeConfigurationParameters)

	// Configuration block for an EFS volume. Detailed below.
	// +kubebuilder:validation:Optional
	efsVolumeConfiguration?: [...#EFSVolumeConfigurationParameters] @go(EFSVolumeConfiguration,[]EFSVolumeConfigurationParameters)

	// Configuration block for an FSX Windows File Server volume. Detailed below.
	// +kubebuilder:validation:Optional
	fsxWindowsFileServerVolumeConfiguration?: [...#FSXWindowsFileServerVolumeConfigurationParameters] @go(FSXWindowsFileServerVolumeConfiguration,[]FSXWindowsFileServerVolumeConfigurationParameters)

	// Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
	// +kubebuilder:validation:Optional
	hostPath?: null | string @go(HostPath,*string)

	// Name of the volume. This name is referenced in the sourceVolume
	// parameter of container definition in the mountPoints section.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)
}

// TaskDefinitionSpec defines the desired state of TaskDefinition
#TaskDefinitionSpec: {
	forProvider: #TaskDefinitionParameters @go(ForProvider)
}

// TaskDefinitionStatus defines the observed state of TaskDefinition.
#TaskDefinitionStatus: {
	atProvider?: #TaskDefinitionObservation @go(AtProvider)
}

// TaskDefinition is the Schema for the TaskDefinitions API. Manages a revision of an ECS task definition.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#TaskDefinition: {
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.containerDefinitions)",message="containerDefinitions is a required parameter"
	// +kubebuilder:validation:XValidation:rule="self.managementPolicy == 'ObserveOnly' || has(self.forProvider.family)",message="family is a required parameter"
	spec:    #TaskDefinitionSpec   @go(Spec)
	status?: #TaskDefinitionStatus @go(Status)
}

// TaskDefinitionList contains a list of TaskDefinitions
#TaskDefinitionList: {
	items: [...#TaskDefinition] @go(Items,[]TaskDefinition)
}
