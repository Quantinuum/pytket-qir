; ModuleID = 'test_bitreg_as_bit_8'
source_filename = "test_bitreg_as_bit_8"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 1)
  %1 = call ptr @create_creg(i64 2)
  %2 = call i1 @get_creg_bit(ptr %0, i64 0)
  %3 = call i1 @get_creg_bit(ptr %1, i64 0)
  %4 = xor i1 %2, %3
  call void @set_creg_bit(ptr %0, i64 0, i1 %4)
  %5 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %5, ptr @0)
  %6 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %6, ptr @1)
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
