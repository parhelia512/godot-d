/**
A $(D Vector3) constant to be used within the visual shader graph.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.visualshadernodevec3constant;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.visualshadernode;
import godot.resource;
import godot.reference;
/**
A $(D Vector3) constant to be used within the visual shader graph.

A constant $(D Vector3), which can be used as an input node.
*/
@GodotBaseClass struct VisualShaderNodeVec3Constant
{
	package(godot) enum string _GODOT_internal_name = "VisualShaderNodeVec3Constant";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ VisualShaderNode _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_constant") GodotMethod!(Vector3) getConstant;
		@GodotName("set_constant") GodotMethod!(void, Vector3) setConstant;
	}
	/// 
	pragma(inline, true) bool opEquals(in VisualShaderNodeVec3Constant other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) VisualShaderNodeVec3Constant opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of VisualShaderNodeVec3Constant.
	/// Note: use `memnew!VisualShaderNodeVec3Constant` instead.
	static VisualShaderNodeVec3Constant _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("VisualShaderNodeVec3Constant");
		if(constructor is null) return typeof(this).init;
		return cast(VisualShaderNodeVec3Constant)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	Vector3 getConstant() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector3)(GDNativeClassBinding.getConstant, _godot_object);
	}
	/**
	
	*/
	void setConstant(in Vector3 value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setConstant, _godot_object, value);
	}
	/**
	A $(D Vector3) constant which represents the state of this node.
	*/
	@property Vector3 constant()
	{
		return getConstant();
	}
	/// ditto
	@property void constant(Vector3 v)
	{
		setConstant(v);
	}
}
