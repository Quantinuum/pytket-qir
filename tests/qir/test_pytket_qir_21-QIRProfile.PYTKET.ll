; ModuleID = 'test_pytket_qir_21'
source_filename = "test_pytket_qir_21"

@0 = internal constant [2 x i8] c"a\00"
@1 = internal constant [2 x i8] c"b\00"
@2 = internal constant [2 x i8] c"c\00"

define void @main() #0 {
entry:
  %0 = call ptr @create_creg(i64 3)
  %1 = call ptr @create_creg(i64 3)
  %2 = call ptr @create_creg(i64 1)
  call void @__quantum__qis__h__body(ptr null)
  call void @__quantum__qis__h__body(ptr inttoptr (i64 1 to ptr))
  call void @mz_to_creg_bit(ptr null, ptr %0, i64 0)
  call void @mz_to_creg_bit(ptr inttoptr (i64 1 to ptr), ptr %1, i64 0)
  %3 = call i64 @get_int_from_creg(ptr %0)
  %4 = call i64 @get_int_from_creg(ptr %1)
  %5 = icmp eq i64 %3, %4
  call void @set_creg_bit(ptr %2, i64 0, i1 %5)
  %6 = call i64 @get_int_from_creg(ptr %0)
  %7 = call i64 @get_int_from_creg(ptr %1)
  %8 = icmp ne i64 %6, %7
  call void @set_creg_bit(ptr %2, i64 0, i1 %8)
  %9 = call i64 @get_int_from_creg(ptr %0)
  %10 = call i64 @get_int_from_creg(ptr %1)
  %11 = icmp ugt i64 %9, %10
  call void @set_creg_bit(ptr %2, i64 0, i1 %11)
  %12 = call i64 @get_int_from_creg(ptr %0)
  %13 = call i64 @get_int_from_creg(ptr %1)
  %14 = icmp uge i64 %12, %13
  call void @set_creg_bit(ptr %2, i64 0, i1 %14)
  %15 = call i64 @get_int_from_creg(ptr %0)
  %16 = call i64 @get_int_from_creg(ptr %1)
  %17 = icmp ult i64 %15, %16
  call void @set_creg_bit(ptr %2, i64 0, i1 %17)
  %18 = call i64 @get_int_from_creg(ptr %0)
  %19 = call i64 @get_int_from_creg(ptr %1)
  %20 = icmp ule i64 %18, %19
  call void @set_creg_bit(ptr %2, i64 0, i1 %20)
  %21 = call i64 @get_int_from_creg(ptr %0)
  call void @__quantum__rt__int_record_output(i64 %21, ptr @0)
  %22 = call i64 @get_int_from_creg(ptr %1)
  call void @__quantum__rt__int_record_output(i64 %22, ptr @1)
  %23 = call i64 @get_int_from_creg(ptr %2)
  call void @__quantum__rt__int_record_output(i64 %23, ptr @2)
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

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="2" "required_num_results"="2" }

!llvm.module.flags = !{!0, !1, !2, !3}

!0 = !{i32 1, !"qir_major_version", i32 2}
!1 = !{i32 7, !"qir_minor_version", i32 0}
!2 = !{i32 1, !"dynamic_qubit_management", i1 false}
!3 = !{i32 1, !"dynamic_result_management", i1 false}
