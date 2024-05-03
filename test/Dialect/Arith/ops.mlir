// RUN: mlir-opt %s | mlir-opt | FileCheck %s
// RUN: mlir-opt %s --mlir-print-op-generic | mlir-opt | FileCheck %s

// CHECK-LABEL: test_addi
func.func @test_addi(%arg0 : i64, %arg1 : i64) -> i64 {
  %0 = arith.addi %arg0, %arg1 : i64
  return %0 : i64
}
