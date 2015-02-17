set(BR_WITH_QTNETWORK ON CACHE BOOL "Build with QtNetwork")
if(${BR_WITH_QTNETWORK})
  find_package(Qt5Network)
  find_package(HttpParser)
  set(QT_DEPENDENCIES ${QT_DEPENDENCIES} Network)
  set(BR_THIRDPARTY_SRC ${BR_THIRDPARTY_SRC} ${HTTPPARSER_SRC})
  install(FILES ${HTTPPARSER_LICENSE} RENAME http-parser DESTINATION share/openbr/licenses)
else()
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/format/urlformat.cpp)
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/format/postformat.cpp)
  set(BR_EXCLUDED_PLUGINS ${BR_EXCLUDED_PLUGINS} plugins/gallery/postgallery.cpp)
endif()
