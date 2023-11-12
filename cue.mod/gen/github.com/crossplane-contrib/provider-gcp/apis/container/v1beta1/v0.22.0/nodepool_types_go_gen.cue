// Code generated by cue get go. DO NOT EDIT.

//cue:generate cue get go github.com/crossplane-contrib/provider-gcp/apis/container/v1beta1

// nolint:gocritic,golint // Deprecation comment format false positives.
package v1beta1

import "github.com/crossplane-contrib/provider-gcp/apis/container/v1beta2"

#NodePoolStateUnspecified:  "STATUS_UNSPECIFIED"
#NodePoolStateProvisioning: "PROVISIONING"
#NodePoolStateRunning:      "RUNNING"
#NodePoolStateRunningError: "RUNNING_WITH_ERROR"
#NodePoolStateReconciling:  "RECONCILING"
#NodePoolStateStopping:     "STOPPING"
#NodePoolStateError:        "ERROR"

// NodePoolObservation is used to show the observed state of the GKE Node Pool
// resource on GCP.
#NodePoolObservation: {
	// Conditions: Which conditions caused the current node pool state.
	conditions?: [...null | v1beta2.#StatusCondition] @go(Conditions,[]*v1beta2.StatusCondition)

	// InstanceGroupUrls: The resource URLs of the [managed
	// instance
	// groups](/compute/docs/instance-groups/creating-groups-of-mana
	// ged-instances)
	// associated with this node pool.
	instanceGroupUrls?: [...string] @go(InstanceGroupUrls,[]string)

	// PodIpv4CidrSize: The pod CIDR block size per node in
	// this node pool.
	podIpv4CidrSize?: int64 @go(PodIpv4CidrSize)

	// Management: NodeManagement configuration for this NodePool.
	management?: null | #NodeManagementStatus @go(Management,*NodeManagementStatus)

	// SelfLink: Server-defined URL for the resource.
	selfLink?: string @go(SelfLink)

	// Status: The status of the nodes in this pool instance.
	//
	// Possible values:
	//   "STATUS_UNSPECIFIED" - Not set.
	//   "PROVISIONING" - The PROVISIONING state indicates the node pool is
	// being created.
	//   "RUNNING" - The RUNNING state indicates the node pool has been
	// created
	// and is fully usable.
	//   "RUNNING_WITH_ERROR" - The RUNNING_WITH_ERROR state indicates the
	// node pool has been created
	// and is partially usable. Some error state has occurred and
	// some
	// functionality may be impaired. Customer may need to reissue a
	// request
	// or trigger a new update.
	//   "RECONCILING" - The RECONCILING state indicates that some work is
	// actively being done on
	// the node pool, such as upgrading node software. Details can
	// be found in the `statusMessage` field.
	//   "STOPPING" - The STOPPING state indicates the node pool is being
	// deleted.
	//   "ERROR" - The ERROR state indicates the node pool may be unusable.
	// Details
	// can be found in the `statusMessage` field.
	status?: string @go(Status)

	// StatusMessage: Additional information about the current
	// status of this
	// node pool instance, if available.
	statusMessage?: string @go(StatusMessage)
}

