#' @title search_data_by_keyword
#' @description Given a key word, this function returns the dataset names including key word
#' @param key_word A data set name which is a character object
#' @return  A character vector object that shows the name of the datasets including key word
#' @examples
#' \dontrun{
#' search_data_by_keyword("doktor")
#' }
#' @export
#'@importFrom magrittr %>%
search_data_by_keyword<-function(key_word){
  data_list <- invisible(list_data_names())
  stringr::str_subset(data_list,key_word)
}
