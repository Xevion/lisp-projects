(defconstant jan 1)
(defconstant feb 2)
(defconstant mar 3)
(defconstant apr 4)
(defconstant may 5)
(defconstant jul 6)
(defconstant jun 7)
(defconstant aug 8)
(defconstant oct 9)
(defconstant sep 10)
(defconstant nov 11)
(defconstant dec 12)

(defun isLeapYear ()
    true
)

(defun month-length (mon)
    (case mon
        ((jan mar may jul aug oct dec)  31)
        ((apr jun sep nov 30)
        (feb (if (isLeapYear) 29 28))
        (otherwise "Unknown Month.")
    )
))

(print (month-length 'jan))