// NodePoolParameters define the desired state of a Google Kubernetes Engine
// node pool.
#NodePoolParameters: {
	// Cluster: The resource link for the GKE cluster to which the NodePool will
	// attach. Must be of format
	// projects/projectID/locations/clusterLocation/clusters/clusterName. Must
	// be supplied if ClusterRef is not.
	// +immutable
	cluster?: string @go(Cluster)

	// Autoscaling: Autoscaler configuration for this NodePool. Autoscaler
	// is enabled
	// only if a valid configuration is present.
	autoscaling?: null | #NodePoolAutoscaling @go(Autoscaling,*NodePoolAutoscaling)

	// Config: The node configuration of the pool.
	config?: null | #NodeConfig @go(Config,*NodeConfig)

	// InitialNodeCount: The initial node count for the pool. You must
	// ensure that your
	// Compute Engine <a href="/compute/docs/resource-quotas">resource
	// quota</a>
	// is sufficient for this number of instances. You must also have
	// available
	// firewall and routes quota.
	// +immutable
	// +optional
	initialNodeCount?: null | int64 @go(InitialNodeCount,*int64)

	// Locations: The list of Google Compute Engine
	// [zones](/compute/docs/zones#available)
	// in which the NodePool's nodes should be located.
	// +optional
	locations?: [...string] @go(Locations,[]string)

	// Management: NodeManagement configuration for this NodePool.
	management?: null | #NodeManagementSpec @go(Management,*NodeManagementSpec)

	// MaxPodsConstraint: The constraint on the maximum number of pods that
	// can be run
	// simultaneously on a node in the node pool.
	// +immutable
	maxPodsConstraint?: null | v1beta2.#MaxPodsConstraint @go(MaxPodsConstraint,*v1beta2.MaxPodsConstraint)

	// UpgradeSettings: Upgrade settings control disruption and speed of the
	// upgrade.
	upgradeSettings?: null | v1beta2.#UpgradeSettings @go(UpgradeSettings,*v1beta2.UpgradeSettings)

	// Version: The version of the Kubernetes of this node.
	// +optional
	version?: null | string @go(Version,*string)
}

// NodePoolAutoscaling contains information
// required by cluster autoscaler to
// adjust the size of the node pool to the current cluster usage.
#NodePoolAutoscaling: {
	// Autoprovisioned: Can this node pool be deleted automatically.
	// +optional
	autoprovisioned?: null | bool @go(Autoprovisioned,*bool)

	// Enabled: Is autoscaling enabled for this node pool.
	// +optional
	enabled?: null | bool @go(Enabled,*bool)

	// MaxNodeCount: Maximum number of nodes in the NodePool. Must be >=
	// min_node_count. There
	// has to enough quota to scale up the cluster.
	// +optional
	maxNodeCount?: null | int64 @go(MaxNodeCount,*int64)

	// MinNodeCount: Minimum number of nodes in the NodePool. Must be >= 1
	// and <=
	// max_node_count.
	// +optional
	minNodeCount?: null | int64 @go(MinNodeCount,*int64)
}

