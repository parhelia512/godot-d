/**
Internationalized font and text drawing support.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.font;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.resource;
/**
Internationalized font and text drawing support.

Font contains a Unicode-compatible character set, as well as the ability to draw it with variable width, ascent, descent and kerning. For creating fonts from TTF files (or other font formats), see the editor support for fonts.
*/
@GodotBaseClass struct Font
{
	package(godot) enum string _GODOT_internal_name = "Font";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ Resource _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		@GodotName("draw") GodotMethod!(void, RID, Vector2, String, Color, long, Color) draw;
		@GodotName("draw_char") GodotMethod!(double, RID, Vector2, long, long, Color, bool) drawChar;
		@GodotName("get_ascent") GodotMethod!(double) getAscent;
		@GodotName("get_descent") GodotMethod!(double) getDescent;
		@GodotName("get_height") GodotMethod!(double) getHeight;
		@GodotName("get_string_size") GodotMethod!(Vector2, String) getStringSize;
		@GodotName("get_wordwrap_string_size") GodotMethod!(Vector2, String, double) getWordwrapStringSize;
		@GodotName("has_outline") GodotMethod!(bool) hasOutline;
		@GodotName("is_distance_field_hint") GodotMethod!(bool) isDistanceFieldHint;
		@GodotName("update_changes") GodotMethod!(void) updateChanges;
	}
	/// 
	pragma(inline, true) bool opEquals(in Font other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) Font opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of Font.
	/// Note: use `memnew!Font` instead.
	static Font _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("Font");
		if(constructor is null) return typeof(this).init;
		return cast(Font)(constructor());
	}
	@disable new(size_t s);
	/**
	Draw `string` into a canvas item using the font at a given position, with `modulate` color, and optionally clipping the width. `position` specifies the baseline, not the top. To draw from the top, $(I ascent) must be added to the Y axis.
	*/
	void draw(in RID canvas_item, in Vector2 position, in String string, in Color modulate = Color(1,1,1,1), in long clip_w = -1, in Color outline_modulate = Color(1,1,1,1)) const
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.draw, _godot_object, canvas_item, position, string, modulate, clip_w, outline_modulate);
	}
	/**
	Draw character `char` into a canvas item using the font at a given position, with `modulate` color, and optionally kerning if `next` is passed. clipping the width. `position` specifies the baseline, not the top. To draw from the top, $(I ascent) must be added to the Y axis. The width used by the character is returned, making this function useful for drawing strings character by character.
	*/
	double drawChar(in RID canvas_item, in Vector2 position, in long _char, in long next = -1, in Color modulate = Color(1,1,1,1), in bool outline = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.drawChar, _godot_object, canvas_item, position, _char, next, modulate, outline);
	}
	/**
	Returns the font ascent (number of pixels above the baseline).
	*/
	double getAscent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getAscent, _godot_object);
	}
	/**
	Returns the font descent (number of pixels below the baseline).
	*/
	double getDescent() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getDescent, _godot_object);
	}
	/**
	Returns the total font height (ascent plus descent) in pixels.
	*/
	double getHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(GDNativeClassBinding.getHeight, _godot_object);
	}
	/**
	Returns the size of a string, taking kerning and advance into account.
	*/
	Vector2 getStringSize(in String string) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getStringSize, _godot_object, string);
	}
	/**
	Returns the size that the string would have with word wrapping enabled with a fixed `width`.
	*/
	Vector2 getWordwrapStringSize(in String string, in double width) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(GDNativeClassBinding.getWordwrapStringSize, _godot_object, string, width);
	}
	/**
	Returns `true` if the font has an outline.
	*/
	bool hasOutline() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.hasOutline, _godot_object);
	}
	/**
	
	*/
	bool isDistanceFieldHint() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(GDNativeClassBinding.isDistanceFieldHint, _godot_object);
	}
	/**
	After editing a font (changing size, ascent, char rects, etc.). Call this function to propagate changes to controls that might use it.
	*/
	void updateChanges()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.updateChanges, _godot_object);
	}
}
