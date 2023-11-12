// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/opsworks/v1beta1

package v1beta1

#MySQLLayerCloudwatchConfigurationLogStreamsObservation: {
	batchCount?:           null | float64 @go(BatchCount,*float64)
	batchSize?:            null | float64 @go(BatchSize,*float64)
	bufferDuration?:       null | float64 @go(BufferDuration,*float64)
	datetimeFormat?:       null | string  @go(DatetimeFormat,*string)
	encoding?:             null | string  @go(Encoding,*string)
	file?:                 null | string  @go(File,*string)
	fileFingerprintLines?: null | string  @go(FileFingerprintLines,*string)
	initialPosition?:      null | string  @go(InitialPosition,*string)

	// A human-readable name for the layer.
	logGroupName?:          null | string @go(LogGroupName,*string)
	multilineStartPattern?: null | string @go(MultilineStartPattern,*string)
	timeZone?:              null | string @go(TimeZone,*string)
}

#MySQLLayerCloudwatchConfigurationLogStreamsParameters: {
	// +kubebuilder:validation:Optional
	batchCount?: null | float64 @go(BatchCount,*float64)

	// +kubebuilder:validation:Optional
	batchSize?: null | float64 @go(BatchSize,*float64)

	// +kubebuilder:validation:Optional
	bufferDuration?: null | float64 @go(BufferDuration,*float64)

	// +kubebuilder:validation:Optional
	datetimeFormat?: null | string @go(DatetimeFormat,*string)

	// +kubebuilder:validation:Optional
	encoding?: null | string @go(Encoding,*string)

	// +kubebuilder:validation:Required
	file?: null | string @go(File,*string)

	// +kubebuilder:validation:Optional
	fileFingerprintLines?: null | string @go(FileFingerprintLines,*string)

	// +kubebuilder:validation:Optional
	initialPosition?: null | string @go(InitialPosition,*string)

	// A human-readable name for the layer.
	// +kubebuilder:validation:Required
	logGroupName?: null | string @go(LogGroupName,*string)

	// +kubebuilder:validation:Optional
	multilineStartPattern?: null | string @go(MultilineStartPattern,*string)

	// +kubebuilder:validation:Optional
	timeZone?: null | string @go(TimeZone,*string)
}

#MySQLLayerCloudwatchConfigurationObservation: {
	enabled?: null | bool @go(Enabled,*bool)
	logStreams?: [...#MySQLLayerCloudwatchConfigurationLogStreamsObservation] @go(LogStreams,[]MySQLLayerCloudwatchConfigurationLogStreamsObservation)
}

#MySQLLayerCloudwatchConfigurationParameters: {
	// +kubebuilder:validation:Optional
	enabled?: null | bool @go(Enabled,*bool)

	// +kubebuilder:validation:Optional
	logStreams?: [...#MySQLLayerCloudwatchConfigurationLogStreamsParameters] @go(LogStreams,[]MySQLLayerCloudwatchConfigurationLogStreamsParameters)
}

#MySQLLayerEBSVolumeObservation: {
	encrypted?: null | bool @go(Encrypted,*bool)

	// For PIOPS volumes, the IOPS per disk.
	iops?: null | float64 @go(Iops,*float64)

	// The path to mount the EBS volume on the layer's instances.
	mountPoint?: null | string @go(MountPoint,*string)

	// The number of disks to use for the EBS volume.
	numberOfDisks?: null | float64 @go(NumberOfDisks,*float64)

	// The RAID level to use for the volume.
	raidLevel?: null | string @go(RaidLevel,*string)

	// The size of the volume in gigabytes.
	size?: null | float64 @go(Size,*float64)

	// The type of volume to create. This may be standard (the default), io1 or gp2.
	type?: null | string @go(Type,*string)
}

