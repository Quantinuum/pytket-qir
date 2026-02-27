; ModuleID = 'test_pytket_qir_wasm_3-QIRProfile.ADAPTIVE'
source_filename = "test_pytket_qir_wasm_3-QIRProfile.ADAPTIVE"

@0 = internal constant [2 x i8] c"c\00"
@1 = internal constant [3 x i8] c"c0\00"
@2 = internal constant [3 x i8] c"c1\00"

define void @main() #0 {
entry:
  %0 = call i64 @add_something(i64 0)
  %1 = call i64 @add_something(i64 %0)
  call void @__quantum__rt__int_record_output(i64 0, ptr @0)
  call void @__quantum__rt__int_record_output(i64 0, ptr @1)
  call void @__quantum__rt__int_record_output(i64 %1, ptr @2)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare i64 @add_something(i64) #1

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="6" "required_num_results"="6" }

attributes #1 = { "wasm" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