// NodeConfig is parameters that describe the nodes in a cluster.
#NodeConfig: {
	// Accelerators: A list of hardware accelerators to be attached to each
	// node.
	// See https://cloud.google.com/compute/docs/gpus for more information
	// about
	// support for GPUs.
	// +immutable
	accelerators?: [...null | #AcceleratorConfig] @go(Accelerators,[]*AcceleratorConfig)

	// BootDiskKmsKey:  The Customer Managed Encryption Key used to encrypt
	// the boot disk attached to each node in the node pool. This should be
	// of the form
	// projects/[KEY_PROJECT_ID]/locations/[LOCATION]/keyRings/[RING_NAME]/cr
	// yptoKeys/[KEY_NAME]. For more information about protecting resources
	// with Cloud KMS Keys please see:
	// https://cloud.google.com/compute/docs/disks/customer-managed-encryption
	// +immutable
	// +optional
	bootDiskKmsKey?: null | string @go(BootDiskKmsKey,*string)

	// DiskSizeGb: Size of the disk attached to each node, specified in
	// GB.
	// The smallest allowed disk size is 10GB.
	//
	// If unspecified, the default disk size is 100GB.
	// +immutable
	// +optional
	diskSizeGb?: null | int64 @go(DiskSizeGb,*int64)

	// DiskType: Type of the disk attached to each node (e.g. 'pd-standard'
	// or 'pd-ssd')
	//
	// If unspecified, the default disk type is 'pd-standard'
	// +immutable
	// +optional
	diskType?: null | string @go(DiskType,*string)

	// ImageType: The image type to use for this node. Note that for a given
	// image type,
	// the latest version of it will be used.
	// +optional
	imageType?: null | string @go(ImageType,*string)

	// KubeletConfig: Node kubelet configs.
	// +immutable
	// +optional
	kubeletConfig?: null | #NodeKubeletConfig @go(KubeletConfig,*NodeKubeletConfig)

	// Labels: The map of Kubernetes labels (key/value pairs) to be applied
	// to each node.
	// These will added in addition to any default label(s) that
	// Kubernetes may apply to the node.
	// In case of conflict in label keys, the applied set may differ
	// depending on
	// the Kubernetes version -- it's best to assume the behavior is
	// undefined
	// and conflicts should be avoided.
	// For more information, including usage and the valid values,
	// see:
	// https://kubernetes.io/docs/concepts/overview/working-with-objects
	// /labels/
	// +immutable
	// +optional
	labels?: {[string]: string} @go(Labels,map[string]string)

	// LinuxNodeConfig: Parameters that can be configured on Linux nodes.
	linuxNodeConfig?: null | #LinuxNodeConfig @go(LinuxNodeConfig,*LinuxNodeConfig)

	// LocalSsdCount: The number of local SSD disks to be attached to the
	// node.
	//
	// The limit for this value is dependant upon the maximum number
	// of
	// disks available on a machine per zone.
	// See:
	// https://cloud.google.com/compute/docs/disks/local-ssd#local_ssd_l
	// imits
	// for more information.
	// +immutable
	// +optional
	localSsdCount?: null | int64 @go(LocalSsdCount,*int64)

	// MachineType: The name of a Google Compute Engine
	// [machine
	// type](/compute/docs/machine-types) (e.g.
	// `n1-standard-1`).
	//
	// If unspecified, the default machine type is
	// `n1-standard-1`.
	// +immutable
	// +optional
	machineType?: null | string @go(MachineType,*string)

	// Metadata: The metadata key/value pairs assigned to instances in the
	// cluster.
	//
	// Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128
	// bytes
	// in length. These are reflected as part of a URL in the metadata
	// server.
	// Additionally, to avoid ambiguity, keys must not conflict with any
	// other
	// metadata keys for the project or be one of the reserved keys:
	//  "cluster-location"
	//  "cluster-name"
	//  "cluster-uid"
	//  "configure-sh"
	//  "containerd-configure-sh"
	//  "enable-oslogin"
	//  "gci-ensure-gke-docker"
	//  "gci-update-strategy"
	//  "instance-template"
	//  "kube-env"
	//  "startup-script"
	//  "user-data"
	//  "disable-address-manager"
	//  "windows-startup-script-ps1"
	//  "common-psm1"
	//  "k8s-node-setup-psm1"
	//  "install-ssh-psm1"
	//  "user-profile-psm1"
	//  "serial-port-logging-enable"
	// Values are free-form strings, and only have meaning as interpreted
	// by
	// the image running in the instance. The only restriction placed on
	// them is
	// that each value's size must be less than or equal to 32 KB.
	//
	// The total size of all keys and values must be less than 512 KB.
	// +immutable
	// +optional
	metadata?: {[string]: string} @go(Metadata,map[string]string)

	// MinCpuPlatform: Minimum CPU platform to be used by this instance. The
	// instance may be
	// scheduled on the specified or newer CPU platform. Applicable values
	// are the
	// friendly names of CPU platforms, such as
	// <code>minCpuPlatform: &quot;Intel Haswell&quot;</code>
	// or
	// <code>minCpuPlatform: &quot;Intel Sandy Bridge&quot;</code>. For
	// more
	// information, read [how to specify min
	// CPU
	// platform](https://cloud.google.com/compute/docs/instances/specify-
	// min-cpu-platform)
	// +immutable
	// +optional
	minCpuPlatform?: null | string @go(MinCPUPlatform,*string)

	// NodeGroup: Setting this field will assign instances of this pool to
	// run on the specified node group. This is useful for running workloads
	// on sole tenant nodes
	// (https://cloud.google.com/compute/docs/nodes/sole-tenant-nodes).
	nodeGroup?: null | string @go(NodeGroup,*string)

	// OauthScopes: The set of Google API scopes to be made available on all
	// of the
	// node VMs under the "default" service account.
	//
	// The following scopes are recommended, but not required, and by
	// default are
	// not included:
	//
	// * `https://www.googleapis.com/auth/compute` is required for
	// mounting
	// persistent storage on your nodes.
	// * `https://www.googleapis.com/auth/devstorage.read_only` is required
	// for
	// communicating with **gcr.io**
	// (the [Google Container Registry](/container-registry/)).
	//
	// If unspecified, no scopes are added, unless Cloud Logging or
	// Cloud
	// Monitoring are enabled, in which case their required scopes will be
	// added.
	// +immutable
	// +optional
	oauthScopes?: [...string] @go(OauthScopes,[]string)

	// Preemptible: Whether the nodes are created as preemptible VM
	// instances.
	// See:
	// https://cloud.google.com/compute/docs/instances/preemptible for
	// more
	// inforamtion about preemptible VM instances.
	// +immutable
	// +optional
	preemptible?: null | bool @go(Preemptible,*bool)

	// ReservationAffinity: The optional reservation affinity. Setting this
	// field will apply the specified Zonal Compute Reservation
	// (https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
	// to this node pool.
	reservationAffinity?: null | #ReservationAffinity @go(ReservationAffinity,*ReservationAffinity)

	// SandboxConfig: Sandbox configuration for this node.
	// +immutable
	// +optional
	sandboxConfig?: null | #SandboxConfig @go(SandboxConfig,*SandboxConfig)

	// ServiceAccount: The Google Cloud Platform Service Account to be used
	// by the node VMs. If
	// no Service Account is specified, the "default" service account is
	// used.
	// +immutable
	// +optional
	serviceAccount?: null | string @go(ServiceAccount,*string)

	// ShieldedInstanceConfig: Shielded Instance options.
	// +immutable
	// +optional
	shieldedInstanceConfig?: null | #ShieldedInstanceConfig @go(ShieldedInstanceConfig,*ShieldedInstanceConfig)

	// Tags: The list of instance tags applied to all nodes. Tags are used
	// to identify
	// valid sources or targets for network firewalls and are specified
	// by
	// the client during cluster or node pool creation. Each tag within the
	// list
	// must comply with RFC1035.
	// +immutable
	// +optional
	tags?: [...string] @go(Tags,[]string)

	// Taints: List of kubernetes taints to be applied to each node.
	//
	// For more information, including usage and the valid values,
	// see:
	// https://kubernetes.io/docs/concepts/configuration/taint-and-toler
	// ation/
	// +immutable
	// +optional
	taints?: [...null | #NodeTaint] @go(Taints,[]*NodeTaint)

	// WorkloadMetadataConfig: The workload metadata configuration for this
	// node.
	// +optional
	workloadMetadataConfig?: null | #WorkloadMetadataConfig @go(WorkloadMetadataConfig,*WorkloadMetadataConfig)
}

// NodeKubeletConfig is configuration for the Node's Kubelet.
#NodeKubeletConfig: {
	// CpuCfsQuota: Enable CPU CFS quota enforcement for containers that
	// specify CPU limits. This option is enabled by default which makes
	// kubelet use CFS quota
	// (https://www.kernel.org/doc/Documentation/scheduler/sched-bwc.txt) to
	// enforce container CPU limits. Otherwise, CPU limits will not be
	// enforced at all. Disable this option to mitigate CPU throttling
	// problems while still having your pods to be in Guaranteed QoS class
	// by specifying the CPU limits. The default value is 'true' if
	// unspecified.
	cpuCfsQuota?: null | bool @go(CpuCfsQuota,*bool)

	// CpuCfsQuotaPeriod: Set the CPU CFS quota period value
	// 'cpu.cfs_period_us'. The string must be a sequence of decimal
	// numbers, each with optional fraction and a unit suffix, such as
	// "300ms". Valid time units are "ns", "us" (or "µs"), "ms", "s", "m",
	// "h". The value must be a positive duration.
	cpuCfsQuotaPeriod?: null | string @go(CpuCfsQuotaPeriod,*string)

	// CpuManagerPolicy: Control the CPU management policy on the node. See
	// https://kubernetes.io/docs/tasks/administer-cluster/cpu-management-policies/
	// The following values are allowed. - "none": the default, which
	// represents the existing scheduling behavior. - "static": allows pods
	// with certain resource characteristics to be granted increased CPU
	// affinity and exclusivity on the node. The default value is 'none' if
	// unspecified.
	cpuManagerPolicy?: null | string @go(CpuManagerPolicy,*string)
}

