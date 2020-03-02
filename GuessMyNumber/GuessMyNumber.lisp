(defparameter *small* 1)
(defparameter *big* 100)


(defun start-over ()
    (defparameter *small* 1)
    (defparameter *big* 100)
    (guess-my-number)
)

(defun smaller()
    (setf *small* (1- (guess-my-number)))
    (print (guess-my-number))
)

(defun bigger()
    (setf *big* (1+ (guess-my-number)))
    (print (guess-my-number))
)

(defun guess-my-number ()
    (ash (+ *small* *big*) -1)
)

(defun game-loop ()
    (flet ((prompt (string)
            (format "~A " string)
            (finish-output)
            (read nil 'eof nil)))
            (fresh-line)
            (let
                ((last "?"))
                (loop while (not (equal last "="))
                    
                    do (setf last (prompt (format t "Is '~A' Smaller (<) or Larger (>)?" (guess-my-number))))
                    (cond
                        ((string= last "<") (smaller))
                        ((string= last ">") (bigger))
                        ((string= last "=") (start-over))
                        (t (print "Invalid Input") (print last) (fresh-line))
                    )
                    'DONE))
    )
)

(print (equal "+" "+"))
(game-loop)