#MySQLLayerEBSVolumeParameters: {
	// +kubebuilder:validation:Optional
	encrypted?: null | bool @go(Encrypted,*bool)

	// For PIOPS volumes, the IOPS per disk.
	// +kubebuilder:validation:Optional
	iops?: null | float64 @go(Iops,*float64)

	// The path to mount the EBS volume on the layer's instances.
	// +kubebuilder:validation:Required
	mountPoint?: null | string @go(MountPoint,*string)

	// The number of disks to use for the EBS volume.
	// +kubebuilder:validation:Required
	numberOfDisks?: null | float64 @go(NumberOfDisks,*float64)

	// The RAID level to use for the volume.
	// +kubebuilder:validation:Optional
	raidLevel?: null | string @go(RaidLevel,*string)

	// The size of the volume in gigabytes.
	// +kubebuilder:validation:Required
	size?: null | float64 @go(Size,*float64)

	// The type of volume to create. This may be standard (the default), io1 or gp2.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#MySQLLayerLoadBasedAutoScalingDownscalingObservation: {
	alarms?: [...null | string] @go(Alarms,[]*string)
	cpuThreshold?:       null | float64 @go(CPUThreshold,*float64)
	ignoreMetricsTime?:  null | float64 @go(IgnoreMetricsTime,*float64)
	instanceCount?:      null | float64 @go(InstanceCount,*float64)
	loadThreshold?:      null | float64 @go(LoadThreshold,*float64)
	memoryThreshold?:    null | float64 @go(MemoryThreshold,*float64)
	thresholdsWaitTime?: null | float64 @go(ThresholdsWaitTime,*float64)
}

#MySQLLayerLoadBasedAutoScalingDownscalingParameters: {
	// +kubebuilder:validation:Optional
	alarms?: [...null | string] @go(Alarms,[]*string)

	// +kubebuilder:validation:Optional
	cpuThreshold?: null | float64 @go(CPUThreshold,*float64)

	// +kubebuilder:validation:Optional
	ignoreMetricsTime?: null | float64 @go(IgnoreMetricsTime,*float64)

	// +kubebuilder:validation:Optional
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// +kubebuilder:validation:Optional
	loadThreshold?: null | float64 @go(LoadThreshold,*float64)

	// +kubebuilder:validation:Optional
	memoryThreshold?: null | float64 @go(MemoryThreshold,*float64)

	// +kubebuilder:validation:Optional
	thresholdsWaitTime?: null | float64 @go(ThresholdsWaitTime,*float64)
}

#MySQLLayerLoadBasedAutoScalingObservation: {
	downscaling?: [...#MySQLLayerLoadBasedAutoScalingDownscalingObservation] @go(Downscaling,[]MySQLLayerLoadBasedAutoScalingDownscalingObservation)
	enable?: null | bool @go(Enable,*bool)
	upscaling?: [...#MySQLLayerLoadBasedAutoScalingUpscalingObservation] @go(Upscaling,[]MySQLLayerLoadBasedAutoScalingUpscalingObservation)
}

#MySQLLayerLoadBasedAutoScalingParameters: {
	// +kubebuilder:validation:Optional
	downscaling?: [...#MySQLLayerLoadBasedAutoScalingDownscalingParameters] @go(Downscaling,[]MySQLLayerLoadBasedAutoScalingDownscalingParameters)

	// +kubebuilder:validation:Optional
	enable?: null | bool @go(Enable,*bool)

	// +kubebuilder:validation:Optional
	upscaling?: [...#MySQLLayerLoadBasedAutoScalingUpscalingParameters] @go(Upscaling,[]MySQLLayerLoadBasedAutoScalingUpscalingParameters)
}

#MySQLLayerLoadBasedAutoScalingUpscalingObservation: {
	alarms?: [...null | string] @go(Alarms,[]*string)
	cpuThreshold?:       null | float64 @go(CPUThreshold,*float64)
	ignoreMetricsTime?:  null | float64 @go(IgnoreMetricsTime,*float64)
	instanceCount?:      null | float64 @go(InstanceCount,*float64)
	loadThreshold?:      null | float64 @go(LoadThreshold,*float64)
	memoryThreshold?:    null | float64 @go(MemoryThreshold,*float64)
	thresholdsWaitTime?: null | float64 @go(ThresholdsWaitTime,*float64)
}

#MySQLLayerLoadBasedAutoScalingUpscalingParameters: {
	// +kubebuilder:validation:Optional
	alarms?: [...null | string] @go(Alarms,[]*string)

	// +kubebuilder:validation:Optional
	cpuThreshold?: null | float64 @go(CPUThreshold,*float64)

	// +kubebuilder:validation:Optional
	ignoreMetricsTime?: null | float64 @go(IgnoreMetricsTime,*float64)

	// +kubebuilder:validation:Optional
	instanceCount?: null | float64 @go(InstanceCount,*float64)

	// +kubebuilder:validation:Optional
	loadThreshold?: null | float64 @go(LoadThreshold,*float64)

	// +kubebuilder:validation:Optional
	memoryThreshold?: null | float64 @go(MemoryThreshold,*float64)

	// +kubebuilder:validation:Optional
	thresholdsWaitTime?: null | float64 @go(ThresholdsWaitTime,*float64)
}

