(ns fib.core
  (:gen-class))

(defn fib [a b]
  (cons
    a
    (lazy-seq (fib b (+ a b)))))

(defn -main [count & rest]
  (doall (map println (take (Integer/parseInt count) (fib 1 1)))))


