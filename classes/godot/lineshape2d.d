/**
Line shape for 2D collisions.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.lineshape2d;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.shape2d;
/**
Line shape for 2D collisions.

It works like a 2D plane and will not allow any physics body to go to the negative side. Not recommended for rigid bodies, and usually not recommended for static bodies either because it forces checks against it on every frame.
*/
@GodotBaseClass struct LineShape2D
{
	package(godot) enum string _GODOT_internal_name = "LineShape2D";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Shape2D _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("get_d") GodotMethod!(double) getD;
		@GodotName("get_normal") GodotMethod!(Vector2) getNormal;
		@GodotName("set_d") GodotMethod!(void, double) setD;
		@GodotName("set_normal") GodotMethod!(void, Vector2) setNormal;
	}
	/// 
	pragma(inline, true) bool opEquals(in LineShape2D other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) LineShape2D opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of LineShape2D.
	/// Note: use `memnew!LineShape2D` instead.
	static LineShape2D _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("LineShape2D");
		if(constructor is null) return typeof(this).init;
		return cast(LineShape2D)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	double getD() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getD, _godot_object);
	}
	/**
	
	*/
	Vector2 getNormal() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getNormal, _godot_object);
	}
	/**
	
	*/
	void setD(in double d)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setD, _godot_object, d);
	}
	/**
	
	*/
	void setNormal(in Vector2 normal)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setNormal, _godot_object, normal);
	}
	/**
	The line's distance from the origin.
	*/
	@property double d()
	{
		return getD();
	}
	/// ditto
	@property void d(double v)
	{
		setD(v);
	}
	/**
	The line's normal.
	*/
	@property Vector2 normal()
	{
		return getNormal();
	}
	/// ditto
	@property void normal(Vector2 v)
	{
		setNormal(v);
	}
}
