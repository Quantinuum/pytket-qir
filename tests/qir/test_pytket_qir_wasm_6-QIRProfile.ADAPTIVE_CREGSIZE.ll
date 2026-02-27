; ModuleID = 'test_pytket_qir_wasm_6-QIRProfile.ADAPTIVE_CREGSIZE'
source_filename = "test_pytket_qir_wasm_6-QIRProfile.ADAPTIVE_CREGSIZE"

@0 = internal constant [2 x i8] c"c\00"
@1 = internal constant [3 x i8] c"c0\00"
@2 = internal constant [3 x i8] c"c1\00"

define void @main() #0 {
entry:
  call void @__quantum__qis__mz__body(ptr null, ptr null)
  %0 = call i1 @__quantum__qis__read_result__body(ptr null)
  %1 = zext i1 %0 to i64
  %2 = mul i64 %1, 1
  %3 = or i64 %2, 0
  %4 = sub i64 1, %1
  %5 = mul i64 %4, 1
  %6 = xor i64 9223372036854775807, %5
  %7 = and i64 %6, %3
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr))
  %8 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 1 to ptr))
  %9 = zext i1 %8 to i64
  %10 = mul i64 %9, 2
  %11 = or i64 %10, %7
  %12 = sub i64 1, %9
  %13 = mul i64 %12, 2
  %14 = xor i64 9223372036854775807, %13
  %15 = and i64 %14, %11
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 2 to ptr))
  %16 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 2 to ptr))
  %17 = zext i1 %16 to i64
  %18 = mul i64 %17, 4
  %19 = or i64 %18, %15
  %20 = sub i64 1, %17
  %21 = mul i64 %20, 4
  %22 = xor i64 9223372036854775807, %21
  %23 = and i64 %22, %19
  %24 = call i64 @add_one(i64 16106127360)
  %25 = trunc i64 %24 to i32
  %26 = zext i32 %25 to i64
  call void @__quantum__rt__int_record_output(i64 %23, ptr @0)
  call void @__quantum__rt__int_record_output(i64 16106127360, ptr @1)
  call void @__quantum__rt__int_record_output(i64 %26, ptr @2)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__qis__mz__body(ptr, ptr writeonly) #1

declare i64 @add_one(i64) #1

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="6" "required_num_results"="6" }
attributes #1 = { "wasm" }
attributes #2 = { "irreversible" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
