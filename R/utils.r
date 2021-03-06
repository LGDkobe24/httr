"%||%" <- function(a, b) {
  if (!is.null(a)) a else b
}

timestamp <- function() {
  format(Sys.time(), "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")
}

sort_names <- function(x)  x[order(names(x))]

nonce <- function(length = 10) {
  paste(sample(c(letters, LETTERS, 0:9), length, replace = TRUE),
    collapse = "")
}

curl_version <- function() {
  as.numeric_version(RCurl::curlVersion()$version)
}

has_env_var <- function(x) !identical(Sys.getenv(x), "")

travis_encrypt <- function(vars) {
  values <- Sys.getenv(vars)
  cat(paste0("travis encrypt ", paste0(vars, "=", values, collapse = " ")))
}
