#' @title list_data_names
#' @description list the name of the data sets available in Izmir Open Data Portal
#' @return A character vector that shows the name of the data set
#' @examples
#' \dontrun{
#' list_data_names()
#'}
#' @export
#'
#'@importFrom magrittr %>%
list_data_names<-function(){
  url<-"https://acikveri.bizizmir.com/tr/dataset"
  link<- rvest::read_html(url)
  #requireNamespace(dplyr)
  page_no <- link %>% rvest::html_elements("a") %>% rvest::html_attr("href") %>%stringr::str_subset("page") %>%readr::parse_number() %>% max()
  data_name<-c()
  for(i in 1:page_no){
    link_for_each_page  <- gsub(" ","",paste("https://acikveri.bizizmir.com/tr/dataset?page=",i))
    link_for_each_page_html <-rvest::read_html(link_for_each_page)
    link_for_data <- link_for_each_page_html %>% rvest::html_elements("a") %>% rvest::html_attr("href") %>%stringr::str_subset("/tr/dataset/")%>%unique()
    data_name<-c(data_name,stringr::str_remove(link_for_data ,"/tr/dataset/"))
  }
  return(data_name)
}
