; ModuleID = 'test_pytket_qir_conditional_2'
source_filename = "test_pytket_qir_conditional_2"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"
@2 = internal constant [2 x i8] c"c\00"
@3 = internal constant [2 x i8] c"d\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 5)
  %1 = call ptr @create_creg(i64 5)
  %2 = call ptr @create_creg(i64 5)
  %3 = call ptr @create_creg(i64 5)
  %4 = call i64 @get_int_from_creg(ptr %0)
  %5 = call i64 @get_int_from_creg(ptr %1)
  %6 = or i64 %4, %5
  call void @set_creg_to_int(ptr %2, i64 %6)
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 2 to ptr))
  %7 = call i64 @get_int_from_creg(ptr %2)
  %8 = call i64 @get_int_from_creg(ptr %1)
  %9 = or i64 %7, %8
  call void @set_creg_to_int(ptr %3, i64 %9)
  call void @__quantum__qis__h__body(ptr null)
  %10 = call i1 @get_creg_bit(ptr %0, i64 4)
  br i1 %10, label %contb0, label %condb0

condb0:                                           ; preds = %entry
  %11 = call i64 @get_int_from_creg(ptr %2)
  %12 = call i64 @get_int_from_creg(ptr %1)
  %13 = or i64 %11, %12
  call void @set_creg_to_int(ptr %3, i64 %13)
  br label %contb0

contb0:                                           ; preds = %condb0, %entry
  call void @mz_to_creg_bit(ptr inttoptr (i64 2 to ptr), ptr %3, i64 2)
  call void @mz_to_creg_bit(ptr inttoptr (i64 1 to ptr), ptr %3, i64 3)
  call void @mz_to_creg_bit(ptr null, ptr %3, i64 4)
  %14 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %14, ptr @0)
  %15 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %15, ptr @1)
  %16 = call i64 @get_int_from_creg(ptr %2)
  call void @__quantum__rt__int_record_output(i64 %16, ptr @2)
  %17 = call i64 @get_int_from_creg(ptr %3)
  call void @__quantum__rt__int_record_output(i64 %17, ptr @3)
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

declare void @__quantum__qis__h__body(ptr)

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="3" "required_num_results"="3" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
