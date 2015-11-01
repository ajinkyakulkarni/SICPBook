(define (get-env offset env)
  (if (zero? offset)
      (frame-values (first-frame env))
      (env-ref (- offset 1) (enclosing-environment env))))

(define (get-frame-value offset frame-values)
  (if (zero? offset)
      (car frame-values)
      (get-frame-value (- offset 1) frame-values)))

(define (set-frame-value! frame-values val)
  (if (zero? offset)
      (set-car! frame-values val)
      (set-frame-value (- offset 1) frame-values)))

(define (lexical-address-lookup addr env)
  (let* ((env-frame (get-env (car addr) env))
         (val (get-frame-value (cadr addr) env-frame)))
    (if (eq? val `*unassigned*)
        (error "Unassigned variable looked up" addr)
        val)))

(define (lexical-address-set! addr env val)
  (let* ((env-frame (get-env (car addr) env))
         (values (get-frame-value (cadr addr) env-frame)))
    (set-frame-value! values val)))