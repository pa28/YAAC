cmake_minimum_required(VERSION 3.16)
project(YAAC VERSION 0.1.163.1)

include(GNUInstallDirs)

execute_process(
        COMMAND ${CMAKE_CURRENT_SOURCE_DIR}/resources/fetch.sh arg
        WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
)

install(PROGRAMS YAAC.sh DESTINATION bin RENAME YAAC)
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/resources/YAAC DESTINATION "${CMAKE_INSTALL_DATADIR}")

set(CPACK_DEB_COMPONENT_INSTALL 1)
set(CPACK_DEBIAN_FILE_NAME "DEB-DEFAULT")
set(CPACK_PACKAGE_VERSION "${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}.${PROJECT_VERSION_PATCH}")
set(CPACK_PACKAGE_RELEASE ${PROJECT_VERSION_TWEAK})
set(CPACK_GENERATOR "DEB")
set(CPACK_PACKAGE_NAME "${PROJECT_NAME}")
set(CPACK_DEBIAN_PACKAGE_SECTION "hamradio")
set(CPACK_RPM_PACKAGE_URL "https://pa28.github.io/YAAC")
set(CPACK_RPM_PACKAGE_SUMMARY "Yet Another APRS Client")
set(CPACK_RPM_PACKAGE_DESCRIPTION "Installation pacage for YAAC")
set(CPACK_RPM_PACKAGE_VENDOR "www.hrbuckley.net")
set(CPACK_PACKAGE_CONTACT "Richard Buckley")
set(CPACK_RPM_PACKAGE_GROUP "Applications/Productivity")
set(CPACK_DEBIAN_PACKAGE_SHLIBDEPS ON)
set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})
set(CPACK_DEBIAN_PACKAGE_DEPENDS "openjdk-11-jre-headless, openjdk-11-jre")
set(CPACK_RPM_EXCLUDE_FROM_AUTO_FILELIST_ADDITION
        /usr/local
        /usr/local/bin
        /usr/local/share
        /usr/local/include
        /usr/lib/systemd
        /usr/lib/systemd/system
        )

include(CPack)
