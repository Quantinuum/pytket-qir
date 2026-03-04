; ModuleID = 'test_pytket_qir_20'
source_filename = "test_pytket_qir_20"

@0 = internal constant [2 x i8] c"c\00"

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
  %0 = call i1 @__quantum__qis__read_result__body(ptr null)
  %1 = zext i1 %0 to i64
  %2 = mul i64 %1, 1
  %3 = or i64 %2, 0
  %4 = sub i64 1, %1
  %5 = mul i64 %4, 1
  %6 = xor i64 9223372036854775807, %5
  %7 = and i64 %6, %3
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 1 to ptr), ptr inttoptr (i64 1 to ptr))
  %8 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 1 to ptr))
  %9 = zext i1 %8 to i64
  %10 = mul i64 %9, 2
  %11 = or i64 %10, %7
  %12 = sub i64 1, %9
  %13 = mul i64 %12, 2
  %14 = xor i64 9223372036854775807, %13
  %15 = and i64 %14, %11
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 2 to ptr), ptr inttoptr (i64 2 to ptr))
  %16 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 2 to ptr))
  %17 = zext i1 %16 to i64
  %18 = mul i64 %17, 4
  %19 = or i64 %18, %15
  %20 = sub i64 1, %17
  %21 = mul i64 %20, 4
  %22 = xor i64 9223372036854775807, %21
  %23 = and i64 %22, %19
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 3 to ptr), ptr inttoptr (i64 3 to ptr))
  %24 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 3 to ptr))
  %25 = zext i1 %24 to i64
  %26 = mul i64 %25, 8
  %27 = or i64 %26, %23
  %28 = sub i64 1, %25
  %29 = mul i64 %28, 8
  %30 = xor i64 9223372036854775807, %29
  %31 = and i64 %30, %27
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 4 to ptr), ptr inttoptr (i64 4 to ptr))
  %32 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 4 to ptr))
  %33 = zext i1 %32 to i64
  %34 = mul i64 %33, 16
  %35 = or i64 %34, %31
  %36 = sub i64 1, %33
  %37 = mul i64 %36, 16
  %38 = xor i64 9223372036854775807, %37
  %39 = and i64 %38, %35
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 5 to ptr), ptr inttoptr (i64 5 to ptr))
  %40 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 5 to ptr))
  %41 = zext i1 %40 to i64
  %42 = mul i64 %41, 32
  %43 = or i64 %42, %39
  %44 = sub i64 1, %41
  %45 = mul i64 %44, 32
  %46 = xor i64 9223372036854775807, %45
  %47 = and i64 %46, %43
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 6 to ptr), ptr inttoptr (i64 6 to ptr))
  %48 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 6 to ptr))
  %49 = zext i1 %48 to i64
  %50 = mul i64 %49, 64
  %51 = or i64 %50, %47
  %52 = sub i64 1, %49
  %53 = mul i64 %52, 64
  %54 = xor i64 9223372036854775807, %53
  %55 = and i64 %54, %51
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 7 to ptr), ptr inttoptr (i64 7 to ptr))
  %56 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 7 to ptr))
  %57 = zext i1 %56 to i64
  %58 = mul i64 %57, 128
  %59 = or i64 %58, %55
  %60 = sub i64 1, %57
  %61 = mul i64 %60, 128
  %62 = xor i64 9223372036854775807, %61
  %63 = and i64 %62, %59
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 8 to ptr), ptr inttoptr (i64 8 to ptr))
  %64 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 8 to ptr))
  %65 = zext i1 %64 to i64
  %66 = mul i64 %65, 256
  %67 = or i64 %66, %63
  %68 = sub i64 1, %65
  %69 = mul i64 %68, 256
  %70 = xor i64 9223372036854775807, %69
  %71 = and i64 %70, %67
  call void @__quantum__qis__mz__body(ptr inttoptr (i64 9 to ptr), ptr inttoptr (i64 9 to ptr))
  %72 = call i1 @__quantum__qis__read_result__body(ptr inttoptr (i64 9 to ptr))
  %73 = zext i1 %72 to i64
  %74 = mul i64 %73, 512
  %75 = or i64 %74, %71
  %76 = sub i64 1, %73
  %77 = mul i64 %76, 512
  %78 = xor i64 9223372036854775807, %77
  %79 = and i64 %78, %75
  call void @__quantum__rt__array_record_output(i64 1, ptr null)
  call void @__quantum__rt__int_record_output(i64 %79, ptr @0)
  ret void
}

declare i1 @__quantum__qis__read_result__body(ptr)

declare void @__quantum__rt__int_record_output(i64, ptr)

declare void @__quantum__rt__array_record_output(i64, ptr)

declare void @__quantum__qis__h__body(ptr)

declare void @__quantum__qis__mz__body(ptr, ptr writeonly) #1

attributes #0 = { "entry_point" "output_labeling_schema" "qir_profiles"="custom" "required_num_qubits"="10" "required_num_results"="10" }
attributes #1 = { "irreversible" }

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
