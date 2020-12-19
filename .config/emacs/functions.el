(defun string/ends-with? (ends text)
  (string-suffix-p ends text))

(defun customizations/load-plugins (directory)
  (let* ((add-plugin-directory (apply-partially #'concat directory "/"))
	(elisp-file? (apply-partially #'string/ends-with? ".el"))
	(all-files-in-directory (directory-files directory))
	(all-plugins-filename (seq-filter elisp-file? all-files-in-directory))
	(all-plugins (seq-map add-plugin-directory all-plugins-filename)))
    (dolist (plugin all-plugins)
      (load plugin))))
	
	
				 
		   
