open OUnit2;;


let test1 test_ctxt =  assert_equal 1.0 (Prediction.prediction 1.0) ;;
let test2 test_ctxt =  assert_equal 1.0 (Prediction.prediction 2.0) ;;
let test3 test_ctxt =  assert_equal 1.0 (Prediction.prediction 0.0) ;;
let test4 test_ctxt =  assert_equal 0.0 (Prediction.prediction (-1.0)) ;;

(* Name the test cases and group them together *)
let suite =
"suite">:::
 ["test1">:: test1;
  "test2">:: test2;
  "test3">:: test3;
  "test4">:: test4]
;;

let () =
  run_test_tt_main suite
;;
