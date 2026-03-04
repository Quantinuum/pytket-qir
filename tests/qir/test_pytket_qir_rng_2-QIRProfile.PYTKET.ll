; ModuleID = 'test_pytket_qir_rng_2'
source_filename = "test_pytket_qir_rng_2"

@0 = internal constant [2 x i8] c"c\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 32)
  call void @set_creg_bit(ptr %0, i64 3, i1 true)
  call void @set_creg_bit(ptr %0, i64 11, i1 true)
  %1 = call i64 @get_int_from_creg(ptr %0)
  %2 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %2, ptr @0)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare i1 @get_creg_bit(ptr, i64)

declare void @set_creg_bit(ptr, i64, i1)

declare void @set_creg_to_int(ptr, i64)

declare ptr @create_creg(i64)

declare i64 @get_int_from_creg(ptr)

declare void @mz_to_creg_bit(ptr, ptr, i64)

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="0" "required_num_results"="0" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
