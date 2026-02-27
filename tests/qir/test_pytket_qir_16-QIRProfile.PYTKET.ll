; ModuleID = 'test_pytket_qir_16'
source_filename = "test_pytket_qir_16"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"
@2 = internal constant [2 x i8] c"d\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 10)
  %1 = call ptr @create_creg(i64 11)
  %2 = call ptr @create_creg(i64 20)
  call void @mz_to_creg_bit(ptr null, ptr %0, i64 0)
  call void @set_creg_bit(ptr %1, i64 0, i1 true)
  call void @set_creg_bit(ptr %1, i64 1, i1 true)
  call void @set_creg_bit(ptr %1, i64 2, i1 false)
  call void @set_creg_bit(ptr %1, i64 3, i1 false)
  call void @set_creg_bit(ptr %1, i64 4, i1 false)
  call void @set_creg_bit(ptr %1, i64 5, i1 false)
  call void @set_creg_bit(ptr %1, i64 6, i1 false)
  call void @set_creg_bit(ptr %1, i64 7, i1 false)
  call void @set_creg_bit(ptr %1, i64 8, i1 false)
  call void @set_creg_bit(ptr %1, i64 9, i1 false)
  call void @set_creg_bit(ptr %1, i64 10, i1 false)
  %3 = call i64 @get_int_from_creg(ptr %0)
  %4 = call i64 @get_int_from_creg(ptr %1)
  %5 = add i64 %3, %4
  call void @set_creg_to_int(ptr %2, i64 %5)
  %6 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %6, ptr @0)
  %7 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %7, ptr @1)
  %8 = call i64 @get_int_from_creg(ptr %2)
  call void @__quantum__rt__int_record_output(i64 %8, ptr @2)
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

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="1" "required_num_results"="1" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
