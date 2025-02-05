/**


Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.staticbody;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.traits;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.globalenums;
import godot.object;
import godot.classdb;
import godot.physicsbody;
import godot.collisionobject;
import godot.spatial;
import godot.node;
import godot.physicsmaterial;
/**

*/
@GodotBaseClass struct StaticBody
{
	package(godot) enum string _GODOT_internal_name = "StaticBody";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ PhysicsBody _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_reload_physics_characteristics") GodotMethod!(void) _reloadPhysicsCharacteristics;
		@GodotName("get_bounce") GodotMethod!(double) getBounce;
		@GodotName("get_constant_angular_velocity") GodotMethod!(Vector3) getConstantAngularVelocity;
		@GodotName("get_constant_linear_velocity") GodotMethod!(Vector3) getConstantLinearVelocity;
		@GodotName("get_friction") GodotMethod!(double) getFriction;
		@GodotName("get_physics_material_override") GodotMethod!(PhysicsMaterial) getPhysicsMaterialOverride;
		@GodotName("set_bounce") GodotMethod!(void, double) setBounce;
		@GodotName("set_constant_angular_velocity") GodotMethod!(void, Vector3) setConstantAngularVelocity;
		@GodotName("set_constant_linear_velocity") GodotMethod!(void, Vector3) setConstantLinearVelocity;
		@GodotName("set_friction") GodotMethod!(void, double) setFriction;
		@GodotName("set_physics_material_override") GodotMethod!(void, PhysicsMaterial) setPhysicsMaterialOverride;
	}
	/// 
	pragma(inline, true) bool opEquals(in StaticBody other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) typeof(null) opAssign(typeof(null) n)
	{ _godot_object.ptr = n; return null; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() const @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of StaticBody.
	/// Note: use `memnew!StaticBody` instead.
	static StaticBody _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("StaticBody");
		if(constructor is null) return typeof(this).init;
		return cast(StaticBody)(constructor());
	}
	/**
	
	*/
	void _reloadPhysicsCharacteristics()
	{
		Array _GODOT_args = Array.make();
		String _GODOT_method_name = String("_reload_physics_characteristics");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	double getBounce() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getBounce, _godot_object);
	}
	/**
	
	*/
	Vector3 getConstantAngularVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getConstantAngularVelocity, _godot_object);
	}
	/**
	
	*/
	Vector3 getConstantLinearVelocity() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getConstantLinearVelocity, _godot_object);
	}
	/**
	
	*/
	double getFriction() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getFriction, _godot_object);
	}
	/**
	
	*/
	Ref!PhysicsMaterial getPhysicsMaterialOverride() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PhysicsMaterial)(GDNativeClassBinding.getPhysicsMaterialOverride, _godot_object);
	}
	/**
	
	*/
	void setBounce(in double bounce)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setBounce, _godot_object, bounce);
	}
	/**
	
	*/
	void setConstantAngularVelocity(in Vector3 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstantAngularVelocity, _godot_object, vel);
	}
	/**
	
	*/
	void setConstantLinearVelocity(in Vector3 vel)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstantLinearVelocity, _godot_object, vel);
	}
	/**
	
	*/
	void setFriction(in double friction)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setFriction, _godot_object, friction);
	}
	/**
	
	*/
	void setPhysicsMaterialOverride(PhysicsMaterial physics_material_override)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setPhysicsMaterialOverride, _godot_object, physics_material_override);
	}
	/**
	
	*/
	@property double bounce()
	{
		return getBounce();
	}
	/// ditto
	@property void bounce(double v)
	{
		setBounce(v);
	}
	/**
	
	*/
	@property Vector3 constantAngularVelocity()
	{
		return getConstantAngularVelocity();
	}
	/// ditto
	@property void constantAngularVelocity(Vector3 v)
	{
		setConstantAngularVelocity(v);
	}
	/**
	
	*/
	@property Vector3 constantLinearVelocity()
	{
		return getConstantLinearVelocity();
	}
	/// ditto
	@property void constantLinearVelocity(Vector3 v)
	{
		setConstantLinearVelocity(v);
	}
	/**
	
	*/
	@property double friction()
	{
		return getFriction();
	}
	/// ditto
	@property void friction(double v)
	{
		setFriction(v);
	}
	/**
	
	*/
	@property PhysicsMaterial physicsMaterialOverride()
	{
		return getPhysicsMaterialOverride();
	}
	/// ditto
	@property void physicsMaterialOverride(PhysicsMaterial v)
	{
		setPhysicsMaterialOverride(v);
	}
}