#MySQLLayerObservation: {
	// The Amazon Resource Name(ARN) of the layer.
	arn?: null | string @go(Arn,*string)

	// Whether to automatically assign an elastic IP address to the layer's instances.
	autoAssignElasticIps?: null | bool @go(AutoAssignElasticIps,*bool)

	// For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances.
	autoAssignPublicIps?: null | bool @go(AutoAssignPublicIps,*bool)

	// Whether to enable auto-healing for the layer.
	autoHealing?: null | bool @go(AutoHealing,*bool)
	cloudwatchConfiguration?: [...#MySQLLayerCloudwatchConfigurationObservation] @go(CloudwatchConfiguration,[]MySQLLayerCloudwatchConfigurationObservation)
	customConfigureRecipes?: [...null | string] @go(CustomConfigureRecipes,[]*string)
	customDeployRecipes?: [...null | string] @go(CustomDeployRecipes,[]*string)

	// The ARN of an IAM profile that will be used for the layer's instances.
	customInstanceProfileArn?: null | string @go(CustomInstanceProfileArn,*string)

	// Custom JSON attributes to apply to the layer.
	customJson?: null | string @go(CustomJSON,*string)

	// Ids for a set of security groups to apply to the layer's instances.
	customSecurityGroupIds?: [...null | string] @go(CustomSecurityGroupIds,[]*string)
	customSetupRecipes?: [...null | string] @go(CustomSetupRecipes,[]*string)
	customShutdownRecipes?: [...null | string] @go(CustomShutdownRecipes,[]*string)
	customUndeployRecipes?: [...null | string] @go(CustomUndeployRecipes,[]*string)

	// Whether to enable Elastic Load Balancing connection draining.
	drainElbOnShutdown?: null | bool @go(DrainELBOnShutdown,*bool)

	// ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances.
	ebsVolume?: [...#MySQLLayerEBSVolumeObservation] @go(EBSVolume,[]MySQLLayerEBSVolumeObservation)

	// Name of an Elastic Load Balancer to attach to this layer
	elasticLoadBalancer?: null | string @go(ElasticLoadBalancer,*string)

	// The id of the layer.
	id?: null | string @go(ID,*string)

	// Whether to install OS and package updates on each instance when it boots.
	installUpdatesOnBoot?: null | bool @go(InstallUpdatesOnBoot,*bool)

	// The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event.
	instanceShutdownTimeout?: null | float64 @go(InstanceShutdownTimeout,*float64)
	loadBasedAutoScaling?: [...#MySQLLayerLoadBasedAutoScalingObservation] @go(LoadBasedAutoScaling,[]MySQLLayerLoadBasedAutoScalingObservation)

	// A human-readable name for the layer.
	name?: null | string @go(Name,*string)

	// Root password to use for MySQL.
	rootPassword?: null | string @go(RootPassword,*string)

	// Whether to set the root user password to all instances in the stack so they can access the instances in this layer.
	rootPasswordOnAllInstances?: null | bool @go(RootPasswordOnAllInstances,*bool)

	// ID of the stack the layer will belong to.
	stackId?: null | string @go(StackID,*string)

	// Names of a set of system packages to install on the layer's instances.
	systemPackages?: [...null | string] @go(SystemPackages,[]*string)

	// Key-value map of resource tags.
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)

	// Whether to use EBS-optimized instances.
	useEbsOptimizedInstances?: null | bool @go(UseEBSOptimizedInstances,*bool)
}

#MySQLLayerParameters: {
	// Whether to automatically assign an elastic IP address to the layer's instances.
	// +kubebuilder:validation:Optional
	autoAssignElasticIps?: null | bool @go(AutoAssignElasticIps,*bool)

	// For stacks belonging to a VPC, whether to automatically assign a public IP address to each of the layer's instances.
	// +kubebuilder:validation:Optional
	autoAssignPublicIps?: null | bool @go(AutoAssignPublicIps,*bool)

	// Whether to enable auto-healing for the layer.
	// +kubebuilder:validation:Optional
	autoHealing?: null | bool @go(AutoHealing,*bool)

	// +kubebuilder:validation:Optional
	cloudwatchConfiguration?: [...#MySQLLayerCloudwatchConfigurationParameters] @go(CloudwatchConfiguration,[]MySQLLayerCloudwatchConfigurationParameters)

	// +kubebuilder:validation:Optional
	customConfigureRecipes?: [...null | string] @go(CustomConfigureRecipes,[]*string)

	// +kubebuilder:validation:Optional
	customDeployRecipes?: [...null | string] @go(CustomDeployRecipes,[]*string)

	// The ARN of an IAM profile that will be used for the layer's instances.
	// +kubebuilder:validation:Optional
	customInstanceProfileArn?: null | string @go(CustomInstanceProfileArn,*string)

	// Custom JSON attributes to apply to the layer.
	// +kubebuilder:validation:Optional
	customJson?: null | string @go(CustomJSON,*string)

	// Ids for a set of security groups to apply to the layer's instances.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=CustomSecurityGroupIDRefs
	// +crossplane:generate:reference:selectorFieldName=CustomSecurityGroupIDSelector
	// +kubebuilder:validation:Optional
	customSecurityGroupIds?: [...null | string] @go(CustomSecurityGroupIds,[]*string)

	// +kubebuilder:validation:Optional
	customSetupRecipes?: [...null | string] @go(CustomSetupRecipes,[]*string)

	// +kubebuilder:validation:Optional
	customShutdownRecipes?: [...null | string] @go(CustomShutdownRecipes,[]*string)

	// +kubebuilder:validation:Optional
	customUndeployRecipes?: [...null | string] @go(CustomUndeployRecipes,[]*string)

	// Whether to enable Elastic Load Balancing connection draining.
	// +kubebuilder:validation:Optional
	drainElbOnShutdown?: null | bool @go(DrainELBOnShutdown,*bool)

	// ebs_volume blocks, as described below, will each create an EBS volume and connect it to the layer's instances.
	// +kubebuilder:validation:Optional
	ebsVolume?: [...#MySQLLayerEBSVolumeParameters] @go(EBSVolume,[]MySQLLayerEBSVolumeParameters)

	// Name of an Elastic Load Balancer to attach to this layer
	// +kubebuilder:validation:Optional
	elasticLoadBalancer?: null | string @go(ElasticLoadBalancer,*string)

	// Whether to install OS and package updates on each instance when it boots.
	// +kubebuilder:validation:Optional
	installUpdatesOnBoot?: null | bool @go(InstallUpdatesOnBoot,*bool)

	// The time, in seconds, that OpsWorks will wait for Chef to complete after triggering the Shutdown event.
	// +kubebuilder:validation:Optional
	instanceShutdownTimeout?: null | float64 @go(InstanceShutdownTimeout,*float64)

	// +kubebuilder:validation:Optional
	loadBasedAutoScaling?: [...#MySQLLayerLoadBasedAutoScalingParameters] @go(LoadBasedAutoScaling,[]MySQLLayerLoadBasedAutoScalingParameters)

	// A human-readable name for the layer.
	// +kubebuilder:validation:Optional
	name?: null | string @go(Name,*string)

	// Root password to use for MySQL.
	// +kubebuilder:validation:Optional
	rootPassword?: null | string @go(RootPassword,*string)

	// Whether to set the root user password to all instances in the stack so they can access the instances in this layer.
	// +kubebuilder:validation:Optional
	rootPasswordOnAllInstances?: null | bool @go(RootPasswordOnAllInstances,*bool)

	// ID of the stack the layer will belong to.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/opsworks/v1beta1.Stack
	// +crossplane:generate:reference:extractor=github.com/upbound/upjet/pkg/resource.ExtractResourceID()
	// +kubebuilder:validation:Optional
	stackId?: null | string @go(StackID,*string)

	// Names of a set of system packages to install on the layer's instances.
	// +kubebuilder:validation:Optional
	systemPackages?: [...null | string] @go(SystemPackages,[]*string)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Whether to use EBS-optimized instances.
	// +kubebuilder:validation:Optional
	useEbsOptimizedInstances?: null | bool @go(UseEBSOptimizedInstances,*bool)
}

// MySQLLayerSpec defines the desired state of MySQLLayer
#MySQLLayerSpec: {
	forProvider: #MySQLLayerParameters @go(ForProvider)
}

// MySQLLayerStatus defines the observed state of MySQLLayer.
#MySQLLayerStatus: {
	atProvider?: #MySQLLayerObservation @go(AtProvider)
}

// MySQLLayer is the Schema for the MySQLLayers API. Provides an OpsWorks MySQL layer resource.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#MySQLLayer: {
	spec:    #MySQLLayerSpec   @go(Spec)
	status?: #MySQLLayerStatus @go(Status)
}

// MySQLLayerList contains a list of MySQLLayers
#MySQLLayerList: {
	items: [...#MySQLLayer] @go(Items,[]MySQLLayer)
}
