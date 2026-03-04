; ModuleID = 'test_pytket_qir_15'
source_filename = "test_pytket_qir_15"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"
@2 = internal constant [2 x i8] c"d\00"
@3 = internal constant [15 x i8] c"tk_SCRATCH_BIT\00"
@4 = internal constant [20 x i8] c"tk_SCRATCH_BITREG_0\00"
@5 = internal constant [20 x i8] c"tk_SCRATCH_BITREG_1\00"
@6 = internal constant [20 x i8] c"tk_SCRATCH_BITREG_2\00"

define void @main() #0 {
entry:
  br i1 false, label %condb0, label %contb0

condb0:                                           ; preds = %entry
  call void @__quantum__qis__x__body(ptr null)
  br label %contb0

contb0:                                           ; preds = %condb0, %entry
  br i1 true, label %condb1, label %contb1

condb1:                                           ; preds = %contb0
  call void @__quantum__qis__x__body(ptr null)
  br label %contb1

contb1:                                           ; preds = %condb1, %contb0
  br i1 false, label %condb2, label %contb2

condb2:                                           ; preds = %contb1
  call void @__quantum__qis__x__body(ptr null)
  br label %contb2

contb2:                                           ; preds = %condb2, %contb1
  br i1 false, label %condb3, label %contb3

condb3:                                           ; preds = %contb2
  br label %contb3

contb3:                                           ; preds = %condb3, %contb2
  br i1 false, label %condb4, label %contb4

condb4:                                           ; preds = %contb3
  call void @__quantum__qis__x__body(ptr null)
  br label %contb4

contb4:                                           ; preds = %condb4, %contb3
  br i1 false, label %condb5, label %contb5

condb5:                                           ; preds = %contb4
  call void @__quantum__qis__x__body(ptr null)
  br label %contb5

contb5:                                           ; preds = %condb5, %contb4
  br i1 false, label %contb6, label %condb6

condb6:                                           ; preds = %contb5
  call void @__quantum__qis__x__body(ptr null)
  br label %contb6

contb6:                                           ; preds = %condb6, %contb5
  br i1 false, label %contb7, label %condb7

condb7:                                           ; preds = %contb6
  call void @__quantum__qis__x__body(ptr null)
  br label %contb7

contb7:                                           ; preds = %condb7, %contb6
  br i1 false, label %condb8, label %contb8

condb8:                                           ; preds = %contb7
  call void @__quantum__qis__x__body(ptr null)
  br label %contb8

contb8:                                           ; preds = %condb8, %contb7
  br i1 false, label %condb9, label %contb9

condb9:                                           ; preds = %contb8
  call void @__quantum__qis__x__body(ptr null)
  br label %contb9

contb9:                                           ; preds = %condb9, %contb8
  br i1 false, label %condb10, label %contb10

condb10:                                          ; preds = %contb9
  call void @__quantum__qis__x__body(ptr null)
  br label %contb10

contb10:                                          ; preds = %condb10, %contb9
  br i1 false, label %condb11, label %contb11

condb11:                                          ; preds = %contb10
  call void @__quantum__qis__x__body(ptr null)
  br label %contb11

contb11:                                          ; preds = %condb11, %contb10
  call void @__quantum__rt__array_record_output(i64 7, ptr null)
  call void @__quantum__rt__int_record_output(i64 46, ptr @0)
  call void @__quantum__rt__int_record_output(i64 23, ptr @1)
  call void @__quantum__rt__int_record_output(i64 0, ptr @2)
  call void @__quantum__rt__int_record_output(i64 2, ptr @3)
  call void @__quantum__rt__int_record_output(i64 57, ptr @4)
  call void @__quantum__rt__int_record_output(i64 6, ptr @5)
  call void @__quantum__rt__int_record_output(i64 63, ptr @6)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__rt__array_record_output(i64, ptr)

declare void @__quantum__qis__x__body(ptr)

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="1" "required_num_results"="1" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7, !8, !9, !10}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
!4 = !{i32 1, !"classical_ints", i1 true}
!5 = !{i32 1, !"qubit_resetting", i1 true}
!6 = !{i32 1, !"classical_floats", i1 false}
!7 = !{i32 1, !"backwards_branching", i1 false}
!8 = !{i32 1, !"classical_fixed_points", i1 false}
!9 = !{i32 1, !"user_functions", i1 false}
!10 = !{i32 1, !"multiple_target_branching", i1 false}
