if you're using ox_inventory:

>> Copy the items from `ox_inventory.lua` in this folder to your `ox_inventory/data/items.lua` file.
>> Then restart your server and you're good to go. You may want to ensure you add the item images before restarting, but they are not 100% necessary!
>> Alternatively, you can run `items-weight.sql`, restart your server then restart again to add the items to ox_inventory automatically.

if you're using most other inventories: 

>> open your database in HeidiSQL and go to the items table.
>> See if you use `limit` or `weight` it should be in the third row under the "Table: items" column
>> Run the appropriate file based on what you use.