; ModuleID = 'test_pytket_qir_20'
source_filename = "test_pytket_qir_20"

@0 = internal constant [5 x i8] c"c[0]\00"
@1 = internal constant [5 x i8] c"c[1]\00"
@2 = internal constant [5 x i8] c"c[2]\00"
@3 = internal constant [5 x i8] c"c[3]\00"
@4 = internal constant [5 x i8] c"c[4]\00"
@5 = internal constant [5 x i8] c"c[5]\00"
@6 = internal constant [5 x i8] c"c[6]\00"
@7 = internal constant [5 x i8] c"c[7]\00"
@8 = internal constant [5 x i8] c"c[8]\00"
@9 = internal constant [5 x i8] c"c[9]\00"

define void @main() #0 {
entry:
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 2 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 3 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 4 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 5 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 6 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 7 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 8 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 9 to ptr))
  call void @__quantum__qis__mz__body(ptr null, ptr null)
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 2 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 3 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 4 to ptr), ptr inttoptr (i64 4 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 5 to ptr), ptr inttoptr (i64 5 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 6 to ptr), ptr inttoptr (i64 6 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 7 to ptr), ptr inttoptr (i64 7 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 8 to ptr))
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 9 to ptr), ptr inttoptr (i64 9 to ptr))
  call void @__quantum__rt__result_record_output(ptr null, ptr @0)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 1 to ptr), ptr @1)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 2 to ptr), ptr @2)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 3 to ptr), ptr @3)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 4 to ptr), ptr @4)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 5 to ptr), ptr @5)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 6 to ptr), ptr @6)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 7 to ptr), ptr @7)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 8 to ptr), ptr @8)
  call void @__quantum__rt__result_record_output(ptr inttoptr (i64 9 to ptr), ptr @9)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__rt__result_record_output(ptr, ptr)

declare void @__quantum__qis__h__body(ptr)

declare void @__quantum__qis__mz__body(ptr, ptr writeonly) #1

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="10" "required_num_results"="10" }
attributes #1 = { "irreversible" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
