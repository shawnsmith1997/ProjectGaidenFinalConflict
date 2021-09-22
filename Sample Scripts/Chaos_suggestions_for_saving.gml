//SAVE
ini_open("SyroGS"+string(global.SaveSlot)+".ini");
//ini_write_string(section, key, value);
ini_write_real('Global', 'Gold', global.Gold);
ini_close();

//LOAD
ini_open("SyroGS"+string(global.SaveSlot)+".ini");
//ini_read_string(section, key, default value);
global.Gold = ini_read_real('Global', 'Gold', global.Gold);
ini_close();

//looks kinda like that
//cept longer
//and strings are read via read string instead of read real
global.Name[i] = ini_read_string('Character'+string(i), 'Name', global.Name[i]);//Name