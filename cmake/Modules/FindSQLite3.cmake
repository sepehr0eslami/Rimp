# Find sqlite3
# Find the native SQLITE3 headers and libraries.
#
# SQLITE3_INCLUDE_DIRS	- where to find sqlite3.h, etc.
# SQLITE3_LIBRARIES	- List of libraries when using sqlite.
# SQLITE3_FOUND	- True if sqlite found.

# Look for the header file.
find_path(SQLITE3_INCLUDE_DIR NAMES sqlite3.h)

# Look for the library.
find_library(SQLITE3_LIBRARY NAMES sqlite3)

# Handle the QUIETLY and REQUIRED arguments and set SQLITE3_FOUND to TRUE if all listed variables are TRUE.
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(SQLite3 DEFAULT_MSG SQLITE3_LIBRARY SQLITE3_INCLUDE_DIR)

# Copy the results to the output variables.
if(SQLITE3_FOUND)
    set(SQLITE3_LIBRARIES ${SQLITE3_LIBRARY})
    set(SQLITE3_INCLUDE_DIRS ${SQLITE3_INCLUDE_DIR})
else(SQLITE3_FOUND)
    set(SQLITE3_LIBRARIES)
    set(SQLITE3_INCLUDE_DIRS)
endif(SQLITE3_FOUND)

mark_as_advanced(SQLITE3_INCLUDE_DIRS SQLITE3_LIBRARIES)
