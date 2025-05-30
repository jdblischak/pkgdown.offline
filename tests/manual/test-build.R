# Test if offline build works

path <- "zzz.build"
pkgdown.offline:::install_pkgdown("2.1.2")
usethis::create_package(path)

# Switch off internet connection. In the opened project, run
usethis::use_pkgdown()
pkgdown.offline::clear_cache()
pkgdown.offline::build_site()

# In the pkgdown.offline project, clean up
pkgdown.offline:::dir_delete(path)
