// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PurchaseItem(_item,_amount,_cost){
	if (global.playerMoney >= _cost)
	{
		global.playerHasAnyItems = true;
		global.playerItemUnlocked[_item] = true;
		global.playerAmmo[_item] += _amount;
		global.playerMoney -= _cost;
		global.playerEquipped = _item;
		instance_destroy(activate);
		
		var _desc = "";
		switch (_item)
		{
			case ITEM.BOMB: _desc = "Bombs!\nLight the fuse with the item key (Left Control)\nthen use the activate key (Space) to throw it!\nBlow apart enemies, pots and certain large boulders!"; break;
			case ITEM.BOW: _desc = "The bow!\nFire with the item key (Left Control) to damage enemies,\nfind arrows in the world!"; break;
			case ITEM.HOOK: _desc = "The grappling hook!\nUse the item key (Left Control) to hook things towards you,\nor you towards things!\nCan also be used to damage enemies!"; break;
			default: _desc = "No item description found!"; break;
		}
		NewTextBox(_desc,1);
	}
	else
	{
		NewTextBox("Not enough money...",1);
	}
}