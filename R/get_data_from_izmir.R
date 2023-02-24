#' @title get_data_from_izmir
#' @description  Given a data name, this function returns the data frame
#' @param data_name A data set name obtained from list_data_names()
#' @return A data frame that shows the observations for given data name
#' @examples
#' \dontrun{
#' get_data_from_izmir("asik-veysel-rekreasyon-alani-buz-pisti-kullanici-verileri")
#'}
#'
#' @export
#' @importFrom magrittr %>%
#' @importFrom utils read.csv
get_data_from_izmir<-function(data_name){
  #requireNamespace(dplyr)
  #requireNamespace(rvest)
  link <-rvest::read_html(gsub(" ","",paste("https://acikveri.bizizmir.com/tr/dataset/",data_name)))
  href_list <-link %>% rvest::html_elements("a") %>% rvest::html_attr("href")
  if(sum(grepl("api",  href_list))==1){
    data <- dplyr::as_tibble(jsonlite::fromJSON(href_list%>%stringr::str_subset("api")))
    #data<-encoding_data(data)
  } else if(sum(grepl("csv",  href_list))==1){
    data <- dplyr::as_tibble(utils::read.csv(href_list%>%stringr::str_subset(".csv"),sep = ";"))
    data<-encoding_data(data)
  } else if(sum(grepl("xlsx",  href_list))==1){
    data <- dplyr::as_tibble(openxlsx::read.xlsx(href_list%>%stringr::str_subset(".xlsx")))
    data<-encoding_data(data)
  } else {
    print(paste("This data cannot be downloaded. Please visit",link))
  }
  return(data)
}
