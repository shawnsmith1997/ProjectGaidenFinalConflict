//full heals all characters
for(i = 1; i <= global.ForceMembers; i+=1){
    global.Health[i] = global.MaxHealth[i];
    global.Magic[i] = global.MaxMagic[i];
}