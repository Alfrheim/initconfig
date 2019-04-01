{:repl
 {:plugins [
            [cider/cider-nrepl "0.21.1"]
            ;; [refactor-nrepl "2.0.0-SNAPSHOT"]
            ]
  :dependencies [[alembic "0.3.2"]
                 ;; [org.clojure/tools.nrepl "0.2.12"]
                 ]}

 :user {:plugins [[lein-localrepo "0.5.3"]
                  ;; [lein-midje "3.2.1"]
                  ;; [lein-auto "0.1.3"]
                  ;; [lein-ring "0.11.0"]
                  [lein-try "0.4.3"]]}
 :repositories [["localrepo1" "file:///home/alfrheim/.lein/repo/"]]}
