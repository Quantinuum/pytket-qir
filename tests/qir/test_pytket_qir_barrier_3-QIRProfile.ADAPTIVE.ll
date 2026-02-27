; ModuleID = 'test_pytket_qir_barrier_3'
source_filename = "test_pytket_qir_barrier_3"

define void @main() #0 {
entry:
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__barrier1__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__barrier1__body(ptr inttoptr (i64 1 to ptr))
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__qis__h__body(ptr)

declare void @__quantum__qis__barrier1__body(ptr)

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="5" "required_num_results"="5" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
