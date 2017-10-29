
[1mFrom:[0m /home/pawlkris/nyc-pigeon-organizer-web-103017/nyc_pigeon_organizer.rb @ line 30 Object#nyc_pigeon_organizer:

     [1;34m3[0m: [32mdef[0m [1;34mnyc_pigeon_organizer[0m(data)
     [1;34m4[0m:   pigeon_list = {}
     [1;34m5[0m:   all_names = []
     [1;34m6[0m: 
     [1;34m7[0m:   data.each [32mdo[0m |attributetype, hash|
     [1;34m8[0m:     hash.each [32mdo[0m |attributedata, names|
     [1;34m9[0m:       names.each [32mdo[0m |x|
    [1;34m10[0m:         all_names << x
    [1;34m11[0m:       [32mend[0m
    [1;34m12[0m:     [32mend[0m
    [1;34m13[0m:   [32mend[0m
    [1;34m14[0m:   all_names = all_names.uniq
    [1;34m15[0m:   all_names.each [32mdo[0m |x|
    [1;34m16[0m:     pigeon_list[x] = {
    [1;34m17[0m:       [33m:color[0m => [],
    [1;34m18[0m:       [33m:gender[0m => [],
    [1;34m19[0m:       [33m:lives[0m => []
    [1;34m20[0m:     }
    [1;34m21[0m:   [32mend[0m
    [1;34m22[0m: 
    [1;34m23[0m:   data.each [32mdo[0m |attributetype, hash|
    [1;34m24[0m:     hash.each [32mdo[0m |attributedata, names|
    [1;34m25[0m:       names.each [32mdo[0m |x|
    [1;34m26[0m:         pigeon_list[x][attributetype] << [attributedata]
    [1;34m27[0m:       [32mend[0m
    [1;34m28[0m:     [32mend[0m
    [1;34m29[0m:   [32mend[0m
 => [1;34m30[0m:   binding.pry
    [1;34m31[0m: [32mend[0m