// LinuxNodeConfig contains configuration for Linux Nodes.
#LinuxNodeConfig: {
	// Sysctls: The Linux kernel parameters to be applied to the nodes and
	// all pods running on the nodes. The following parameters are
	// supported. net.core.netdev_max_backlog net.core.rmem_max
	// net.core.wmem_default net.core.wmem_max net.core.optmem_max
	// net.core.somaxconn net.ipv4.tcp_rmem net.ipv4.tcp_wmem
	// net.ipv4.tcp_tw_reuse
	sysctls: {[string]: string} @go(Sysctls,map[string]string)
}

// ReservationAffinity: ReservationAffinity
// (https://cloud.google.com/compute/docs/instances/reserving-zonal-resources)
// is the configuration of desired reservation which instances could take
// capacity from.
#ReservationAffinity: {
	// ConsumeReservationType: Corresponds to the type of reservation
	// consumption.
	//
	// Possible values:
	//   "UNSPECIFIED" - Default value. This should not be used.
	//   "NO_RESERVATION" - Do not consume from any reserved capacity.
	//   "ANY_RESERVATION" - Consume any reservation available.
	//   "SPECIFIC_RESERVATION" - Must consume from a specific reservation.
	// Must specify key value fields for specifying the reservations.
	consumeReservationType?: null | string @go(ConsumeReservationType,*string)

	// Key: Corresponds to the label key of a reservation resource. To
	// target a SPECIFIC_RESERVATION by name, specify
	// "googleapis.com/reservation-name" as the key and specify the name of
	// your reservation as its value.
	key?: null | string @go(Key,*string)

	// Values: Corresponds to the label value(s) of reservation resource(s).
	values?: [...string] @go(Values,[]string)
}

