/**
Input event type for gamepad joysticks and other motions. For buttons see `InputEventJoypadButton`.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.inputeventjoypadmotion;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.inputevent;
import godot.resource;
import godot.reference;
/**
Input event type for gamepad joysticks and other motions. For buttons see `InputEventJoypadButton`.

Stores information about joystick motions. One $(D InputEventJoypadMotion) represents one axis at a time.
*/
@GodotBaseClass struct InputEventJoypadMotion
{
	enum string _GODOT_internal_name = "InputEventJoypadMotion";
public:
@nogc nothrow:
	union { godot_object _godot_object; InputEvent _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("set_axis") GodotMethod!(void, long) setAxis;
		@GodotName("get_axis") GodotMethod!(long) getAxis;
		@GodotName("set_axis_value") GodotMethod!(void, double) setAxisValue;
		@GodotName("get_axis_value") GodotMethod!(double) getAxisValue;
	}
	bool opEquals(in InputEventJoypadMotion other) const { return _godot_object.ptr is other._godot_object.ptr; }
	InputEventJoypadMotion opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static InputEventJoypadMotion _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("InputEventJoypadMotion");
		if(constructor is null) return typeof(this).init;
		return cast(InputEventJoypadMotion)(constructor());
	}
	@disable new(size_t s);
	/**
	
	*/
	void setAxis(in long axis)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxis, _godot_object, axis);
	}
	/**
	
	*/
	long getAxis() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getAxis, _godot_object);
	}
	/**
	
	*/
	void setAxisValue(in double axis_value)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAxisValue, _godot_object, axis_value);
	}
	/**
	
	*/
	double getAxisValue() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getAxisValue, _godot_object);
	}
	/**
	Axis identifier. Use one of the $(D joysticklist) axis constants.
	*/
	@property long axis()
	{
		return getAxis();
	}
	/// ditto
	@property void axis(long v)
	{
		setAxis(v);
	}
	/**
	Current position of the joystick on the given axis. The value ranges from `-1.0` to `1.0`. A value of `0` means the axis is in its resting position.
	*/
	@property double axisValue()
	{
		return getAxisValue();
	}
	/// ditto
	@property void axisValue(double v)
	{
		setAxisValue(v);
	}
}
