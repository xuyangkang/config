(url-retrieve
 "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el"
 (lambda (s)
   (goto-char (point-max))
   (eval-print-last-sexp))) ;; <- C-x C-e here