// AcceleratorConfig represents a Hardware Accelerator request.
#AcceleratorConfig: {
	// AcceleratorCount: The number of the accelerator cards exposed to an
	// instance.
	acceleratorCount?: int64 @go(AcceleratorCount)

	// AcceleratorType: The accelerator type resource name. List of
	// supported accelerators
	// [here](/compute/docs/gpus/#Introduction)
	acceleratorType?: string @go(AcceleratorType)
}

// SandboxConfig contains configurations of the sandbox to use for the node.
#SandboxConfig: {
	// Type: Type of the sandbox to use for the node.
	//
	// Possible values:
	//   "UNSPECIFIED" - Default value. This should not be used.
	//   "GVISOR" - Run sandbox using gvisor.
	type: string @go(Type)
}

// ShieldedInstanceConfig is a set of Shielded Instance options.
#ShieldedInstanceConfig: {
	// EnableIntegrityMonitoring: Defines whether the instance has integrity
	// monitoring enabled.
	//
	// Enables monitoring and attestation of the boot integrity of the
	// instance.
	// The attestation is performed against the integrity policy baseline.
	// This
	// baseline is initially derived from the implicitly trusted boot image
	// when
	// the instance is created.
	// +optional
	enableIntegrityMonitoring?: null | bool @go(EnableIntegrityMonitoring,*bool)

	// EnableSecureBoot: Defines whether the instance has Secure Boot
	// enabled.
	//
	// Secure Boot helps ensure that the system only runs authentic software
	// by
	// verifying the digital signature of all boot components, and halting
	// the
	// boot process if signature verification fails.
	// +optional
	enableSecureBoot?: null | bool @go(EnableSecureBoot,*bool)
}

