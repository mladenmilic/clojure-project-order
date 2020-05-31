(defproject pizza "0.1.0-SNAPSHOT"
  :description "FIXME: write description"
  :url "http://example.com/FIXME"
  :min-lein-version "2.0.0"
  :dependencies [[org.clojure/clojure "1.10.0"]
                 [compojure "1.6.1"]
                 [org.clojure/java.jdbc "0.4.2"]
                 [org.postgresql/postgresql "42.1.4"]
                 [mysql/mysql-connector-java "8.0.20"]
                 [de.ubercode.clostache/clostache "1.4.0"]
                 [ring/ring-json "0.4.0"]
                 [ring-json-response "0.2.0"]
                 [ring/ring-defaults "0.3.2"]]
  :plugins [[lein-ring "0.12.5"]]
  :ring {:handler pizza.handler/app}
  :profiles
  {:dev {:dependencies [[javax.servlet/servlet-api "2.5"]
                        [ring/ring-mock "0.3.2"]]}})
:jvm-opts ["-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=5010"]
