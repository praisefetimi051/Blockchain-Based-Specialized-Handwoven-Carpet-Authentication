;; Weaver Verification Contract
;; This contract validates legitimate artisans who can create authentic handwoven carpets

(define-data-var admin principal tx-sender)

;; Map to store verified weavers
(define-map verified-weavers principal
  {
    name: (string-utf8 100),
    region: (string-utf8 50),
    certification-date: uint,
    is-active: bool
  }
)

;; Public function to verify a new weaver (only admin can call)
(define-public (verify-weaver (weaver-address principal) (name (string-utf8 100)) (region (string-utf8 50)))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u100))
    (ok (map-set verified-weavers weaver-address
      {
        name: name,
        region: region,
        certification-date: block-height,
        is-active: true
      }
    ))
  )
)

;; Public function to revoke weaver verification
(define-public (revoke-weaver (weaver-address principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u101))
    (asserts! (is-some (map-get? verified-weavers weaver-address)) (err u102))
    (let ((weaver-data (unwrap-panic (map-get? verified-weavers weaver-address))))
      (ok (map-set verified-weavers weaver-address
        (merge weaver-data { is-active: false })
      ))
    )
  )
)

;; Read-only function to check if a weaver is verified
(define-read-only (is-verified-weaver (weaver-address principal))
  (match (map-get? verified-weavers weaver-address)
    weaver-data (get is-active weaver-data)
    false
  )
)

;; Read-only function to get weaver details
(define-read-only (get-weaver-details (weaver-address principal))
  (map-get? verified-weavers weaver-address)
)

;; Function to transfer admin rights
(define-public (transfer-admin (new-admin principal))
  (begin
    (asserts! (is-eq tx-sender (var-get admin)) (err u103))
    (ok (var-set admin new-admin))
  )
)
