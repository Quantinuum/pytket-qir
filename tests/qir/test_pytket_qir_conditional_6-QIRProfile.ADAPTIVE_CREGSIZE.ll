; ModuleID = 'test_pytket_qir_conditional_6'
source_filename = "test_pytket_qir_conditional_6"

@0 = internal constant [2 x i8] c"c\00"

define void @main() #0 {
entry:
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  br i1 false, label %condb0, label %contb0

condb0:                                           ; preds = %entry
  call void @__quantum__qis__phasedx__body(double 0x3FD41B2F769CF0E0, double 0x3FE41B2F769CF0E0, ptr null)
  br label %contb0

contb0:                                           ; preds = %condb0, %entry
  call void @__quantum__rt__int_record_output(i64 0, ptr @0)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__qis__h__body(ptr)

declare void @__quantum__qis__phasedx__body(double, double, ptr)

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="2" "required_num_results"="2" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
