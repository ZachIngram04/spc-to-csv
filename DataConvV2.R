install.packages('hyperSpec')
library('hyperSpec')
input_folder = "<path>"
output_folder = "<path>"
file_list = list.files(path=input_folder, pattern="\\.spc$", full.names=TRUE)
for (file in file_list) {
  raw_contents = read.spc(file, log.txt=FALSE)
  plot(raw_contents)
  cleaned_data = as.data.frame(raw_contents$spc)
  transposed_data = t(cleaned_data)
  file_name = tools::file_path_sans_ext(basename(file))
  output_file = file.path(output_folder, paste0(file_name, ".csv"))
  write.csv(transposed_data, file=output_file)
}
