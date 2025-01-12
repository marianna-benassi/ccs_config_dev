set(PIO_FILESYSTEM_HINTS "gpfs")
set(NETCDF_PATH "$ENV{NETCDF}")
set(PNETCDF_PATH "$ENV{PARALLEL_NETCDF}")
string(APPEND CPPDEFS " -DNO_R16 -DHAVE_NANOTIME")
if (COMP_NAME STREQUAL nemo)
  string(APPEND FFLAGS " $(FC_AUTO_R8) -O3 -assume norealloc_lhs")
endif()
execute_process(COMMAND ${NETCDF_PATH}/bin/nc-config --flibs)

