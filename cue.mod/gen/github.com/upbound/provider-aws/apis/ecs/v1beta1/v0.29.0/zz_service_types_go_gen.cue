// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/upbound/provider-aws/apis/ecs/v1beta1

package v1beta1

#AlarmsObservation: {
}

#AlarmsParameters: {
	// +kubebuilder:validation:Required
	alarmNames: [...null | string] @go(AlarmNames,[]*string)

	// Determines whether to use the CloudWatch alarm option in the service deployment process.
	// +kubebuilder:validation:Required
	enable?: null | bool @go(Enable,*bool)

	// Determines whether to configure Amazon ECS to roll back the service if a service deployment fails. If rollback is used, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
	// +kubebuilder:validation:Required
	rollback?: null | bool @go(Rollback,*bool)
}

#CapacityProviderStrategyObservation: {
}

#CapacityProviderStrategyParameters: {
	// Number of tasks, at a minimum, to run on the specified capacity provider. Only one capacity provider in a capacity provider strategy can have a base defined.
	// +kubebuilder:validation:Optional
	base?: null | float64 @go(Base,*float64)

	// Short name of the capacity provider.
	// +kubebuilder:validation:Required
	capacityProvider?: null | string @go(CapacityProvider,*string)

	// Relative percentage of the total number of launched tasks that should use the specified capacity provider.
	// +kubebuilder:validation:Optional
	weight?: null | float64 @go(Weight,*float64)
}

#ClientAliasObservation: {
}

#ClientAliasParameters: {
	// The name that you use in the applications of client tasks to connect to this service.
	// +kubebuilder:validation:Optional
	dnsName?: null | string @go(DNSName,*string)

	// The listening port number for the Service Connect proxy. This port is available inside of all of the tasks within the same namespace.
	// +kubebuilder:validation:Required
	port?: null | float64 @go(Port,*float64)
}

#DeploymentCircuitBreakerObservation: {
}

#DeploymentCircuitBreakerParameters: {
	// Whether to enable the deployment circuit breaker logic for the service.
	// +kubebuilder:validation:Required
	enable?: null | bool @go(Enable,*bool)

	// Whether to enable Amazon ECS to roll back the service if a service deployment fails. If rollback is enabled, when a service deployment fails, the service is rolled back to the last deployment that completed successfully.
	// +kubebuilder:validation:Required
	rollback?: null | bool @go(Rollback,*bool)
}

#DeploymentControllerObservation: {
}

#DeploymentControllerParameters: {
	// Type of deployment controller. Valid values: CODE_DEPLOY, ECS, EXTERNAL. Default: ECS.
	// +kubebuilder:validation:Optional
	type?: null | string @go(Type,*string)
}

#LoadBalancerObservation: {
}

#LoadBalancerParameters: {
	// Name of the container to associate with the load balancer (as it appears in a container definition).
	// +kubebuilder:validation:Required
	containerName?: null | string @go(ContainerName,*string)

	// Port on the container to associate with the load balancer.
	// +kubebuilder:validation:Required
	containerPort?: null | float64 @go(ContainerPort,*float64)

	// Name of the ELB (Classic) to associate with the service.
	// +kubebuilder:validation:Optional
	elbName?: null | string @go(ELBName,*string)

	// ARN of the Load Balancer target group to associate with the service.
	// +kubebuilder:validation:Optional
	targetGroupArn?: null | string @go(TargetGroupArn,*string)
}

#NetworkConfigurationObservation: {
}

#NetworkConfigurationParameters: {
	// Assign a public IP address to the ENI (Fargate launch type only). Valid values are true or false. Default false.
	// +kubebuilder:validation:Optional
	assignPublicIp?: null | bool @go(AssignPublicIP,*bool)

	// Security groups associated with the task or service. If you do not specify a security group, the default security group for the VPC is used.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.SecurityGroup
	// +crossplane:generate:reference:refFieldName=SecurityGroupRefs
	// +crossplane:generate:reference:selectorFieldName=SecurityGroupSelector
	// +kubebuilder:validation:Optional
	securityGroups?: [...null | string] @go(SecurityGroups,[]*string)

	// Subnets associated with the task or service.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/ec2/v1beta1.Subnet
	// +crossplane:generate:reference:refFieldName=SubnetRefs
	// +crossplane:generate:reference:selectorFieldName=SubnetSelector
	// +kubebuilder:validation:Optional
	subnets?: [...null | string] @go(Subnets,[]*string)
}

#OrderedPlacementStrategyObservation: {
}

