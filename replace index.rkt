define (replace-indices word index new)
  (define (replace-g word index new acum);inner function starts with the condition if 
   (cond                                 ;index list is empty return the word else
     [(empty? index) word]               ;if first element of index is equal to the accumulator replace character
     [else                               ;in word with new character  and call function on the rest of index list and increment accumulator
       (if(equal? (car  index) acum)     ;else with cons the first element in word is kept and the function is called on rest of word
          (cons new (replace-g (cdr word) (cdr index) new (+ acum 1)));and accumulator is increment, index stays the same 
          (cons (car word) (replace-g (cdr word) index new (+ acum 1))))]))
     (replace-g word index new 0))