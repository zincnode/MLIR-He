add_llvm_executable(he-opt he-opt.cpp)

get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)

target_link_libraries(he-opt PRIVATE
  ${dialect_libs}
  ${conversion_libs}
  MLIROptLib
  MLIRTransforms
)
