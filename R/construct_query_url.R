construct_query_url <- function(req_defaults, api_key =Sys.getenv("PVWATTS_KEY")){

  base_url <- "https://developer.nrel.gov/api/pvwatts/v8.json"

  # build query string from defaults list
  query_str <- ""
  for (i in seq_along(req_defaults)) {
    a <- paste0("&",names(req_defaults)[i],"=",req_defaults[i])
    query_str <- paste0(query_str, a)
  }

  # full API request url
  req_url <- paste0(base_url, "?api_key=", api_key, query_str)

}
