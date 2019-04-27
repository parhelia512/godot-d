/**
Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.

Copyright:
Copyright (c) 2007-2018 Juan Linietsky, Ariel Manzur.  
Copyright (c) 2014-2018 Godot Engine contributors (cf. AUTHORS.md)  
Copyright (c) 2017-2018 Godot-D contributors  

License: $(LINK2 https://opensource.org/licenses/MIT, MIT License)


*/
module godot.itemlist;
import std.meta : AliasSeq, staticIndexOf;
import std.traits : Unqual;
import godot.d.meta;
import godot.core;
import godot.c;
import godot.d.bind;
import godot.d.reference;
import godot.object;
import godot.classdb;
import godot.control;
import godot.texture;
import godot.vscrollbar;
import godot.inputevent;
import godot.canvasitem;
import godot.node;
/**
Control that provides a list of selectable items (and/or icons) in a single column, or optionally in multiple columns.

This control provides a selectable list of items that may be in a single (or multiple columns) with option of text, icons, or both text and icon. Tooltips are supported and may be different for every item in the list.
Selectable items in the list may be selected or deselected and multiple selection may be enabled. Selection with right mouse button may also be enabled to allow use of popup context menus. Items may also be 'activated' with a double click (or Enter key).
*/
@GodotBaseClass struct ItemList
{
	enum string _GODOT_internal_name = "ItemList";
public:
@nogc nothrow:
	union { godot_object _godot_object; Control _GODOT_base; }
	alias _GODOT_base this;
	alias BaseClasses = AliasSeq!(typeof(_GODOT_base), typeof(_GODOT_base).BaseClasses);
	package(godot) __gshared bool _classBindingInitialized = false;
	package(godot) static struct _classBinding
	{
		__gshared:
		@GodotName("add_item") GodotMethod!(void, String, Texture, bool) addItem;
		@GodotName("add_icon_item") GodotMethod!(void, Texture, bool) addIconItem;
		@GodotName("set_item_text") GodotMethod!(void, long, String) setItemText;
		@GodotName("get_item_text") GodotMethod!(String, long) getItemText;
		@GodotName("set_item_icon") GodotMethod!(void, long, Texture) setItemIcon;
		@GodotName("get_item_icon") GodotMethod!(Texture, long) getItemIcon;
		@GodotName("set_item_icon_transposed") GodotMethod!(void, long, bool) setItemIconTransposed;
		@GodotName("is_item_icon_transposed") GodotMethod!(bool, long) isItemIconTransposed;
		@GodotName("set_item_icon_region") GodotMethod!(void, long, Rect2) setItemIconRegion;
		@GodotName("get_item_icon_region") GodotMethod!(Rect2, long) getItemIconRegion;
		@GodotName("set_item_icon_modulate") GodotMethod!(void, long, Color) setItemIconModulate;
		@GodotName("get_item_icon_modulate") GodotMethod!(Color, long) getItemIconModulate;
		@GodotName("set_item_selectable") GodotMethod!(void, long, bool) setItemSelectable;
		@GodotName("is_item_selectable") GodotMethod!(bool, long) isItemSelectable;
		@GodotName("set_item_disabled") GodotMethod!(void, long, bool) setItemDisabled;
		@GodotName("is_item_disabled") GodotMethod!(bool, long) isItemDisabled;
		@GodotName("set_item_metadata") GodotMethod!(void, long, Variant) setItemMetadata;
		@GodotName("get_item_metadata") GodotMethod!(Variant, long) getItemMetadata;
		@GodotName("set_item_custom_bg_color") GodotMethod!(void, long, Color) setItemCustomBgColor;
		@GodotName("get_item_custom_bg_color") GodotMethod!(Color, long) getItemCustomBgColor;
		@GodotName("set_item_custom_fg_color") GodotMethod!(void, long, Color) setItemCustomFgColor;
		@GodotName("get_item_custom_fg_color") GodotMethod!(Color, long) getItemCustomFgColor;
		@GodotName("set_item_tooltip_enabled") GodotMethod!(void, long, bool) setItemTooltipEnabled;
		@GodotName("is_item_tooltip_enabled") GodotMethod!(bool, long) isItemTooltipEnabled;
		@GodotName("set_item_tooltip") GodotMethod!(void, long, String) setItemTooltip;
		@GodotName("get_item_tooltip") GodotMethod!(String, long) getItemTooltip;
		@GodotName("select") GodotMethod!(void, long, bool) select;
		@GodotName("unselect") GodotMethod!(void, long) unselect;
		@GodotName("unselect_all") GodotMethod!(void) unselectAll;
		@GodotName("is_selected") GodotMethod!(bool, long) isSelected;
		@GodotName("get_selected_items") GodotMethod!(PoolIntArray) getSelectedItems;
		@GodotName("move_item") GodotMethod!(void, long, long) moveItem;
		@GodotName("get_item_count") GodotMethod!(long) getItemCount;
		@GodotName("remove_item") GodotMethod!(void, long) removeItem;
		@GodotName("clear") GodotMethod!(void) clear;
		@GodotName("sort_items_by_text") GodotMethod!(void) sortItemsByText;
		@GodotName("set_fixed_column_width") GodotMethod!(void, long) setFixedColumnWidth;
		@GodotName("get_fixed_column_width") GodotMethod!(long) getFixedColumnWidth;
		@GodotName("set_same_column_width") GodotMethod!(void, bool) setSameColumnWidth;
		@GodotName("is_same_column_width") GodotMethod!(bool) isSameColumnWidth;
		@GodotName("set_max_text_lines") GodotMethod!(void, long) setMaxTextLines;
		@GodotName("get_max_text_lines") GodotMethod!(long) getMaxTextLines;
		@GodotName("set_max_columns") GodotMethod!(void, long) setMaxColumns;
		@GodotName("get_max_columns") GodotMethod!(long) getMaxColumns;
		@GodotName("set_select_mode") GodotMethod!(void, long) setSelectMode;
		@GodotName("get_select_mode") GodotMethod!(ItemList.SelectMode) getSelectMode;
		@GodotName("set_icon_mode") GodotMethod!(void, long) setIconMode;
		@GodotName("get_icon_mode") GodotMethod!(ItemList.IconMode) getIconMode;
		@GodotName("set_fixed_icon_size") GodotMethod!(void, Vector2) setFixedIconSize;
		@GodotName("get_fixed_icon_size") GodotMethod!(Vector2) getFixedIconSize;
		@GodotName("set_icon_scale") GodotMethod!(void, double) setIconScale;
		@GodotName("get_icon_scale") GodotMethod!(double) getIconScale;
		@GodotName("set_allow_rmb_select") GodotMethod!(void, bool) setAllowRmbSelect;
		@GodotName("get_allow_rmb_select") GodotMethod!(bool) getAllowRmbSelect;
		@GodotName("set_allow_reselect") GodotMethod!(void, bool) setAllowReselect;
		@GodotName("get_allow_reselect") GodotMethod!(bool) getAllowReselect;
		@GodotName("set_auto_height") GodotMethod!(void, bool) setAutoHeight;
		@GodotName("has_auto_height") GodotMethod!(bool) hasAutoHeight;
		@GodotName("is_anything_selected") GodotMethod!(bool) isAnythingSelected;
		@GodotName("get_item_at_position") GodotMethod!(long, Vector2, bool) getItemAtPosition;
		@GodotName("ensure_current_is_visible") GodotMethod!(void) ensureCurrentIsVisible;
		@GodotName("get_v_scroll") GodotMethod!(VScrollBar) getVScroll;
		@GodotName("_scroll_changed") GodotMethod!(void, double) _scrollChanged;
		@GodotName("_gui_input") GodotMethod!(void, InputEvent) _guiInput;
		@GodotName("_set_items") GodotMethod!(void, Array) _setItems;
		@GodotName("_get_items") GodotMethod!(Array) _getItems;
	}
	bool opEquals(in ItemList other) const { return _godot_object.ptr is other._godot_object.ptr; }
	ItemList opAssign(T : typeof(null))(T n) { _godot_object.ptr = null; }
	bool opEquals(typeof(null) n) const { return _godot_object.ptr is null; }
	mixin baseCasts;
	static ItemList _new()
	{
		static godot_class_constructor constructor;
		if(constructor is null) constructor = _godot_api.godot_get_class_constructor("ItemList");
		if(constructor is null) return typeof(this).init;
		return cast(ItemList)(constructor());
	}
	@disable new(size_t s);
	/// 
	enum SelectMode : int
	{
		/**
		
		*/
		selectSingle = 0,
		/**
		
		*/
		selectMulti = 1,
	}
	/// 
	enum IconMode : int
	{
		/**
		
		*/
		iconModeTop = 0,
		/**
		
		*/
		iconModeLeft = 1,
	}
	/// 
	enum Constants : int
	{
		selectSingle = 0,
		iconModeTop = 0,
		iconModeLeft = 1,
		selectMulti = 1,
	}
	/**
	Adds an item to the item list with specified text. Specify an icon of null for a list item with no icon.
	If selectable is `true` the list item will be selectable.
	*/
	void addItem(in String text, Texture icon = Texture.init, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addItem, _godot_object, text, icon, selectable);
	}
	/**
	Adds an item to the item list with no text, only an icon.
	*/
	void addIconItem(Texture icon, in bool selectable = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.addIconItem, _godot_object, icon, selectable);
	}
	/**
	Sets text of item at specified index.
	*/
	void setItemText(in long idx, in String text)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemText, _godot_object, idx, text);
	}
	/**
	Return the text for specified item index.
	*/
	String getItemText(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemText, _godot_object, idx);
	}
	/**
	Set (or replace) icon of the item at the specified index.
	*/
	void setItemIcon(in long idx, Texture icon)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIcon, _godot_object, idx, icon);
	}
	/**
	
	*/
	Ref!Texture getItemIcon(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Texture)(_classBinding.getItemIcon, _godot_object, idx);
	}
	/**
	
	*/
	void setItemIconTransposed(in long idx, in bool rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIconTransposed, _godot_object, idx, rect);
	}
	/**
	
	*/
	bool isItemIconTransposed(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemIconTransposed, _godot_object, idx);
	}
	/**
	
	*/
	void setItemIconRegion(in long idx, in Rect2 rect)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIconRegion, _godot_object, idx, rect);
	}
	/**
	
	*/
	Rect2 getItemIconRegion(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Rect2)(_classBinding.getItemIconRegion, _godot_object, idx);
	}
	/**
	Sets a modulating $(D Color) for item's icon at the specified index.
	*/
	void setItemIconModulate(in long idx, in Color modulate)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemIconModulate, _godot_object, idx, modulate);
	}
	/**
	Returns a $(D Color) modulating item's icon at the specified index.
	*/
	Color getItemIconModulate(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getItemIconModulate, _godot_object, idx);
	}
	/**
	Allow or disallow selection of the item at the specified index.
	*/
	void setItemSelectable(in long idx, in bool selectable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemSelectable, _godot_object, idx, selectable);
	}
	/**
	Returns whether or not the item at the specified index is selectable.
	*/
	bool isItemSelectable(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemSelectable, _godot_object, idx);
	}
	/**
	Disable (or enable) item at specified index.
	Disabled items are not be selectable and do not fire activation (Enter or double-click) signals.
	*/
	void setItemDisabled(in long idx, in bool disabled)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemDisabled, _godot_object, idx, disabled);
	}
	/**
	Returns whether or not the item at the specified index is disabled
	*/
	bool isItemDisabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemDisabled, _godot_object, idx);
	}
	/**
	Sets a value (of any type) to be stored with the item at the specified index.
	*/
	void setItemMetadata(VariantArg1)(in long idx, in VariantArg1 metadata)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemMetadata, _godot_object, idx, metadata);
	}
	/**
	
	*/
	Variant getItemMetadata(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Variant)(_classBinding.getItemMetadata, _godot_object, idx);
	}
	/**
	
	*/
	void setItemCustomBgColor(in long idx, in Color custom_bg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemCustomBgColor, _godot_object, idx, custom_bg_color);
	}
	/**
	
	*/
	Color getItemCustomBgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getItemCustomBgColor, _godot_object, idx);
	}
	/**
	
	*/
	void setItemCustomFgColor(in long idx, in Color custom_fg_color)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemCustomFgColor, _godot_object, idx, custom_fg_color);
	}
	/**
	
	*/
	Color getItemCustomFgColor(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Color)(_classBinding.getItemCustomFgColor, _godot_object, idx);
	}
	/**
	Sets whether the tooltip is enabled for specified item index.
	*/
	void setItemTooltipEnabled(in long idx, in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemTooltipEnabled, _godot_object, idx, enable);
	}
	/**
	Returns whether the tooltip is enabled for specified item index.
	*/
	bool isItemTooltipEnabled(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isItemTooltipEnabled, _godot_object, idx);
	}
	/**
	Sets tooltip hint for item at specified index.
	*/
	void setItemTooltip(in long idx, in String tooltip)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setItemTooltip, _godot_object, idx, tooltip);
	}
	/**
	Return tooltip hint for specified item index.
	*/
	String getItemTooltip(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(String)(_classBinding.getItemTooltip, _godot_object, idx);
	}
	/**
	Select the item at the specified index.
	Note: This method does not trigger the item selection signal.
	*/
	void select(in long idx, in bool single = true)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.select, _godot_object, idx, single);
	}
	/**
	Ensure item at specified index is not selected.
	*/
	void unselect(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unselect, _godot_object, idx);
	}
	/**
	Ensure there are no items selected.
	*/
	void unselectAll()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.unselectAll, _godot_object);
	}
	/**
	Returns whether or not item at the specified index is currently selected.
	*/
	bool isSelected(in long idx) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSelected, _godot_object, idx);
	}
	/**
	Returns the list of selected indexes.
	*/
	PoolIntArray getSelectedItems()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(PoolIntArray)(_classBinding.getSelectedItems, _godot_object);
	}
	/**
	Moves item at index `from_idx` to `to_idx`.
	*/
	void moveItem(in long from_idx, in long to_idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.moveItem, _godot_object, from_idx, to_idx);
	}
	/**
	Return count of items currently in the item list.
	*/
	long getItemCount() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemCount, _godot_object);
	}
	/**
	Remove item at specified index from the list.
	*/
	void removeItem(in long idx)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.removeItem, _godot_object, idx);
	}
	/**
	Remove all items from the list.
	*/
	void clear()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.clear, _godot_object);
	}
	/**
	Sorts items in the list by their text.
	*/
	void sortItemsByText()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.sortItemsByText, _godot_object);
	}
	/**
	
	*/
	void setFixedColumnWidth(in long width)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFixedColumnWidth, _godot_object, width);
	}
	/**
	
	*/
	long getFixedColumnWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getFixedColumnWidth, _godot_object);
	}
	/**
	
	*/
	void setSameColumnWidth(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSameColumnWidth, _godot_object, enable);
	}
	/**
	
	*/
	bool isSameColumnWidth() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isSameColumnWidth, _godot_object);
	}
	/**
	
	*/
	void setMaxTextLines(in long lines)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxTextLines, _godot_object, lines);
	}
	/**
	
	*/
	long getMaxTextLines() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxTextLines, _godot_object);
	}
	/**
	
	*/
	void setMaxColumns(in long amount)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setMaxColumns, _godot_object, amount);
	}
	/**
	
	*/
	long getMaxColumns() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getMaxColumns, _godot_object);
	}
	/**
	
	*/
	void setSelectMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setSelectMode, _godot_object, mode);
	}
	/**
	
	*/
	ItemList.SelectMode getSelectMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ItemList.SelectMode)(_classBinding.getSelectMode, _godot_object);
	}
	/**
	
	*/
	void setIconMode(in long mode)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIconMode, _godot_object, mode);
	}
	/**
	
	*/
	ItemList.IconMode getIconMode() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(ItemList.IconMode)(_classBinding.getIconMode, _godot_object);
	}
	/**
	
	*/
	void setFixedIconSize(in Vector2 size)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setFixedIconSize, _godot_object, size);
	}
	/**
	
	*/
	Vector2 getFixedIconSize() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(Vector2)(_classBinding.getFixedIconSize, _godot_object);
	}
	/**
	
	*/
	void setIconScale(in double scale)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setIconScale, _godot_object, scale);
	}
	/**
	
	*/
	double getIconScale() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(double)(_classBinding.getIconScale, _godot_object);
	}
	/**
	
	*/
	void setAllowRmbSelect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowRmbSelect, _godot_object, allow);
	}
	/**
	
	*/
	bool getAllowRmbSelect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAllowRmbSelect, _godot_object);
	}
	/**
	
	*/
	void setAllowReselect(in bool allow)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAllowReselect, _godot_object, allow);
	}
	/**
	
	*/
	bool getAllowReselect() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.getAllowReselect, _godot_object);
	}
	/**
	
	*/
	void setAutoHeight(in bool enable)
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.setAutoHeight, _godot_object, enable);
	}
	/**
	
	*/
	bool hasAutoHeight() const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.hasAutoHeight, _godot_object);
	}
	/**
	Returns `true` if one or more items are selected.
	*/
	bool isAnythingSelected()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(bool)(_classBinding.isAnythingSelected, _godot_object);
	}
	/**
	Given a position within the control return the item (if any) at that point.
	*/
	long getItemAtPosition(in Vector2 position, in bool exact = false) const
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(long)(_classBinding.getItemAtPosition, _godot_object, position, exact);
	}
	/**
	Ensure selection is visible, adjusting the scroll position as necessary.
	*/
	void ensureCurrentIsVisible()
	{
		checkClassBinding!(typeof(this))();
		ptrcall!(void)(_classBinding.ensureCurrentIsVisible, _godot_object);
	}
	/**
	Returns the current vertical scroll bar for the List.
	*/
	VScrollBar getVScroll()
	{
		checkClassBinding!(typeof(this))();
		return ptrcall!(VScrollBar)(_classBinding.getVScroll, _godot_object);
	}
	/**
	
	*/
	void _scrollChanged(in double arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_scroll_changed");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _guiInput(InputEvent arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_gui_input");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	void _setItems(in Array arg0)
	{
		Array _GODOT_args = Array.empty_array;
		_GODOT_args.append(arg0);
		String _GODOT_method_name = String("_set_items");
		this.callv(_GODOT_method_name, _GODOT_args);
	}
	/**
	
	*/
	Array _getItems() const
	{
		Array _GODOT_args = Array.empty_array;
		String _GODOT_method_name = String("_get_items");
		return this.callv(_GODOT_method_name, _GODOT_args).as!(RefOrT!Array);
	}
	/**
	
	*/
	@property Array items()
	{
		return _getItems();
	}
	/// ditto
	@property void items(Array v)
	{
		_setItems(v);
	}
	/**
	Allow single or multiple selection. See the `SELECT_*` constants.
	*/
	@property ItemList.SelectMode selectMode()
	{
		return getSelectMode();
	}
	/// ditto
	@property void selectMode(long v)
	{
		setSelectMode(v);
	}
	/**
	If `true`, the currently selected item may be selected again.
	*/
	@property bool allowReselect()
	{
		return getAllowReselect();
	}
	/// ditto
	@property void allowReselect(bool v)
	{
		setAllowReselect(v);
	}
	/**
	If `true`, a right mouse button click can select items.
	*/
	@property bool allowRmbSelect()
	{
		return getAllowRmbSelect();
	}
	/// ditto
	@property void allowRmbSelect(bool v)
	{
		setAllowRmbSelect(v);
	}
	/**
	
	*/
	@property long maxTextLines()
	{
		return getMaxTextLines();
	}
	/// ditto
	@property void maxTextLines(long v)
	{
		setMaxTextLines(v);
	}
	/**
	
	*/
	@property bool autoHeight()
	{
		return hasAutoHeight();
	}
	/// ditto
	@property void autoHeight(bool v)
	{
		setAutoHeight(v);
	}
	/**
	
	*/
	@property long maxColumns()
	{
		return getMaxColumns();
	}
	/// ditto
	@property void maxColumns(long v)
	{
		setMaxColumns(v);
	}
	/**
	
	*/
	@property bool sameColumnWidth()
	{
		return isSameColumnWidth();
	}
	/// ditto
	@property void sameColumnWidth(bool v)
	{
		setSameColumnWidth(v);
	}
	/**
	
	*/
	@property long fixedColumnWidth()
	{
		return getFixedColumnWidth();
	}
	/// ditto
	@property void fixedColumnWidth(long v)
	{
		setFixedColumnWidth(v);
	}
	/**
	
	*/
	@property ItemList.IconMode iconMode()
	{
		return getIconMode();
	}
	/// ditto
	@property void iconMode(long v)
	{
		setIconMode(v);
	}
	/**
	
	*/
	@property double iconScale()
	{
		return getIconScale();
	}
	/// ditto
	@property void iconScale(double v)
	{
		setIconScale(v);
	}
	/**
	
	*/
	@property Vector2 fixedIconSize()
	{
		return getFixedIconSize();
	}
	/// ditto
	@property void fixedIconSize(Vector2 v)
	{
		setFixedIconSize(v);
	}
}