#OrderedPlacementStrategyParameters: {
	// For the spread placement strategy, valid values are instanceId (or host,
	// which has the same effect), or any platform or custom attribute that is applied to a container instance.
	// For the binpack type, valid values are memory and cpu. For the random type, this attribute is not
	// needed. For more information, see Placement Strategy.
	// +kubebuilder:validation:Optional
	field?: null | string @go(Field,*string)

	// Type of placement strategy. Must be one of: binpack, random, or spread
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#PlacementConstraintsObservation: {
}

#PlacementConstraintsParameters: {
	// Cluster Query Language expression to apply to the constraint. Does not need to be specified for the distinctInstance type. For more information, see Cluster Query Language in the Amazon EC2 Container Service Developer Guide.
	// +kubebuilder:validation:Optional
	expression?: null | string @go(Expression,*string)

	// Type of constraint. The only valid values at this time are memberOf and distinctInstance.
	// +kubebuilder:validation:Required
	type?: null | string @go(Type,*string)
}

#SecretOptionObservation: {
}

#SecretOptionParameters: {
	// The name of the secret.
	// +kubebuilder:validation:Required
	name?: null | string @go(Name,*string)

	// The secret to expose to the container. The supported values are either the full ARN of the AWS Secrets Manager secret or the full ARN of the parameter in the SSM Parameter Store.
	// +kubebuilder:validation:Required
	valueFrom?: null | string @go(ValueFrom,*string)
}

#ServiceConnectConfigurationLogConfigurationObservation: {
}

#ServiceConnectConfigurationLogConfigurationParameters: {
	// The log driver to use for the container.
	// +kubebuilder:validation:Optional
	logDriver?: null | string @go(LogDriver,*string)

	// The configuration options to send to the log driver.
	// +kubebuilder:validation:Optional
	options?: {[string]: null | string} @go(Options,map[string]*string)

	// The secrets to pass to the log configuration. See below.
	// +kubebuilder:validation:Optional
	secretOption?: [...#SecretOptionParameters] @go(SecretOption,[]SecretOptionParameters)
}

#ServiceConnectConfigurationObservation: {
}

#ServiceConnectConfigurationParameters: {
	// Specifies whether to use Service Connect with this service.
	// +kubebuilder:validation:Required
	enabled?: null | bool @go(Enabled,*bool)

	// The log configuration for the container. See below.
	// +kubebuilder:validation:Optional
	logConfiguration?: [...#ServiceConnectConfigurationLogConfigurationParameters] @go(LogConfiguration,[]ServiceConnectConfigurationLogConfigurationParameters)

	// The namespace name or ARN of the aws_service_discovery_http_namespace for use with Service Connect.
	// +kubebuilder:validation:Optional
	namespace?: null | string @go(Namespace,*string)

	// The list of Service Connect service objects. See below.
	// +kubebuilder:validation:Optional
	service?: [...#ServiceConnectConfigurationServiceParameters] @go(Service,[]ServiceConnectConfigurationServiceParameters)
}

#ServiceConnectConfigurationServiceObservation: {
}

#ServiceConnectConfigurationServiceParameters: {
	// The list of client aliases for this Service Connect service. You use these to assign names that can be used by client applications. The maximum number of client aliases that you can have in this list is 1. See below.
	// +kubebuilder:validation:Required
	clientAlias: [...#ClientAliasParameters] @go(ClientAlias,[]ClientAliasParameters)

	// The name of the new AWS Cloud Map service that Amazon ECS creates for this Amazon ECS service.
	// +kubebuilder:validation:Optional
	discoveryName?: null | string @go(DiscoveryName,*string)

	// The port number for the Service Connect proxy to listen on.
	// +kubebuilder:validation:Optional
	ingressPortOverride?: null | float64 @go(IngressPortOverride,*float64)

	// The name of one of the portMappings from all the containers in the task definition of this Amazon ECS service.
	// +kubebuilder:validation:Required
	portName?: null | string @go(PortName,*string)
}

#ServiceObservation: {
	// ARN that identifies the service.
	id?: null | string @go(ID,*string)

	// A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
	tagsAll?: {[string]: null | string} @go(TagsAll,map[string]*string)
}

