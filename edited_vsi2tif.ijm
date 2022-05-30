// turn vsi into auto contrasted tiffs
// only first two channels (e.g. red and green, ignore blue DAPI)

mouse="PZ19"
vsi_file="PZ19_2"
// first group is overview
// every 8 per group, first series is highest pixel x pixel
// 16 max
series_names=newArray("14", "20", "26", "32")
num_10x=newArray("02", "03", "04", "05")
num_groups = 4
first_num = 12

for (i = 0; i < (num_groups); i++) {
	run("Bio-Formats Importer", "open=E:/histology/paula/"+mouse+"/"+vsi_file+".vsi autoscale color_mode=Default rois_import=[ROI manager] view=Hyperstack stack_order=XYCZT series_"+series_names[i]);
	run("Split Channels");
	selectWindow("C1-E:/histology/paula/"+mouse+"/"+vsi_file+".vsi - 10x_"+num_10x[i]);
	saveAs("Tiff", "E:/histology/paula/"+mouse+"/C1_"+mouse+"_"+(i+first_num)+".tif");
	selectWindow("C2-E:/histology/paula/"+mouse+"/"+vsi_file+".vsi - 10x_"+num_10x[i]);
	saveAs("Tiff", "E:/histology/paula/"+mouse+"/C2_"+mouse+"_"+(i+first_num)+".tif");
	close("*");
}

