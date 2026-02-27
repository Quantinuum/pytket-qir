; ModuleID = 'test_pytket_qir_conditional_3'
source_filename = "test_pytket_qir_conditional_3"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"
@2 = internal constant [2 x i8] c"c\00"
@3 = internal constant [2 x i8] c"d\00"
@4 = internal constant [2 x i8] c"e\00"
@5 = internal constant [15 x i8] c"tk_SCRATCH_BIT\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 15)
  %1 = call ptr @create_creg(i64 15)
  %2 = call ptr @create_creg(i64 15)
  %3 = call ptr @create_creg(i64 15)
  %4 = call ptr @create_creg(i64 15)
  %5 = call ptr @create_creg(i64 1)
  %6 = call i1 @get_creg_bit(ptr %2, i64 4)
  %7 = call i1 @get_creg_bit(ptr %2, i64 5)
  %8 = call i1 @get_creg_bit(ptr %2, i64 6)
  %9 = xor i1 %7, %8
  %10 = or i1 %6, %9
  %11 = call i1 @get_creg_bit(ptr %2, i64 7)
  %12 = call i1 @get_creg_bit(ptr %2, i64 8)
  %13 = and i1 %11, %12
  %14 = or i1 %10, %13
  call void @set_creg_bit(ptr %5, i64 0, i1 %14)
  call void @__quantum__qis__h__body(ptr null)
  %15 = call i64 @get_int_from_creg(ptr %0)
  %16 = call i64 @get_int_from_creg(ptr %1)
  %17 = add i64 %15, %16
  %18 = call i64 @get_int_from_creg(ptr %3)
  %19 = sub i64 %17, %18
  call void @set_creg_to_int(ptr %2, i64 %19)
  %20 = call i1 @get_creg_bit(ptr %5, i64 0)
  br i1 %20, label %condb0, label %contb0

condb0:                                           ; preds = %entry
  call void @__quantum__qis__h__body(ptr null)
  br label %contb0

contb0:                                           ; preds = %condb0, %entry
  %21 = call i64 @get_int_from_creg(ptr %0)
  %22 = call i64 @get_int_from_creg(ptr %1)
  %23 = mul i64 %21, %22
  %24 = call i64 @get_int_from_creg(ptr %3)
  %25 = mul i64 %23, %24
  %26 = call i64 @get_int_from_creg(ptr %2)
  %27 = mul i64 %25, %26
  call void @set_creg_to_int(ptr %4, i64 %27)
  %28 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %28, ptr @0)
  %29 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %29, ptr @1)
  %30 = call i64 @get_int_from_creg(ptr %2)
  call void @__quantum__rt__int_record_output(i64 %30, ptr @2)
  %31 = call i64 @get_int_from_creg(ptr %3)
  call void @__quantum__rt__int_record_output(i64 %31, ptr @3)
  %32 = call i64 @get_int_from_creg(ptr %4)
  call void @__quantum__rt__int_record_output(i64 %32, ptr @4)
  %33 = call i64 @get_int_from_creg(ptr %5)
  call void @__quantum__rt__int_record_output(i64 %33, ptr @5)
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

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="1" "required_num_results"="1" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
