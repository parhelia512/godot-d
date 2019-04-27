/**
Server interface for low level physics access.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.physicsserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.physicsdirectspacestate;
import godot.physicsdirectbodystate;
/**
Server interface for low level physics access.

Everything related to physics in 3D.
*/
@GodotBaseClass struct PhysicsServerSingleton
{
	enum string _GODOT_internal_name = "PhysicsServer";
public:
@nogc nothrow:
	union { godot_object _godot_object; GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "PhysicsServer";
		@GodotName("shape_create") GodotMethod!(RID, long) shapeCreate;
		@GodotName("shape_set_data") GodotMethod!(void, RID, Variant) shapeSetData;
		@GodotName("shape_get_type") GodotMethod!(PhysicsServer.ShapeType, RID) shapeGetType;
		@GodotName("shape_get_data") GodotMethod!(Variant, RID) shapeGetData;
		@GodotName("space_create") GodotMethod!(RID) spaceCreate;
		@GodotName("space_set_active") GodotMethod!(void, RID, bool) spaceSetActive;
		@GodotName("space_is_active") GodotMethod!(bool, RID) spaceIsActive;
		@GodotName("space_set_param") GodotMethod!(void, RID, long, double) spaceSetParam;
		@GodotName("space_get_param") GodotMethod!(double, RID, long) spaceGetParam;
		@GodotName("space_get_direct_state") GodotMethod!(PhysicsDirectSpaceState, RID) spaceGetDirectState;
		@GodotName("area_create") GodotMethod!(RID) areaCreate;
		@GodotName("area_set_space") GodotMethod!(void, RID, RID) areaSetSpace;
		@GodotName("area_get_space") GodotMethod!(RID, RID) areaGetSpace;
		@GodotName("area_set_space_override_mode") GodotMethod!(void, RID, long) areaSetSpaceOverrideMode;
		@GodotName("area_get_space_override_mode") GodotMethod!(PhysicsServer.AreaSpaceOverrideMode, RID) areaGetSpaceOverrideMode;
		@GodotName("area_add_shape") GodotMethod!(void, RID, RID, Transform) areaAddShape;
		@GodotName("area_set_shape") GodotMethod!(void, RID, long, RID) areaSetShape;
		@GodotName("area_set_shape_transform") GodotMethod!(void, RID, long, Transform) areaSetShapeTransform;
		@GodotName("area_get_shape_count") GodotMethod!(long, RID) areaGetShapeCount;
		@GodotName("area_get_shape") GodotMethod!(RID, RID, long) areaGetShape;
		@GodotName("area_get_shape_transform") GodotMethod!(Transform, RID, long) areaGetShapeTransform;
		@GodotName("area_remove_shape") GodotMethod!(void, RID, long) areaRemoveShape;
		@GodotName("area_clear_shapes") GodotMethod!(void, RID) areaClearShapes;
		@GodotName("area_set_collision_layer") GodotMethod!(void, RID, long) areaSetCollisionLayer;
		@GodotName("area_set_collision_mask") GodotMethod!(void, RID, long) areaSetCollisionMask;
		@GodotName("area_set_param") GodotMethod!(void, RID, long, Variant) areaSetParam;
		@GodotName("area_set_transform") GodotMethod!(void, RID, Transform) areaSetTransform;
		@GodotName("area_get_param") GodotMethod!(Variant, RID, long) areaGetParam;
		@GodotName("area_get_transform") GodotMethod!(Transform, RID) areaGetTransform;
		@GodotName("area_attach_object_instance_id") GodotMethod!(void, RID, long) areaAttachObjectInstanceId;
		@GodotName("area_get_object_instance_id") GodotMethod!(long, RID) areaGetObjectInstanceId;
		@GodotName("area_set_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetMonitorCallback;
		@GodotName("area_set_area_monitor_callback") GodotMethod!(void, RID, GodotObject, String) areaSetAreaMonitorCallback;
		@GodotName("area_set_monitorable") GodotMethod!(void, RID, bool) areaSetMonitorable;
		@GodotName("area_set_ray_pickable") GodotMethod!(void, RID, bool) areaSetRayPickable;
		@GodotName("area_is_ray_pickable") GodotMethod!(bool, RID) areaIsRayPickable;
		@GodotName("body_create") GodotMethod!(RID, long, bool) bodyCreate;
		@GodotName("body_set_space") GodotMethod!(void, RID, RID) bodySetSpace;
		@GodotName("body_get_space") GodotMethod!(RID, RID) bodyGetSpace;
		@GodotName("body_set_mode") GodotMethod!(void, RID, long) bodySetMode;
		@GodotName("body_get_mode") GodotMethod!(PhysicsServer.BodyMode, RID) bodyGetMode;
		@GodotName("body_set_collision_layer") GodotMethod!(void, RID, long) bodySetCollisionLayer;
		@GodotName("body_get_collision_layer") GodotMethod!(long, RID) bodyGetCollisionLayer;
		@GodotName("body_set_collision_mask") GodotMethod!(void, RID, long) bodySetCollisionMask;
		@GodotName("body_get_collision_mask") GodotMethod!(long, RID) bodyGetCollisionMask;
		@GodotName("body_add_shape") GodotMethod!(void, RID, RID, Transform) bodyAddShape;
		@GodotName("body_set_shape") GodotMethod!(void, RID, long, RID) bodySetShape;
		@GodotName("body_set_shape_transform") GodotMethod!(void, RID, long, Transform) bodySetShapeTransform;
		@GodotName("body_get_shape_count") GodotMethod!(long, RID) bodyGetShapeCount;
		@GodotName("body_get_shape") GodotMethod!(RID, RID, long) bodyGetShape;
		@GodotName("body_get_shape_transform") GodotMethod!(Transform, RID, long) bodyGetShapeTransform;
		@GodotName("body_remove_shape") GodotMethod!(void, RID, long) bodyRemoveShape;
		@GodotName("body_clear_shapes") GodotMethod!(void, RID) bodyClearShapes;
		@GodotName("body_attach_object_instance_id") GodotMethod!(void, RID, long) bodyAttachObjectInstanceId;
		@GodotName("body_get_object_instance_id") GodotMethod!(long, RID) bodyGetObjectInstanceId;
		@GodotName("body_set_enable_continuous_collision_detection") GodotMethod!(void, RID, bool) bodySetEnableContinuousCollisionDetection;
		@GodotName("body_is_continuous_collision_detection_enabled") GodotMethod!(bool, RID) bodyIsContinuousCollisionDetectionEnabled;
		@GodotName("body_set_param") GodotMethod!(void, RID, long, double) bodySetParam;
		@GodotName("body_get_param") GodotMethod!(double, RID, long) bodyGetParam;
		@GodotName("body_set_kinematic_safe_margin") GodotMethod!(void, RID, double) bodySetKinematicSafeMargin;
		@GodotName("body_get_kinematic_safe_margin") GodotMethod!(double, RID) bodyGetKinematicSafeMargin;
		@GodotName("body_set_state") GodotMethod!(void, RID, long, Variant) bodySetState;
		@GodotName("body_get_state") GodotMethod!(Variant, RID, long) bodyGetState;
		@GodotName("body_add_central_force") GodotMethod!(void, RID, Vector3) bodyAddCentralForce;
		@GodotName("body_add_force") GodotMethod!(void, RID, Vector3, Vector3) bodyAddForce;
		@GodotName("body_add_torque") GodotMethod!(void, RID, Vector3) bodyAddTorque;
		@GodotName("body_apply_central_impulse") GodotMethod!(void, RID, Vector3) bodyApplyCentralImpulse;
		@GodotName("body_apply_impulse") GodotMethod!(void, RID, Vector3, Vector3) bodyApplyImpulse;
		@GodotName("body_apply_torque_impulse") GodotMethod!(void, RID, Vector3) bodyApplyTorqueImpulse;
		@GodotName("body_set_axis_velocity") GodotMethod!(void, RID, Vector3) bodySetAxisVelocity;
		@GodotName("body_set_axis_lock") GodotMethod!(void, RID, long, bool) bodySetAxisLock;
		@GodotName("body_is_axis_locked") GodotMethod!(bool, RID, long) bodyIsAxisLocked;
		@GodotName("body_add_collision_exception") GodotMethod!(void, RID, RID) bodyAddCollisionException;
		@GodotName("body_remove_collision_exception") GodotMethod!(void, RID, RID) bodyRemoveCollisionException;
		@GodotName("body_set_max_contacts_reported") GodotMethod!(void, RID, long) bodySetMaxContactsReported;
		@GodotName("body_get_max_contacts_reported") GodotMethod!(long, RID) bodyGetMaxContactsReported;
		@GodotName("body_set_omit_force_integration") GodotMethod!(void, RID, bool) bodySetOmitForceIntegration;
		@GodotName("body_is_omitting_force_integration") GodotMethod!(bool, RID) bodyIsOmittingForceIntegration;
		@GodotName("body_set_force_integration_callback") GodotMethod!(void, RID, GodotObject, String, Variant) bodySetForceIntegrationCallback;
		@GodotName("body_set_ray_pickable") GodotMethod!(void, RID, bool) bodySetRayPickable;
		@GodotName("body_is_ray_pickable") GodotMethod!(bool, RID) bodyIsRayPickable;
		@GodotName("body_get_direct_state") GodotMethod!(PhysicsDirectBodyState, RID) bodyGetDirectState;
		@GodotName("joint_create_pin") GodotMethod!(RID, RID, Vector3, RID, Vector3) jointCreatePin;
		@GodotName("pin_joint_set_param") GodotMethod!(void, RID, long, double) pinJointSetParam;
		@GodotName("pin_joint_get_param") GodotMethod!(double, RID, long) pinJointGetParam;
		@GodotName("pin_joint_set_local_a") GodotMethod!(void, RID, Vector3) pinJointSetLocalA;
		@GodotName("pin_joint_get_local_a") GodotMethod!(Vector3, RID) pinJointGetLocalA;
		@GodotName("pin_joint_set_local_b") GodotMethod!(void, RID, Vector3) pinJointSetLocalB;
		@GodotName("pin_joint_get_local_b") GodotMethod!(Vector3, RID) pinJointGetLocalB;
		@GodotName("joint_create_hinge") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateHinge;
		@GodotName("hinge_joint_set_param") GodotMethod!(void, RID, long, double) hingeJointSetParam;
		@GodotName("hinge_joint_get_param") GodotMethod!(double, RID, long) hingeJointGetParam;
		@GodotName("hinge_joint_set_flag") GodotMethod!(void, RID, long, bool) hingeJointSetFlag;
		@GodotName("hinge_joint_get_flag") GodotMethod!(bool, RID, long) hingeJointGetFlag;
		@GodotName("joint_create_slider") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateSlider;
		@GodotName("slider_joint_set_param") GodotMethod!(void, RID, long, double) sliderJointSetParam;
		@GodotName("slider_joint_get_param") GodotMethod!(double, RID, long) sliderJointGetParam;
		@GodotName("joint_create_cone_twist") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateConeTwist;
		@GodotName("cone_twist_joint_set_param") GodotMethod!(void, RID, long, double) coneTwistJointSetParam;
		@GodotName("cone_twist_joint_get_param") GodotMethod!(double, RID, long) coneTwistJointGetParam;
		@GodotName("joint_get_type") GodotMethod!(PhysicsServer.JointType, RID) jointGetType;
		@GodotName("joint_set_solver_priority") GodotMethod!(void, RID, long) jointSetSolverPriority;
		@GodotName("joint_get_solver_priority") GodotMethod!(long, RID) jointGetSolverPriority;
		@GodotName("joint_create_generic_6dof") GodotMethod!(RID, RID, Transform, RID, Transform) jointCreateGeneric6dof;
		@GodotName("generic_6dof_joint_set_param") GodotMethod!(void, RID, long, long, double) generic6dofJointSetParam;
		@GodotName("generic_6dof_joint_get_param") GodotMethod!(double, RID, long, long) generic6dofJointGetParam;
		@GodotName("generic_6dof_joint_set_flag") GodotMethod!(void, RID, long, long, bool) generic6dofJointSetFlag;
		@GodotName("generic_6dof_joint_get_flag") GodotMethod!(bool, RID, long, long) generic6dofJointGetFlag;
		@GodotName("free_rid") GodotMethod!(void, RID) freeRid;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("get_process_info") GodotMethod!(long, long) getProcessInfo;
	}
	bool opEquals(in PhysicsServerSingleton other) const { return _godot_object.ptr is other._godot_object.ptr; }
	PhysicsServerSingleton opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static PhysicsServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("PhysicsServer");
		if(constructor is null) return typeof(this).init;
		return cast(PhysicsServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum BodyAxis : int
	{
		/**
		
		*/
		bodyAxisLinearX = 1,
		/**
		
		*/
		bodyAxisLinearY = 2,
		/**
		
		*/
		bodyAxisLinearZ = 4,
		/**
		
		*/
		bodyAxisAngularX = 8,
		/**
		
		*/
		bodyAxisAngularY = 16,
		/**
		
		*/
		bodyAxisAngularZ = 32,
	}
	/// 
	enum ProcessInfo : int
	{
		/**
		Constant to get the number of objects that are not sleeping.
		*/
		infoActiveObjects = 0,
		/**
		Constant to get the number of possible collisions.
		*/
		infoCollisionPairs = 1,
		/**
		Constant to get the number of space regions where a collision could occur.
		*/
		infoIslandCount = 2,
	}
	/// 
	enum AreaBodyStatus : int
	{
		/**
		The value of the first parameter and area callback function receives, when an object enters one of its shapes.
		*/
		areaBodyAdded = 0,
		/**
		The value of the first parameter and area callback function receives, when an object exits one of its shapes.
		*/
		areaBodyRemoved = 1,
	}
	/// 
	enum BodyMode : int
	{
		/**
		Constant for static bodies.
		*/
		bodyModeStatic = 0,
		/**
		Constant for kinematic bodies.
		*/
		bodyModeKinematic = 1,
		/**
		Constant for rigid bodies.
		*/
		bodyModeRigid = 2,
		/**
		Constant for rigid bodies in character mode. In this mode, a body can not rotate, and only its linear velocity is affected by physics.
		*/
		bodyModeCharacter = 3,
	}
	/// 
	enum ShapeType : int
	{
		/**
		The $(D Shape) is a $(D PlaneShape).
		*/
		shapePlane = 0,
		/**
		The $(D Shape) is a $(D RayShape).
		*/
		shapeRay = 1,
		/**
		The $(D Shape) is a $(D SphereShape).
		*/
		shapeSphere = 2,
		/**
		The $(D Shape) is a $(D BoxShape).
		*/
		shapeBox = 3,
		/**
		The $(D Shape) is a $(D CapsuleShape).
		*/
		shapeCapsule = 4,
		/**
		The $(D Shape) is a $(D CylinderShape).
		*/
		shapeCylinder = 5,
		/**
		The $(D Shape) is a $(D ConvexPolygonShape).
		*/
		shapeConvexPolygon = 6,
		/**
		The $(D Shape) is a $(D ConcavePolygonShape).
		*/
		shapeConcavePolygon = 7,
		/**
		The $(D Shape) is a $(D HeightMapShape).
		*/
		shapeHeightmap = 8,
		/**
		This constant is used internally by the engine. Any attempt to create this kind of shape results in an error.
		*/
		shapeCustom = 9,
	}
	/// 
	enum PinJointParam : int
	{
		/**
		The strength with which the pinned objects try to stay in positional relation to each other.
		The higher, the stronger.
		*/
		pinJointBias = 0,
		/**
		The strength with which the pinned objects try to stay in velocity relation to each other.
		The higher, the stronger.
		*/
		pinJointDamping = 1,
		/**
		If above 0, this value is the maximum value for an impulse that this Joint puts on its ends.
		*/
		pinJointImpulseClamp = 2,
	}
	/// 
	enum SpaceParameter : int
	{
		/**
		Constant to set/get the maximum distance a pair of bodies has to move before their collision status has to be recalculated.
		*/
		spaceParamContactRecycleRadius = 0,
		/**
		Constant to set/get the maximum distance a shape can be from another before they are considered separated.
		*/
		spaceParamContactMaxSeparation = 1,
		/**
		Constant to set/get the maximum distance a shape can penetrate another shape before it is considered a collision.
		*/
		spaceParamBodyMaxAllowedPenetration = 2,
		/**
		Constant to set/get the threshold linear velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
		*/
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		/**
		Constant to set/get the threshold angular velocity of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after the time given.
		*/
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		/**
		Constant to set/get the maximum time of activity. A body marked as potentially inactive for both linear and angular velocity will be put to sleep after this time.
		*/
		spaceParamBodyTimeToSleep = 5,
		/**
		
		*/
		spaceParamBodyAngularVelocityDampRatio = 6,
		/**
		Constant to set/get the default solver bias for all physics constraints. A solver bias is a factor controlling how much two objects "rebound", after violating a constraint, to avoid leaving them in that state because of numerical imprecision.
		*/
		spaceParamConstraintDefaultBias = 7,
		/**
		
		*/
		spaceParamTestMotionMinContactDepth = 8,
	}
	/// 
	enum ConeTwistJointParam : int
	{
		/**
		Swing is rotation from side to side, around the axis perpendicular to the twist axis.
		The swing span defines, how much rotation will not get corrected allong the swing axis.
		Could be defined as looseness in the $(D ConeTwistJoint).
		If below 0.05, this behaviour is locked. Default value: `PI/4`.
		*/
		coneTwistJointSwingSpan = 0,
		/**
		Twist is the rotation around the twist axis, this value defined how far the joint can twist.
		Twist is locked if below 0.05.
		*/
		coneTwistJointTwistSpan = 1,
		/**
		The speed with which the swing or twist will take place.
		The higher, the faster.
		*/
		coneTwistJointBias = 2,
		/**
		The ease with which the Joint twists, if it's too low, it takes more force to twist the joint.
		*/
		coneTwistJointSoftness = 3,
		/**
		Defines, how fast the swing- and twist-speed-difference on both sides gets synced.
		*/
		coneTwistJointRelaxation = 4,
	}
	/// 
	enum JointType : int
	{
		/**
		The $(D Joint) is a $(D PinJoint).
		*/
		jointPin = 0,
		/**
		The $(D Joint) is a $(D HingeJoint).
		*/
		jointHinge = 1,
		/**
		The $(D Joint) is a $(D SliderJoint).
		*/
		jointSlider = 2,
		/**
		The $(D Joint) is a $(D ConeTwistJoint).
		*/
		jointConeTwist = 3,
		/**
		The $(D Joint) is a $(D Generic6DOFJoint).
		*/
		joint6dof = 4,
	}
	/// 
	enum BodyState : int
	{
		/**
		Constant to set/get the current transform matrix of the body.
		*/
		bodyStateTransform = 0,
		/**
		Constant to set/get the current linear velocity of the body.
		*/
		bodyStateLinearVelocity = 1,
		/**
		Constant to set/get the current angular velocity of the body.
		*/
		bodyStateAngularVelocity = 2,
		/**
		Constant to sleep/wake up a body, or to get whether it is sleeping.
		*/
		bodyStateSleeping = 3,
		/**
		Constant to set/get whether the body can sleep.
		*/
		bodyStateCanSleep = 4,
	}
	/// 
	enum BodyParameter : int
	{
		/**
		Constant to set/get a body's bounce factor.
		*/
		bodyParamBounce = 0,
		/**
		Constant to set/get a body's friction.
		*/
		bodyParamFriction = 1,
		/**
		Constant to set/get a body's mass.
		*/
		bodyParamMass = 2,
		/**
		Constant to set/get a body's gravity multiplier.
		*/
		bodyParamGravityScale = 3,
		/**
		Constant to set/get a body's linear dampening factor.
		*/
		bodyParamLinearDamp = 4,
		/**
		Constant to set/get a body's angular dampening factor.
		*/
		bodyParamAngularDamp = 5,
		/**
		This is the last ID for body parameters. Any attempt to set this property is ignored. Any attempt to get it returns 0.
		*/
		bodyParamMax = 6,
	}
	/// 
	enum G6DOFJointAxisParam : int
	{
		/**
		The minimum difference between the pivot points' axes.
		*/
		g6dofJointLinearLowerLimit = 0,
		/**
		The maximum difference between the pivot points' axes.
		*/
		g6dofJointLinearUpperLimit = 1,
		/**
		A factor that gets applied to the movement across the axes. The lower, the slower the movement.
		*/
		g6dofJointLinearLimitSoftness = 2,
		/**
		The amount of restitution on the axes movement. The lower, the more velocity-energy gets lost.
		*/
		g6dofJointLinearRestitution = 3,
		/**
		The amount of damping that happens at the linear motion across the axes.
		*/
		g6dofJointLinearDamping = 4,
		/**
		The velocity that the joint's linear motor will attempt to reach.
		*/
		g6dofJointLinearMotorTargetVelocity = 5,
		/**
		The maximum force that the linear motor can apply while trying to reach the target velocity.
		*/
		g6dofJointLinearMotorForceLimit = 6,
		/**
		The minimum rotation in negative direction to break loose and rotate around the axes.
		*/
		g6dofJointAngularLowerLimit = 10,
		/**
		The minimum rotation in positive direction to break loose and rotate around the axes.
		*/
		g6dofJointAngularUpperLimit = 11,
		/**
		A factor that gets multiplied onto all rotations across the axes.
		*/
		g6dofJointAngularLimitSoftness = 12,
		/**
		The amount of rotational damping across the axes. The lower, the more dampening occurs.
		*/
		g6dofJointAngularDamping = 13,
		/**
		The amount of rotational restitution across the axes. The lower, the more restitution occurs.
		*/
		g6dofJointAngularRestitution = 14,
		/**
		The maximum amount of force that can occur, when rotating around the axes.
		*/
		g6dofJointAngularForceLimit = 15,
		/**
		When correcting the crossing of limits in rotation across the axes, this error tolerance factor defines how much the correction gets slowed down. The lower, the slower.
		*/
		g6dofJointAngularErp = 16,
		/**
		Target speed for the motor at the axes.
		*/
		g6dofJointAngularMotorTargetVelocity = 17,
		/**
		Maximum acceleration for the motor at the axes.
		*/
		g6dofJointAngularMotorForceLimit = 18,
	}
	/// 
	enum SliderJointParam : int
	{
		/**
		The maximum difference between the pivot points on their x-axis before damping happens.
		*/
		sliderJointLinearLimitUpper = 0,
		/**
		The minimum difference between the pivot points on their x-axis before damping happens.
		*/
		sliderJointLinearLimitLower = 1,
		/**
		A factor applied to the movement across the slider axis once the limits get surpassed. The lower, the slower the movement.
		*/
		sliderJointLinearLimitSoftness = 2,
		/**
		The amount of restitution once the limits are surpassed. The lower, the more velocityenergy gets lost.
		*/
		sliderJointLinearLimitRestitution = 3,
		/**
		The amount of damping once the slider limits are surpassed.
		*/
		sliderJointLinearLimitDamping = 4,
		/**
		A factor applied to the movement across the slider axis as long as the slider is in the limits. The lower, the slower the movement.
		*/
		sliderJointLinearMotionSoftness = 5,
		/**
		The amount of restitution inside the slider limits.
		*/
		sliderJointLinearMotionRestitution = 6,
		/**
		The amount of damping inside the slider limits.
		*/
		sliderJointLinearMotionDamping = 7,
		/**
		A factor applied to the movement across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalSoftness = 8,
		/**
		The amount of restitution when movement is across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalRestitution = 9,
		/**
		The amount of damping when movement is across axes orthogonal to the slider.
		*/
		sliderJointLinearOrthogonalDamping = 10,
		/**
		The upper limit of rotation in the slider.
		*/
		sliderJointAngularLimitUpper = 11,
		/**
		The lower limit of rotation in the slider.
		*/
		sliderJointAngularLimitLower = 12,
		/**
		A factor applied to the all rotation once the limit is surpassed.
		*/
		sliderJointAngularLimitSoftness = 13,
		/**
		The amount of restitution of the rotation when the limit is surpassed.
		*/
		sliderJointAngularLimitRestitution = 14,
		/**
		The amount of damping of the rotation when the limit is surpassed.
		*/
		sliderJointAngularLimitDamping = 15,
		/**
		A factor that gets applied to the all rotation in the limits.
		*/
		sliderJointAngularMotionSoftness = 16,
		/**
		The amount of restitution of the rotation in the limits.
		*/
		sliderJointAngularMotionRestitution = 17,
		/**
		The amount of damping of the rotation in the limits.
		*/
		sliderJointAngularMotionDamping = 18,
		/**
		A factor that gets applied to the all rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalSoftness = 19,
		/**
		The amount of restitution of the rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalRestitution = 20,
		/**
		The amount of damping of the rotation across axes orthogonal to the slider.
		*/
		sliderJointAngularOrthogonalDamping = 21,
		/**
		End flag of SLIDER_JOINT_* constants, used internally.
		*/
		sliderJointMax = 22,
	}
	/// 
	enum HingeJointParam : int
	{
		/**
		The speed with which the two bodies get pulled together when they move in different directions.
		*/
		hingeJointBias = 0,
		/**
		The maximum rotation across the Hinge.
		*/
		hingeJointLimitUpper = 1,
		/**
		The minimum rotation across the Hinge.
		*/
		hingeJointLimitLower = 2,
		/**
		The speed with which the rotation across the axis perpendicular to the hinge gets corrected.
		*/
		hingeJointLimitBias = 3,
		/**
		
		*/
		hingeJointLimitSoftness = 4,
		/**
		The lower this value, the more the rotation gets slowed down.
		*/
		hingeJointLimitRelaxation = 5,
		/**
		Target speed for the motor.
		*/
		hingeJointMotorTargetVelocity = 6,
		/**
		Maximum acceleration for the motor.
		*/
		hingeJointMotorMaxImpulse = 7,
	}
	/// 
	enum G6DOFJointAxisFlag : int
	{
		/**
		If `set` there is linear motion possible within the given limits.
		*/
		g6dofJointFlagEnableLinearLimit = 0,
		/**
		If `set` there is rotational motion possible.
		*/
		g6dofJointFlagEnableAngularLimit = 1,
		/**
		If `set` there is a rotational motor across these axes.
		*/
		g6dofJointFlagEnableMotor = 4,
		/**
		If `set` there is a linear motor on this axis that targets a specific velocity.
		*/
		g6dofJointFlagEnableLinearMotor = 5,
	}
	/// 
	enum HingeJointFlag : int
	{
		/**
		If `true`, the Hinge has a maximum and a minimum rotation.
		*/
		hingeJointFlagUseLimit = 0,
		/**
		If `true`, a motor turns the Hinge
		*/
		hingeJointFlagEnableMotor = 1,
	}
	/// 
	enum AreaSpaceOverrideMode : int
	{
		/**
		This area does not affect gravity/damp. These are generally areas that exist only to detect collisions, and objects entering or exiting them.
		*/
		areaSpaceOverrideDisabled = 0,
		/**
		This area adds its gravity/damp values to whatever has been calculated so far. This way, many overlapping areas can combine their physics to make interesting effects.
		*/
		areaSpaceOverrideCombine = 1,
		/**
		This area adds its gravity/damp values to whatever has been calculated so far. Then stops taking into account the rest of the areas, even the default one.
		*/
		areaSpaceOverrideCombineReplace = 2,
		/**
		This area replaces any gravity/damp, even the default one, and stops taking into account the rest of the areas.
		*/
		areaSpaceOverrideReplace = 3,
		/**
		This area replaces any gravity/damp calculated so far, but keeps calculating the rest of the areas, down to the default one.
		*/
		areaSpaceOverrideReplaceCombine = 4,
	}
	/// 
	enum AreaParameter : int
	{
		/**
		Constant to set/get gravity strength in an area.
		*/
		areaParamGravity = 0,
		/**
		Constant to set/get gravity vector/center in an area.
		*/
		areaParamGravityVector = 1,
		/**
		Constant to set/get whether the gravity vector of an area is a direction, or a center point.
		*/
		areaParamGravityIsPoint = 2,
		/**
		Constant to set/get the falloff factor for point gravity of an area. The greater this value is, the faster the strength of gravity decreases with the square of distance.
		*/
		areaParamGravityDistanceScale = 3,
		/**
		This constant was used to set/get the falloff factor for point gravity. It has been superseded by AREA_PARAM_GRAVITY_DISTANCE_SCALE.
		*/
		areaParamGravityPointAttenuation = 4,
		/**
		Constant to set/get the linear dampening factor of an area.
		*/
		areaParamLinearDamp = 5,
		/**
		Constant to set/get the angular dampening factor of an area.
		*/
		areaParamAngularDamp = 6,
		/**
		Constant to set/get the priority (order of processing) of an area.
		*/
		areaParamPriority = 7,
	}
	/// 
	enum Constants : int
	{
		infoActiveObjects = 0,
		sliderJointLinearLimitUpper = 0,
		hingeJointBias = 0,
		g6dofJointLinearLowerLimit = 0,
		jointPin = 0,
		areaSpaceOverrideDisabled = 0,
		shapePlane = 0,
		bodyStateTransform = 0,
		bodyParamBounce = 0,
		coneTwistJointSwingSpan = 0,
		hingeJointFlagUseLimit = 0,
		areaParamGravity = 0,
		pinJointBias = 0,
		bodyModeStatic = 0,
		g6dofJointFlagEnableLinearLimit = 0,
		spaceParamContactRecycleRadius = 0,
		areaBodyAdded = 0,
		spaceParamContactMaxSeparation = 1,
		hingeJointFlagEnableMotor = 1,
		bodyModeKinematic = 1,
		g6dofJointFlagEnableAngularLimit = 1,
		bodyParamFriction = 1,
		coneTwistJointTwistSpan = 1,
		bodyAxisLinearX = 1,
		bodyStateLinearVelocity = 1,
		areaSpaceOverrideCombine = 1,
		shapeRay = 1,
		jointHinge = 1,
		pinJointDamping = 1,
		hingeJointLimitUpper = 1,
		areaParamGravityVector = 1,
		sliderJointLinearLimitLower = 1,
		infoCollisionPairs = 1,
		g6dofJointLinearUpperLimit = 1,
		areaBodyRemoved = 1,
		coneTwistJointBias = 2,
		bodyStateAngularVelocity = 2,
		bodyModeRigid = 2,
		areaParamGravityIsPoint = 2,
		jointSlider = 2,
		g6dofJointLinearLimitSoftness = 2,
		hingeJointLimitLower = 2,
		pinJointImpulseClamp = 2,
		sliderJointLinearLimitSoftness = 2,
		areaSpaceOverrideCombineReplace = 2,
		bodyAxisLinearY = 2,
		shapeSphere = 2,
		bodyParamMass = 2,
		infoIslandCount = 2,
		spaceParamBodyMaxAllowedPenetration = 2,
		hingeJointLimitBias = 3,
		bodyStateSleeping = 3,
		coneTwistJointSoftness = 3,
		areaSpaceOverrideReplace = 3,
		areaParamGravityDistanceScale = 3,
		g6dofJointLinearRestitution = 3,
		spaceParamBodyLinearVelocitySleepThreshold = 3,
		bodyParamGravityScale = 3,
		bodyModeCharacter = 3,
		sliderJointLinearLimitRestitution = 3,
		jointConeTwist = 3,
		shapeBox = 3,
		sliderJointLinearLimitDamping = 4,
		bodyAxisLinearZ = 4,
		joint6dof = 4,
		hingeJointLimitSoftness = 4,
		g6dofJointLinearDamping = 4,
		shapeCapsule = 4,
		areaParamGravityPointAttenuation = 4,
		spaceParamBodyAngularVelocitySleepThreshold = 4,
		g6dofJointFlagEnableMotor = 4,
		bodyParamLinearDamp = 4,
		areaSpaceOverrideReplaceCombine = 4,
		coneTwistJointRelaxation = 4,
		bodyStateCanSleep = 4,
		areaParamLinearDamp = 5,
		shapeCylinder = 5,
		sliderJointLinearMotionSoftness = 5,
		spaceParamBodyTimeToSleep = 5,
		g6dofJointLinearMotorTargetVelocity = 5,
		bodyParamAngularDamp = 5,
		g6dofJointFlagEnableLinearMotor = 5,
		hingeJointLimitRelaxation = 5,
		shapeConvexPolygon = 6,
		bodyParamMax = 6,
		g6dofJointLinearMotorForceLimit = 6,
		sliderJointLinearMotionRestitution = 6,
		areaParamAngularDamp = 6,
		spaceParamBodyAngularVelocityDampRatio = 6,
		hingeJointMotorTargetVelocity = 6,
		shapeConcavePolygon = 7,
		hingeJointMotorMaxImpulse = 7,
		areaParamPriority = 7,
		spaceParamConstraintDefaultBias = 7,
		sliderJointLinearMotionDamping = 7,
		shapeHeightmap = 8,
		sliderJointLinearOrthogonalSoftness = 8,
		bodyAxisAngularX = 8,
		spaceParamTestMotionMinContactDepth = 8,
		sliderJointLinearOrthogonalRestitution = 9,
		shapeCustom = 9,
		sliderJointLinearOrthogonalDamping = 10,
		g6dofJointAngularLowerLimit = 10,
		sliderJointAngularLimitUpper = 11,
		g6dofJointAngularUpperLimit = 11,
		sliderJointAngularLimitLower = 12,
		g6dofJointAngularLimitSoftness = 12,
		g6dofJointAngularDamping = 13,
		sliderJointAngularLimitSoftness = 13,
		g6dofJointAngularRestitution = 14,
		sliderJointAngularLimitRestitution = 14,
		sliderJointAngularLimitDamping = 15,
		g6dofJointAngularForceLimit = 15,
		bodyAxisAngularY = 16,
		g6dofJointAngularErp = 16,
		sliderJointAngularMotionSoftness = 16,
		sliderJointAngularMotionRestitution = 17,
		g6dofJointAngularMotorTargetVelocity = 17,
		sliderJointAngularMotionDamping = 18,
		g6dofJointAngularMotorForceLimit = 18,
		sliderJointAngularOrthogonalSoftness = 19,
		sliderJointAngularOrthogonalRestitution = 20,
		sliderJointAngularOrthogonalDamping = 21,
		sliderJointMax = 22,
		bodyAxisAngularZ = 32,
	}
	/**
	Creates a shape of type SHAPE_*. Does not assign it to a body or an area. To do so, you must use $(D areaSetShape) or $(D bodySetShape).
	*/
	RID shapeCreate(in long type)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.shapeCreate, _godot_object, type);
	}
	/**
	Sets the shape data that defines its shape and size. The data to be passed depends on the kind of shape created $(D shapeGetType).
	*/
	void shapeSetData(VariantArg1)(in RID shape, in VariantArg1 data)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.shapeSetData, _godot_object, shape, data);
	}
	/**
	Returns the type of shape (see SHAPE_* constants).
	*/
	PhysicsServer.ShapeType shapeGetType(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.ShapeType)(_classBinding.shapeGetType, _godot_object, shape);
	}
	/**
	Returns the shape data.
	*/
	Variant shapeGetData(in RID shape) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.shapeGetData, _godot_object, shape);
	}
	/**
	Creates a space. A space is a collection of parameters for the physics engine that can be assigned to an area or a body. It can be assigned to an area with $(D areaSetSpace), or to a body with $(D bodySetSpace).
	*/
	RID spaceCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.spaceCreate, _godot_object);
	}
	/**
	Marks a space as active. It will not have an effect, unless it is assigned to an area or body.
	*/
	void spaceSetActive(in RID space, in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.spaceSetActive, _godot_object, space, active);
	}
	/**
	Returns whether the space is active.
	*/
	bool spaceIsActive(in RID space) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.spaceIsActive, _godot_object, space);
	}
	/**
	Sets the value for a space parameter. A list of available parameters is on the SPACE_PARAM_* constants.
	*/
	void spaceSetParam(in RID space, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.spaceSetParam, _godot_object, space, param, value);
	}
	/**
	Returns the value of a space parameter.
	*/
	double spaceGetParam(in RID space, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.spaceGetParam, _godot_object, space, param);
	}
	/**
	Returns the state of a space, a $(D PhysicsDirectSpaceState). This object can be used to make collision/intersection queries.
	*/
	PhysicsDirectSpaceState spaceGetDirectState(in RID space)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectSpaceState)(_classBinding.spaceGetDirectState, _godot_object, space);
	}
	/**
	Creates an $(D Area).
	*/
	RID areaCreate()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaCreate, _godot_object);
	}
	/**
	Assigns a space to the area.
	*/
	void areaSetSpace(in RID area, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetSpace, _godot_object, area, space);
	}
	/**
	Returns the space assigned to the area.
	*/
	RID areaGetSpace(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaGetSpace, _godot_object, area);
	}
	/**
	Sets the space override mode for the area. The modes are described in the constants AREA_SPACE_OVERRIDE_*.
	*/
	void areaSetSpaceOverrideMode(in RID area, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetSpaceOverrideMode, _godot_object, area, mode);
	}
	/**
	Returns the space override mode for the area.
	*/
	PhysicsServer.AreaSpaceOverrideMode areaGetSpaceOverrideMode(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.AreaSpaceOverrideMode)(_classBinding.areaGetSpaceOverrideMode, _godot_object, area);
	}
	/**
	Adds a shape to the area, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void areaAddShape(in RID area, in RID shape, in Transform transform = Transform.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaAddShape, _godot_object, area, shape, transform);
	}
	/**
	Substitutes a given area shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void areaSetShape(in RID area, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetShape, _godot_object, area, shape_idx, shape);
	}
	/**
	Sets the transform matrix for an area shape.
	*/
	void areaSetShapeTransform(in RID area, in long shape_idx, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetShapeTransform, _godot_object, area, shape_idx, transform);
	}
	/**
	Returns the number of shapes assigned to an area.
	*/
	long areaGetShapeCount(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.areaGetShapeCount, _godot_object, area);
	}
	/**
	Returns the $(D RID) of the nth shape of an area.
	*/
	RID areaGetShape(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.areaGetShape, _godot_object, area, shape_idx);
	}
	/**
	Returns the transform matrix of a shape within an area.
	*/
	Transform areaGetShapeTransform(in RID area, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.areaGetShapeTransform, _godot_object, area, shape_idx);
	}
	/**
	Removes a shape from an area. It does not delete the shape, so it can be reassigned later.
	*/
	void areaRemoveShape(in RID area, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaRemoveShape, _godot_object, area, shape_idx);
	}
	/**
	Removes all shapes from an area. It does not delete the shapes, so they can be reassigned later.
	*/
	void areaClearShapes(in RID area)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaClearShapes, _godot_object, area);
	}
	/**
	Assigns the area to one or many physics layers.
	*/
	void areaSetCollisionLayer(in RID area, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetCollisionLayer, _godot_object, area, layer);
	}
	/**
	Sets which physics layers the area will monitor.
	*/
	void areaSetCollisionMask(in RID area, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetCollisionMask, _godot_object, area, mask);
	}
	/**
	Sets the value for an area parameter. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	void areaSetParam(VariantArg2)(in RID area, in long param, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetParam, _godot_object, area, param, value);
	}
	/**
	Sets the transform matrix for an area.
	*/
	void areaSetTransform(in RID area, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetTransform, _godot_object, area, transform);
	}
	/**
	Returns an area parameter value. A list of available parameters is on the AREA_PARAM_* constants.
	*/
	Variant areaGetParam(in RID area, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.areaGetParam, _godot_object, area, param);
	}
	/**
	Returns the transform matrix for an area.
	*/
	Transform areaGetTransform(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.areaGetTransform, _godot_object, area);
	}
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void areaAttachObjectInstanceId(in RID area, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaAttachObjectInstanceId, _godot_object, area, id);
	}
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long areaGetObjectInstanceId(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.areaGetObjectInstanceId, _godot_object, area);
	}
	/**
	Sets the function to call when any body/area enters or exits the area. This callback will be called for any object interacting with the area, and takes five parameters:
	1: AREA_BODY_ADDED or AREA_BODY_REMOVED, depending on whether the object entered or exited the area.
	2: $(D RID) of the object that entered/exited the area.
	3: Instance ID of the object that entered/exited the area.
	4: The shape index of the object that entered/exited the area.
	5: The shape index of the area where the object entered/exited.
	*/
	void areaSetMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetAreaMonitorCallback(in RID area, GodotObject receiver, in String method)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetAreaMonitorCallback, _godot_object, area, receiver, method);
	}
	/**
	
	*/
	void areaSetMonitorable(in RID area, in bool monitorable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetMonitorable, _godot_object, area, monitorable);
	}
	/**
	Sets object pickable with rays.
	*/
	void areaSetRayPickable(in RID area, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.areaSetRayPickable, _godot_object, area, enable);
	}
	/**
	If `true`, area collides with rays.
	*/
	bool areaIsRayPickable(in RID area) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.areaIsRayPickable, _godot_object, area);
	}
	/**
	Creates a physics body. The first parameter can be any value from constants BODY_MODE*, for the type of body created. Additionally, the body can be created in sleeping state to save processing time.
	*/
	RID bodyCreate(in long mode = 2, in bool init_sleeping = false)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyCreate, _godot_object, mode, init_sleeping);
	}
	/**
	Assigns a space to the body (see $(D spaceCreate)).
	*/
	void bodySetSpace(in RID _body, in RID space)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetSpace, _godot_object, _body, space);
	}
	/**
	Returns the $(D RID) of the space assigned to a body.
	*/
	RID bodyGetSpace(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyGetSpace, _godot_object, _body);
	}
	/**
	Sets the body mode, from one of the constants BODY_MODE*.
	*/
	void bodySetMode(in RID _body, in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetMode, _godot_object, _body, mode);
	}
	/**
	Returns the body mode.
	*/
	PhysicsServer.BodyMode bodyGetMode(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.BodyMode)(_classBinding.bodyGetMode, _godot_object, _body);
	}
	/**
	Sets the physics layer or layers a body belongs to.
	*/
	void bodySetCollisionLayer(in RID _body, in long layer)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetCollisionLayer, _godot_object, _body, layer);
	}
	/**
	Returns the physics layer or layers a body belongs to.
	*/
	long bodyGetCollisionLayer(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetCollisionLayer, _godot_object, _body);
	}
	/**
	Sets the physics layer or layers a body can collide with.
	*/
	void bodySetCollisionMask(in RID _body, in long mask)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetCollisionMask, _godot_object, _body, mask);
	}
	/**
	Returns the physics layer or layers a body can collide with.
	-
	*/
	long bodyGetCollisionMask(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetCollisionMask, _godot_object, _body);
	}
	/**
	Adds a shape to the body, along with a transform matrix. Shapes are usually referenced by their index, so you should track which shape has a given index.
	*/
	void bodyAddShape(in RID _body, in RID shape, in Transform transform = Transform.init)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddShape, _godot_object, _body, shape, transform);
	}
	/**
	Substitutes a given body shape by another. The old shape is selected by its index, the new one by its $(D RID).
	*/
	void bodySetShape(in RID _body, in long shape_idx, in RID shape)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShape, _godot_object, _body, shape_idx, shape);
	}
	/**
	Sets the transform matrix for a body shape.
	*/
	void bodySetShapeTransform(in RID _body, in long shape_idx, in Transform transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetShapeTransform, _godot_object, _body, shape_idx, transform);
	}
	/**
	Returns the number of shapes assigned to a body.
	*/
	long bodyGetShapeCount(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetShapeCount, _godot_object, _body);
	}
	/**
	Returns the $(D RID) of the nth shape of a body.
	*/
	RID bodyGetShape(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.bodyGetShape, _godot_object, _body, shape_idx);
	}
	/**
	Returns the transform matrix of a body shape.
	*/
	Transform bodyGetShapeTransform(in RID _body, in long shape_idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform)(_classBinding.bodyGetShapeTransform, _godot_object, _body, shape_idx);
	}
	/**
	Removes a shape from a body. The shape is not deleted, so it can be reused afterwards.
	*/
	void bodyRemoveShape(in RID _body, in long shape_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyRemoveShape, _godot_object, _body, shape_idx);
	}
	/**
	Removes all shapes from a body.
	*/
	void bodyClearShapes(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyClearShapes, _godot_object, _body);
	}
	/**
	Assigns the area to a descendant of $(D GodotObject), so it can exist in the node tree.
	*/
	void bodyAttachObjectInstanceId(in RID _body, in long id)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAttachObjectInstanceId, _godot_object, _body, id);
	}
	/**
	Gets the instance ID of the object the area is assigned to.
	*/
	long bodyGetObjectInstanceId(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetObjectInstanceId, _godot_object, _body);
	}
	/**
	If `true`, the continuous collision detection mode is enabled.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodySetEnableContinuousCollisionDetection(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetEnableContinuousCollisionDetection, _godot_object, _body, enable);
	}
	/**
	If `true`, the continuous collision detection mode is enabled.
	*/
	bool bodyIsContinuousCollisionDetectionEnabled(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyIsContinuousCollisionDetectionEnabled, _godot_object, _body);
	}
	/**
	Sets a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	void bodySetParam(in RID _body, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetParam, _godot_object, _body, param, value);
	}
	/**
	Returns the value of a body parameter. A list of available parameters is on the BODY_PARAM_* constants.
	*/
	double bodyGetParam(in RID _body, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.bodyGetParam, _godot_object, _body, param);
	}
	/**
	
	*/
	void bodySetKinematicSafeMargin(in RID _body, in double margin)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetKinematicSafeMargin, _godot_object, _body, margin);
	}
	/**
	
	*/
	double bodyGetKinematicSafeMargin(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.bodyGetKinematicSafeMargin, _godot_object, _body);
	}
	/**
	Sets a body state (see BODY_STATE* constants).
	*/
	void bodySetState(VariantArg2)(in RID _body, in long state, in VariantArg2 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetState, _godot_object, _body, state, value);
	}
	/**
	Returns a body state.
	*/
	Variant bodyGetState(in RID _body, in long state) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.bodyGetState, _godot_object, _body, state);
	}
	/**
	
	*/
	void bodyAddCentralForce(in RID _body, in Vector3 force)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddCentralForce, _godot_object, _body, force);
	}
	/**
	
	*/
	void bodyAddForce(in RID _body, in Vector3 force, in Vector3 position)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddForce, _godot_object, _body, force, position);
	}
	/**
	
	*/
	void bodyAddTorque(in RID _body, in Vector3 torque)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddTorque, _godot_object, _body, torque);
	}
	/**
	
	*/
	void bodyApplyCentralImpulse(in RID _body, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyCentralImpulse, _godot_object, _body, impulse);
	}
	/**
	Gives the body a push at a `position` in the direction of the `impulse`.
	*/
	void bodyApplyImpulse(in RID _body, in Vector3 position, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyImpulse, _godot_object, _body, position, impulse);
	}
	/**
	Gives the body a push to rotate it.
	*/
	void bodyApplyTorqueImpulse(in RID _body, in Vector3 impulse)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyApplyTorqueImpulse, _godot_object, _body, impulse);
	}
	/**
	Sets an axis velocity. The velocity in the given vector axis will be set as the given vector length. This is useful for jumping behavior.
	*/
	void bodySetAxisVelocity(in RID _body, in Vector3 axis_velocity)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetAxisVelocity, _godot_object, _body, axis_velocity);
	}
	/**
	
	*/
	void bodySetAxisLock(in RID _body, in long axis, in bool lock)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetAxisLock, _godot_object, _body, axis, lock);
	}
	/**
	
	*/
	bool bodyIsAxisLocked(in RID _body, in long axis) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyIsAxisLocked, _godot_object, _body, axis);
	}
	/**
	Adds a body to the list of bodies exempt from collisions.
	*/
	void bodyAddCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyAddCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Removes a body from the list of bodies exempt from collisions.
	Continuous collision detection tries to predict where a moving body will collide, instead of moving it and correcting its movement if it collided.
	*/
	void bodyRemoveCollisionException(in RID _body, in RID excepted_body)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodyRemoveCollisionException, _godot_object, _body, excepted_body);
	}
	/**
	Sets the maximum contacts to report. Bodies can keep a log of the contacts with other bodies, this is enabled by setting the maximum amount of contacts reported to a number greater than 0.
	*/
	void bodySetMaxContactsReported(in RID _body, in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetMaxContactsReported, _godot_object, _body, amount);
	}
	/**
	Returns the maximum contacts that can be reported. See $(D bodySetMaxContactsReported).
	*/
	long bodyGetMaxContactsReported(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.bodyGetMaxContactsReported, _godot_object, _body);
	}
	/**
	Sets whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	void bodySetOmitForceIntegration(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetOmitForceIntegration, _godot_object, _body, enable);
	}
	/**
	Returns whether a body uses a callback function to calculate its own physics (see $(D bodySetForceIntegrationCallback)).
	*/
	bool bodyIsOmittingForceIntegration(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyIsOmittingForceIntegration, _godot_object, _body);
	}
	/**
	Sets the function used to calculate physics for an object, if that object allows it (see $(D bodySetOmitForceIntegration)).
	*/
	void bodySetForceIntegrationCallback(VariantArg3)(in RID _body, GodotObject receiver, in String method, in VariantArg3 userdata = Variant.nil)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetForceIntegrationCallback, _godot_object, _body, receiver, method, userdata);
	}
	/**
	Sets the body pickable with rays if `enabled` is set.
	*/
	void bodySetRayPickable(in RID _body, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.bodySetRayPickable, _godot_object, _body, enable);
	}
	/**
	If `true`, the body can be detected by rays
	*/
	bool bodyIsRayPickable(in RID _body) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.bodyIsRayPickable, _godot_object, _body);
	}
	/**
	Returns the $(D PhysicsDirectBodyState) of the body.
	*/
	PhysicsDirectBodyState bodyGetDirectState(in RID _body)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsDirectBodyState)(_classBinding.bodyGetDirectState, _godot_object, _body);
	}
	/**
	Creates a $(D PinJoint).
	*/
	RID jointCreatePin(in RID body_A, in Vector3 local_A, in RID body_B, in Vector3 local_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.jointCreatePin, _godot_object, body_A, local_A, body_B, local_B);
	}
	/**
	Sets a pin_joint parameter (see PIN_JOINT* constants).
	*/
	void pinJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pinJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Gets a pin_joint parameter (see PIN_JOINT* constants).
	*/
	double pinJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.pinJointGetParam, _godot_object, joint, param);
	}
	/**
	Sets position of the joint in the local space of body a of the joint.
	*/
	void pinJointSetLocalA(in RID joint, in Vector3 local_A)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pinJointSetLocalA, _godot_object, joint, local_A);
	}
	/**
	Returns position of the joint in the local space of body a of the joint.
	*/
	Vector3 pinJointGetLocalA(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.pinJointGetLocalA, _godot_object, joint);
	}
	/**
	Sets position of the joint in the local space of body b of the joint.
	*/
	void pinJointSetLocalB(in RID joint, in Vector3 local_B)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.pinJointSetLocalB, _godot_object, joint, local_B);
	}
	/**
	Returns position of the joint in the local space of body b of the joint.
	*/
	Vector3 pinJointGetLocalB(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(_classBinding.pinJointGetLocalB, _godot_object, joint);
	}
	/**
	Creates a $(D HingeJoint).
	*/
	RID jointCreateHinge(in RID body_A, in Transform hinge_A, in RID body_B, in Transform hinge_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.jointCreateHinge, _godot_object, body_A, hinge_A, body_B, hinge_B);
	}
	/**
	Sets a hinge_joint parameter (see HINGE_JOINT* constants without the HINGE_JOINT_FLAG*).
	*/
	void hingeJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.hingeJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Gets a hinge_joint parameter (see HINGE_JOINT* constants without the HINGE_JOINT_FLAG*).
	*/
	double hingeJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.hingeJointGetParam, _godot_object, joint, param);
	}
	/**
	Sets a hinge_joint flag (see HINGE_JOINT_FLAG* constants).
	*/
	void hingeJointSetFlag(in RID joint, in long flag, in bool enabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.hingeJointSetFlag, _godot_object, joint, flag, enabled);
	}
	/**
	Gets a hinge_joint flag (see HINGE_JOINT_FLAG* constants).
	*/
	bool hingeJointGetFlag(in RID joint, in long flag) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hingeJointGetFlag, _godot_object, joint, flag);
	}
	/**
	Creates a $(D SliderJoint).
	*/
	RID jointCreateSlider(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.jointCreateSlider, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	Gets a slider_joint parameter (see SLIDER_JOINT* constants).
	*/
	void sliderJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sliderJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Gets a slider_joint parameter (see SLIDER_JOINT* constants).
	*/
	double sliderJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.sliderJointGetParam, _godot_object, joint, param);
	}
	/**
	Creates a $(D ConeTwistJoint).
	*/
	RID jointCreateConeTwist(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.jointCreateConeTwist, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	Sets a cone_twist_joint parameter (see CONE_TWIST_JOINT* constants).
	*/
	void coneTwistJointSetParam(in RID joint, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.coneTwistJointSetParam, _godot_object, joint, param, value);
	}
	/**
	Gets a cone_twist_joint parameter (see CONE_TWIST_JOINT* constants).
	*/
	double coneTwistJointGetParam(in RID joint, in long param) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.coneTwistJointGetParam, _godot_object, joint, param);
	}
	/**
	Returns the type of the Joint.
	*/
	PhysicsServer.JointType jointGetType(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsServer.JointType)(_classBinding.jointGetType, _godot_object, joint);
	}
	/**
	Sets the priority value of the Joint.
	*/
	void jointSetSolverPriority(in RID joint, in long priority)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.jointSetSolverPriority, _godot_object, joint, priority);
	}
	/**
	Gets the priority value of the Joint.
	*/
	long jointGetSolverPriority(in RID joint) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.jointGetSolverPriority, _godot_object, joint);
	}
	/**
	Creates a $(D Generic6DOFJoint).
	*/
	RID jointCreateGeneric6dof(in RID body_A, in Transform local_ref_A, in RID body_B, in Transform local_ref_B)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(RID)(_classBinding.jointCreateGeneric6dof, _godot_object, body_A, local_ref_A, body_B, local_ref_B);
	}
	/**
	Sets a generic_6_DOF_joint parameter (see G6DOF_JOINT* constants without the G6DOF_JOINT_FLAG*).
	*/
	void generic6dofJointSetParam(in RID joint, in long axis, in long param, in double value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.generic6dofJointSetParam, _godot_object, joint, axis, param, value);
	}
	/**
	Gets a generic_6_DOF_joint parameter (see G6DOF_JOINT* constants without the G6DOF_JOINT_FLAG*).
	*/
	double generic6dofJointGetParam(in RID joint, in long axis, in long param)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.generic6dofJointGetParam, _godot_object, joint, axis, param);
	}
	/**
	Sets a generic_6_DOF_joint flag (see G6DOF_JOINT_FLAG* constants).
	*/
	void generic6dofJointSetFlag(in RID joint, in long axis, in long flag, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.generic6dofJointSetFlag, _godot_object, joint, axis, flag, enable);
	}
	/**
	Gets a generic_6_DOF_joint flag (see G6DOF_JOINT_FLAG* constants).
	*/
	bool generic6dofJointGetFlag(in RID joint, in long axis, in long flag)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.generic6dofJointGetFlag, _godot_object, joint, axis, flag);
	}
	/**
	Destroys any of the objects created by PhysicsServer. If the $(D RID) passed is not one of the objects that can be created by PhysicsServer, an error will be sent to the console.
	*/
	void freeRid(in RID rid)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.freeRid, _godot_object, rid);
	}
	/**
	Activates or deactivates the 3D physics engine.
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setActive, _godot_object, active);
	}
	/**
	Returns an Info defined by the $(D PhysicsServer.processinfo) input given.
	*/
	long getProcessInfo(in long process_info)
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getProcessInfo, _godot_object, process_info);
	}
}
/// Returns: the PhysicsServerSingleton
@property @nogc nothrow pragma(inline, true)
PhysicsServerSingleton PhysicsServer()
{
	checkClassBinding!PhysicsServerSingleton();
	return PhysicsServerSingleton(PhysicsServerSingleton._classBinding._singleton);
}
