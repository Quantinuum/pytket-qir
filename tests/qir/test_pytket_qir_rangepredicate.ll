; ModuleID = 'test_pytket_qir_rangepredicate'
source_filename = "test_pytket_qir_rangepredicate"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [15 x i8] c"tk_SCRATCH_BIT\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 5)
  %1 = call ptr @create_creg(i64 6)
  %2 = call i64 @get_int_from_creg(ptr %0)
  %3 = icmp eq i64 1, %2
  call void @set_creg_bit(ptr %1, i64 0, i1 %3)
  %4 = call i64 @get_int_from_creg(ptr %0)
  %5 = icmp eq i64 1, %4
  call void @set_creg_bit(ptr %1, i64 1, i1 %5)
  %6 = call i64 @get_int_from_creg(ptr %0)
  %7 = icmp eq i64 0, %6
  call void @set_creg_bit(ptr %1, i64 2, i1 %7)
  %8 = call i64 @get_int_from_creg(ptr %0)
  %9 = icmp sgt i64 2, %8
  %10 = call i64 @get_int_from_creg(ptr %0)
  %11 = icmp sgt i64 %10, -1
  %12 = and i1 %9, %11
  call void @set_creg_bit(ptr %1, i64 3, i1 %12)
  %13 = call i64 @get_int_from_creg(ptr %0)
  %14 = icmp sgt i64 0, %13
  %15 = call i64 @get_int_from_creg(ptr %0)
  %16 = icmp sgt i64 %15, 1
  %17 = and i1 %14, %16
  call void @set_creg_bit(ptr %1, i64 4, i1 %17)
  %18 = call i64 @get_int_from_creg(ptr %0)
  %19 = icmp sgt i64 1, %18
  %20 = call i64 @get_int_from_creg(ptr %0)
  %21 = icmp sgt i64 %20, -1
  %22 = and i1 %19, %21
  call void @set_creg_bit(ptr %1, i64 5, i1 %22)
  %23 = call i1 @get_creg_bit(ptr %1, i64 0)
  br i1 %23, label %condb0, label %contb0

condb0:                                           ; preds = %entry
  call void @__quantum__qis__h__body(ptr null)
  br label %contb0

contb0:                                           ; preds = %condb0, %entry
  %24 = call i1 @get_creg_bit(ptr %1, i64 1)
  br i1 %24, label %contb1, label %condb1

condb1:                                           ; preds = %contb0
  call void @__quantum__qis__h__body(ptr null)
  br label %contb1

contb1:                                           ; preds = %condb1, %contb0
  %25 = call i1 @get_creg_bit(ptr %1, i64 2)
  br i1 %25, label %condb2, label %contb2

condb2:                                           ; preds = %contb1
  call void @__quantum__qis__h__body(ptr null)
  br label %contb2

contb2:                                           ; preds = %condb2, %contb1
  %26 = call i1 @get_creg_bit(ptr %1, i64 3)
  br i1 %26, label %condb3, label %contb3

condb3:                                           ; preds = %contb2
  call void @__quantum__qis__h__body(ptr null)
  br label %contb3

contb3:                                           ; preds = %condb3, %contb2
  %27 = call i1 @get_creg_bit(ptr %1, i64 4)
  br i1 %27, label %condb4, label %contb4

condb4:                                           ; preds = %contb3
  call void @__quantum__qis__h__body(ptr null)
  br label %contb4

contb4:                                           ; preds = %condb4, %contb3
  %28 = call i1 @get_creg_bit(ptr %1, i64 5)
  br i1 %28, label %condb5, label %contb5

condb5:                                           ; preds = %contb4
  call void @__quantum__qis__h__body(ptr null)
  br label %contb5

contb5:                                           ; preds = %condb5, %contb4
  %29 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %29, ptr @0)
  %30 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %30, ptr @1)
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
