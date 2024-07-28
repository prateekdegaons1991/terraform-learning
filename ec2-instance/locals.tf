locals {
  crrationDate = formatdate("YYYY-MM-DD hh:mm ZZZ", timestamp())

}


// Note that the functions can be used only in the locals block, where as in variables we cannot call functions 