/**
Server that manages all translations.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.translationserver;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.translation;
/**
Server that manages all translations.

Translations can be set to it and removed from it.
*/
@GodotBaseClass struct TranslationServerSingleton
{
	package(godot) enum string _GODOT_internal_name = "TranslationServer";
public:
@nogc nothrow:
	union { /** */ godot_object _godot_object; /** */ GodotObject _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct GDNativeClassBinding
	{
		__gshared:
		godot_object _singleton;
		immutable char* _singletonName = "TranslationServer";
		@GodotName("add_translation") GodotMethod!(void, Translation) addTranslation;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("get_loaded_locales") GodotMethod!(Array) getLoadedLocales;
		@GodotName("get_locale") GodotMethod!(String) getLocale;
		@GodotName("get_locale_name") GodotMethod!(String, String) getLocaleName;
		@GodotName("remove_translation") GodotMethod!(void, Translation) removeTranslation;
		@GodotName("set_locale") GodotMethod!(void, String) setLocale;
		@GodotName("translate") GodotMethod!(String, String) translate;
	}
	/// 
	pragma(inline, true) bool opEquals(in TranslationServerSingleton other) const
	{ return _godot_object.ptr is other._godot_object.ptr; }
	/// 
	pragma(inline, true) TranslationServerSingleton opAssign(T : typeof(null))(T n)
	{ _godot_object.ptr = n; }
	/// 
	pragma(inline, true) bool opEquals(typeof(null) n) const
	{ return _godot_object.ptr is n; }
	/// 
	size_t toHash() @trusted { return cast(size_t)_godot_object.ptr; }
	mixin baseCasts;
	/// Construct a new instance of TranslationServerSingleton.
	/// Note: use `memnew!TranslationServerSingleton` instead.
	static TranslationServerSingleton _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("TranslationServer");
		if(constructor is null) return typeof(this).init;
		return cast(TranslationServerSingleton)(constructor());
	}
	@disable new(size_t s);
	/**
	Adds a $(D Translation) resource.
	*/
	void addTranslation(Translation translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.addTranslation, _godot_object, translation);
	}
	/**
	Clears the server from all translations.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.clear, _godot_object);
	}
	/**
	Returns an Array of all loaded locales of the game.
	*/
	Array getLoadedLocales() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Array)(GDNativeClassBinding.getLoadedLocales, _godot_object);
	}
	/**
	Returns the current locale of the game.
	*/
	String getLocale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocale, _godot_object);
	}
	/**
	Returns a locale's language and its variant (e.g. `"en_US"` would return `"English (United States)"`).
	*/
	String getLocaleName(in String locale) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.getLocaleName, _godot_object, locale);
	}
	/**
	Removes the given translation from the server.
	*/
	void removeTranslation(Translation translation)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.removeTranslation, _godot_object, translation);
	}
	/**
	Sets the locale of the game.
	*/
	void setLocale(in String locale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(GDNativeClassBinding.setLocale, _godot_object, locale);
	}
	/**
	Returns the current locale's translation for the given message (key).
	*/
	String translate(in String message) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(GDNativeClassBinding.translate, _godot_object, message);
	}
}
/// Returns: the TranslationServerSingleton
@property @nogc nothrow pragma(inline, true)
TranslationServerSingleton TranslationServer()
{
	checkClassBinding!TranslationServerSingleton();
	return TranslationServerSingleton(TranslationServerSingleton.GDNativeClassBinding._singleton);
}
