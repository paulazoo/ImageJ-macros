group_num = "10"
plane_num = "61"
data_num = "753R"
mouse_num = "753"

selectWindow("E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+".vsi - 10x #"+plane_num);
//run("Brightness/Contrast...");
run("Enhance Contrast", "saturated=0.35");
run("Split Channels");
selectWindow("C1-E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+".vsi - 10x #"+plane_num);
selectWindow("C2-E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+".vsi - 10x #"+plane_num);
close();
selectWindow("C1-E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+".vsi - 10x #"+plane_num);
saveAs("Tiff", "E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+" G"+group_num+".tif");
close();

open("E:/histology/stephen/SZ"+mouse_num+"/SZ"+data_num+".vsi");
