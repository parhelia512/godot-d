/**
A camera feed gives you access to a single physical camera attached to your device.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.camerafeed;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.reference;
import godot.image;
/**
A camera feed gives you access to a single physical camera attached to your device.

When enabled, Godot will start capturing frames from the camera which can then be used.
$(B Note:) Many cameras will return YCbCr images which are split into two textures and need to be combined in a shader. Godot does this automatically for you if you set the environment to show the camera image in the background.
*/
@GodotBaseClass struct CameraFeed
{
	package(godot) enum string _GODOT_internal_name = "CameraFeed";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Reference _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("_allocate_texture") GodotMethod!(void, long, long, long, long, long) _allocateTexture;
		@GodotName("_set_RGB_img") GodotMethod!(void, Image) _setRgbImg;
		@GodotName("_set_YCbCr_img") GodotMethod!(void, Image) _setYcbcrImg;
		@GodotName("_set_YCbCr_imgs") GodotMethod!(void, Image, Image) _setYcbcrImgs;
		@GodotName("_set_name") GodotMethod!(void, String) _setName;
		@GodotName("_set_position") GodotMethod!(void, long) _setPosition;
		@GodotName("get_id") GodotMethod!(long) getId;
		@GodotName("get_name") GodotMethod!(String) getName;
		@GodotName("get_position") GodotMethod!(CameraFeed.FeedPosition) getPosition;
		@GodotName("get_transform") GodotMethod!(Transform2D) getTransform;
		@GodotName("is_active") GodotMethod!(bool) isActive;
		@GodotName("set_active") GodotMethod!(void, bool) setActive;
		@GodotName("set_transform") GodotMethod!(void, Transform2D) setTransform;
	}
	/// 
	pragma(inline, true) bool opEquals(in CameraFeed other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) CameraFeed opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of CameraFeed.
	/// Note: use `memnew!CameraFeed` instead.
	static CameraFeed _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("CameraFeed");
		if(constructor is null) return typeof(this).init;
		return cast(CameraFeed)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum FeedDataType : int
	{
		/**
		No image set for the feed.
		*/
		feedNoimage = 0,
		/**
		Feed supplies RGB images.
		*/
		feedRgb = 1,
		/**
		Feed supplies YCbCr images that need to be converted to RGB.
		*/
		feedYcbcr = 2,
		/**
		Feed supplies separate Y and CbCr images that need to be combined and converted to RGB.
		*/
		feedYcbcrSep = 3,
	}
	/// 
	enum FeedPosition : int
	{
		/**
		Unspecified position.
		*/
		feedUnspecified = 0,
		/**
		Camera is mounted at the front of the device.
		*/
		feedFront = 1,
		/**
		Camera is mounted at the back of the device.
		*/
		feedBack = 2,
	}
	/// 
	enum Constants : int
	{
		feedNoimage = 0,
		feedUnspecified = 0,
		feedFront = 1,
		feedRgb = 1,
		feedYcbcr = 2,
		feedBack = 2,
		feedYcbcrSep = 3,
	}
	/**
	
	*/
	void _allocateTexture(in long width, in long height, in long format, in long texture_type, in long data_type)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(width);
		_GODOT_args.append(height);
		_GODOT_args.append(format);
		_GODOT_args.append(texture_type);
		_GODOT_args.append(data_type);
		String _GODOT_method_name = String("_allocate_texture");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setRgbImg(Image rgb_img)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(rgb_img);
		String _GODOT_method_name = String("_set_RGB_img");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setYcbcrImg(Image ycbcr_img)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(ycbcr_img);
		String _GODOT_method_name = String("_set_YCbCr_img");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setYcbcrImgs(Image y_img, Image cbcr_img)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(y_img);
		_GODOT_args.append(cbcr_img);
		String _GODOT_method_name = String("_set_YCbCr_imgs");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setName(in String name)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(name);
		String _GODOT_method_name = String("_set_name");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setPosition(in long position)
	{
		Array _GODOT_args = Array.make();
		_GODOT_args.append(position);
		String _GODOT_method_name = String("_set_position");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	Returns the unique ID for this feed.
	*/
	long getId() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(GDNativeClassBinding.getId, _godot_object);
	}
	/**
	Returns the camera's name.
	*/
	String getName() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getName, _godot_object);
	}
	/**
	Returns the position of camera on the device.
	*/
	CameraFeed.FeedPosition getPosition() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(CameraFeed.FeedPosition)(GDNativeClassBinding.getPosition, _godot_object);
	}
	/**
	
	*/
	Transform2D getTransform() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Transform2D)(GDNativeClassBinding.getTransform, _godot_object);
	}
	/**
	
	*/
	bool isActive() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isActive, _godot_object);
	}
	/**
	
	*/
	void setActive(in bool active)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setActive, _godot_object, active);
	}
	/**
	
	*/
	void setTransform(in Transform2D transform)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setTransform, _godot_object, transform);
	}
	/**
	If `true`, the feed is active.
	*/
	@property bool feedIsActive()
	{
		return isActive();
	}
	/// ditto
	@property void feedIsActive(bool v)
	{
		setActive(v);
	}
	/**
	The transform applied to the camera's image.
	*/
	@property Transform2D feedTransform()
	{
		return getTransform();
	}
	/// ditto
	@property void feedTransform(Transform2D v)
	{
		setTransform(v);
	}
}