// NodeTaint is a Kubernetes taint is comprised of three fields: key, value, and
// effect. Effect can only be one of three types:  NoSchedule, PreferNoSchedule
// or NoExecute.
//
// For more information, including usage and the valid values,
// see:
// https://kubernetes.io/docs/concepts/configuration/taint-and-toler
// ation/
#NodeTaint: {
	// Effect: Effect for taint.
	//
	// Possible values:
	//   "EFFECT_UNSPECIFIED" - Not set
	//   "NO_SCHEDULE" - NoSchedule
	//   "PREFER_NO_SCHEDULE" - PreferNoSchedule
	//   "NO_EXECUTE" - NoExecute
	effect: string @go(Effect)

	// Key: Key for taint.
	key: string @go(Key)

	// Value: Value for taint.
	value: string @go(Value)
}

// WorkloadMetadataConfig defines the metadata configuration to expose to
// workloads on the node pool.
#WorkloadMetadataConfig: {
	// Mode: Mode is the configuration for how to expose metadata to
	// workloads running on the node pool.
	//
	// Possible values:
	//   "MODE_UNSPECIFIED" - Not set.
	//   "GCE_METADATA" - Expose all Compute Engine metadata to pods.
	//   "GKE_METADATA" - Run the GKE Metadata Server on this node. The GKE
	// Metadata Server exposes a metadata API to workloads that is
	// compatible with the V1 Compute Metadata APIs exposed by the Compute
	// Engine and App Engine Metadata Servers. This feature can only be
	// enabled if Workload Identity is enabled at the cluster level.
	mode: string @go(Mode)
}

// NodeManagementSpec defines the desired set of node management services turned on
// for the node pool.
#NodeManagementSpec: {
	// AutoRepair: Whether the nodes will be automatically repaired.
	// +optional
	autoRepair?: null | bool @go(AutoRepair,*bool)

	// AutoUpgrade: Whether the nodes will be automatically upgraded.
	// +optional
	autoUpgrade?: null | bool @go(AutoUpgrade,*bool)
}

// NodeManagementStatus defines the observed set of node management services turned on
// for the node pool.
#NodeManagementStatus: {
	// UpgradeOptions: Specifies the Auto Upgrade knobs for the node pool.
	upgradeOptions?: null | #AutoUpgradeOptions @go(UpgradeOptions,*AutoUpgradeOptions)
}

// AutoUpgradeOptions defines the set of options for the user to control how the
// Auto Upgrades will proceed.
#AutoUpgradeOptions: {
	// AutoUpgradeStartTime: This field is set when upgrades
	// are about to commence
	// with the approximate start time for the upgrades,
	// in
	// [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) text format.
	autoUpgradeStartTime?: string @go(AutoUpgradeStartTime)

	// Description: This field is set when upgrades are about
	// to commence
	// with the description of the upgrade.
	description?: string @go(Description)
}

// A NodePoolSpec defines the desired state of a NodePool.
#NodePoolSpec: {
	forProvider: #NodePoolParameters @go(ForProvider)
}

// A NodePoolStatus represents the observed state of a NodePool.
#NodePoolStatus: {
	atProvider?: #NodePoolObservation @go(AtProvider)
}

// A NodePool is a managed resource that represents a Google Kubernetes Engine
// node pool.
// +kubebuilder:subresource:status
// +kubebuilder:printcolumn:name="READY",type="string",JSONPath=".status.conditions[?(@.type=='Ready')].status"
// +kubebuilder:printcolumn:name="SYNCED",type="string",JSONPath=".status.conditions[?(@.type=='Synced')].status"
// +kubebuilder:printcolumn:name="STATE",type="string",JSONPath=".status.atProvider.status"
// +kubebuilder:printcolumn:name="CLUSTER-REF",type="string",JSONPath=".spec.forProvider.clusterRef.name"
// +kubebuilder:printcolumn:name="AGE",type="date",JSONPath=".metadata.creationTimestamp"
// +kubebuilder:resource:scope=Cluster,categories={crossplane,managed,gcp}
#NodePool: {
	spec:    #NodePoolSpec   @go(Spec)
	status?: #NodePoolStatus @go(Status)
}

// NodePoolList contains a list of NodePool items
#NodePoolList: {
	items: [...#NodePool] @go(Items,[]NodePool)
}
