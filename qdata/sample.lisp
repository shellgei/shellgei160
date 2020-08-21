; n!(階乗)を返す
(defun fact (n) (if (<= n 1) 1 (* n (fact (- n 1)))))

; n番目のフィボナッチ数を返す
(defun fib (n) (if (<= n 1) n (+ (fib (- n 1) (fib (- n 2)))))

; 1からnまでの総和を返す
(defun sum1 (n) (if (<= n 1) n (+ n (sum1 (- n 1))))

;; 実行
(format t "fact:~D~%fib:~D~%sum1:~D"
  (fact 5)
  (fib 5)
  (sum1 5))