#ServiceParameters: {
	// Information about the CloudWatch alarms. See below.
	// +kubebuilder:validation:Optional
	alarms?: [...#AlarmsParameters] @go(Alarms,[]AlarmsParameters)

	// Capacity provider strategies to use for the service. Can be one or more. These can be updated without destroying and recreating the service only if force_new_deployment = true and not changing from 0 capacity_provider_strategy blocks to greater than 0, or vice versa. See below.
	// +kubebuilder:validation:Optional
	capacityProviderStrategy?: [...#CapacityProviderStrategyParameters] @go(CapacityProviderStrategy,[]CapacityProviderStrategyParameters)

	// ARN of an ECS cluster.
	// +crossplane:generate:reference:type=Cluster
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	cluster?: null | string @go(Cluster,*string)

	// Configuration block for deployment circuit breaker. See below.
	// +kubebuilder:validation:Optional
	deploymentCircuitBreaker?: [...#DeploymentCircuitBreakerParameters] @go(DeploymentCircuitBreaker,[]DeploymentCircuitBreakerParameters)

	// Configuration block for deployment controller configuration. See below.
	// +kubebuilder:validation:Optional
	deploymentController?: [...#DeploymentControllerParameters] @go(DeploymentController,[]DeploymentControllerParameters)

	// Upper limit (as a percentage of the service's desiredCount) of the number of running tasks that can be running in a service during a deployment. Not valid when using the DAEMON scheduling strategy.
	// +kubebuilder:validation:Optional
	deploymentMaximumPercent?: null | float64 @go(DeploymentMaximumPercent,*float64)

	// Lower limit (as a percentage of the service's desiredCount) of the number of running tasks that must remain running and healthy in a service during a deployment.
	// +kubebuilder:validation:Optional
	deploymentMinimumHealthyPercent?: null | float64 @go(DeploymentMinimumHealthyPercent,*float64)

	// Number of instances of the task definition to place and keep running. Defaults to 0. Do not specify if using the DAEMON scheduling strategy.
	// +kubebuilder:validation:Optional
	desiredCount?: null | float64 @go(DesiredCount,*float64)

	// Specifies whether to enable Amazon ECS managed tags for the tasks within the service.
	// +kubebuilder:validation:Optional
	enableEcsManagedTags?: null | bool @go(EnableEcsManagedTags,*bool)

	// Specifies whether to enable Amazon ECS Exec for the tasks within the service.
	// +kubebuilder:validation:Optional
	enableExecuteCommand?: null | bool @go(EnableExecuteCommand,*bool)

	// Enable to force a new task deployment of the service. This can be used to update tasks to use a newer Docker image with same image/tag combination (e.g., myimage:latest), roll Fargate tasks onto a newer platform version, or immediately deploy ordered_placement_strategy and placement_constraints updates.
	// +kubebuilder:validation:Optional
	forceNewDeployment?: null | bool @go(ForceNewDeployment,*bool)

	// Seconds to ignore failing load balancer health checks on newly instantiated tasks to prevent premature shutdown, up to 2147483647. Only valid for services configured to use load balancers.
	// +kubebuilder:validation:Optional
	healthCheckGracePeriodSeconds?: null | float64 @go(HealthCheckGracePeriodSeconds,*float64)

	// ARN of the IAM role that allows Amazon ECS to make calls to your load balancer on your behalf. This parameter is required if you are using a load balancer with your service, but only if your task definition does not use the awsvpc network mode. If using awsvpc network mode, do not specify this role. If your account has already created the Amazon ECS service-linked role, that role is used by default for your service unless you specify a role here.
	// +crossplane:generate:reference:type=github.com/upbound/provider-aws/apis/iam/v1beta1.Role
	// +crossplane:generate:reference:extractor=github.com/upbound/provider-aws/config/common.ARNExtractor()
	// +kubebuilder:validation:Optional
	iamRole?: null | string @go(IAMRole,*string)

	// Launch type on which to run your service. The valid values are EC2, FARGATE, and EXTERNAL. Defaults to EC2.
	// +kubebuilder:validation:Optional
	launchType?: null | string @go(LaunchType,*string)

	// Configuration block for load balancers. See below.
	// +kubebuilder:validation:Optional
	loadBalancer?: [...#LoadBalancerParameters] @go(LoadBalancer,[]LoadBalancerParameters)

	// Network configuration for the service. This parameter is required for task definitions that use the awsvpc network mode to receive their own Elastic Network Interface, and it is not supported for other network modes. See below.
	// +kubebuilder:validation:Optional
	networkConfiguration?: [...#NetworkConfigurationParameters] @go(NetworkConfiguration,[]NetworkConfigurationParameters)

	// Service level strategy rules that are taken into consideration during task placement. List from top to bottom in order of precedence. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. The maximum number of ordered_placement_strategy blocks is 5. See below.
	// +kubebuilder:validation:Optional
	orderedPlacementStrategy?: [...#OrderedPlacementStrategyParameters] @go(OrderedPlacementStrategy,[]OrderedPlacementStrategyParameters)

	// Rules that are taken into consideration during task placement. Updates to this configuration will take effect next task deployment unless force_new_deployment is enabled. Maximum number of placement_constraints is 10. See below.
	// +kubebuilder:validation:Optional
	placementConstraints?: [...#PlacementConstraintsParameters] @go(PlacementConstraints,[]PlacementConstraintsParameters)

	// Platform version on which to run your service. Only applicable for launch_type set to FARGATE. Defaults to LATEST. More information about Fargate platform versions can be found in the AWS ECS User Guide.
	// +kubebuilder:validation:Optional
	platformVersion?: null | string @go(PlatformVersion,*string)

	// Specifies whether to propagate the tags from the task definition or the service to the tasks. The valid values are SERVICE and TASK_DEFINITION.
	// +kubebuilder:validation:Optional
	propagateTags?: null | string @go(PropagateTags,*string)

	// Region is the region you'd like your resource to be created in.
	// +upjet:crd:field:TFTag=-
	// +kubebuilder:validation:Required
	region?: null | string @go(Region,*string)

	// Scheduling strategy to use for the service. The valid values are REPLICA and DAEMON. Defaults to REPLICA. Note that Tasks using the Fargate launch type or the .
	// +kubebuilder:validation:Optional
	schedulingStrategy?: null | string @go(SchedulingStrategy,*string)

	// The ECS Service Connect configuration for this service to discover and connect to services, and be discovered by, and connected from, other services within a namespace. See below.
	// +kubebuilder:validation:Optional
	serviceConnectConfiguration?: [...#ServiceConnectConfigurationParameters] @go(ServiceConnectConfiguration,[]ServiceConnectConfigurationParameters)

	// Service discovery registries for the service. The maximum number of service_registries blocks is 1. See below.
	// +kubebuilder:validation:Optional
	serviceRegistries?: [...#ServiceRegistriesParameters] @go(ServiceRegistries,[]ServiceRegistriesParameters)

	// Key-value map of resource tags.
	// +kubebuilder:validation:Optional
	tags?: {[string]: null | string} @go(Tags,map[string]*string)

	// Family and revision (family:revision) or full ARN of the task definition that you want to run in your service. Required unless using the EXTERNAL deployment controller. If a revision is not specified, the latest ACTIVE revision is used.
	// +kubebuilder:validation:Optional
	taskDefinition?: null | string @go(TaskDefinition,*string)

	// Map of arbitrary keys and values that, when changed, will trigger an in-place update (redeployment). Useful with timestamp(). See example above.
	// +kubebuilder:validation:Optional
	triggers?: {[string]: null | string} @go(Triggers,map[string]*string)

	// Default false.
	// +kubebuilder:validation:Optional
	waitForSteadyState?: null | bool @go(WaitForSteadyState,*bool)
}

#ServiceRegistriesObservation: {
}

#ServiceRegistriesParameters: {
	// Container name value, already specified in the task definition, to be used for your service discovery service.
	// +kubebuilder:validation:Optional
	containerName?: null | string @go(ContainerName,*string)

	// Port value, already specified in the task definition, to be used for your service discovery service.
	// +kubebuilder:validation:Optional
	containerPort?: null | float64 @go(ContainerPort,*float64)

	// Port value used if your Service Discovery service specified an SRV record.
	// +kubebuilder:validation:Optional
	port?: null | float64 @go(Port,*float64)

	// ARN of the Service Registry. The currently supported service registry is Amazon Route 53 Auto Naming Service(aws_service_discovery_service). For more information, see Service
	// +kubebuilder:validation:Required
	registryArn?: null | string @go(RegistryArn,*string)
}

// ServiceSpec defines the desired state of Service
#ServiceSpec: {
	forProvider: #ServiceParameters @go(ForProvider)
}

// ServiceStatus defines the observed state of Service.
#ServiceStatus: {
	atProvider?: #ServiceObservation @go(AtProvider)
}

// Service is the Schema for the Services API. Provides an ECS service.
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="EXTERNAL-NAME",type="string",JSONPath=".metadata.annotations.crossplane\\.io/external-name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:subresource:status
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,aws}
#Service: {
	spec:    #ServiceSpec   @go(Spec)
	status?: #ServiceStatus @go(Status)
}

// ServiceList contains a list of Services
#ServiceList: {
	items: [...#Service] @go(Items,[]Service)
}
