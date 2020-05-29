(ns pizza.db
  (:require [clojure.java.jdbc :as jdbc]))

(def mysql-db
  {
   :dbtype "postgresql"
   :dbname "pizza"
   :host "localhost"
   :port 5432
   :user "postgres"
   :password "root"
   }
  )

(defn getByUsernamePassword [username password]
      (first (jdbc/query mysql-db
                         ["SELECT * FROM account WHERE username = ? AND password = ?" username  password ])))

  (defn add-order [street municipality mobile total date description]
    (jdbc/insert! mysql-db :listorder [:street :municipality :mobile :totla :date :description] [street municipality mobile total date description])
  )
(defn get-all-orders []
  (into [] (jdbc/query mysql-db ["SELECT * FROM listorder"])))

(defn delete-order [id]
  (jdbc/delete! mysql-db :listorder
               ["id = ?" (Integer/parseInt id)]))

(defn get-order-by-id [id]
  (first (jdbc/query mysql-db ["select * from listorder where id = ?" (Integer/parseInt id)])))

(defn update-order [id street municipality mobile total date description]
  (jdbc/update! mysql-db :listorder {:id (Integer/parseInt id) :street street :municipality municipality :mobile mobile :totla total :date date :description description} ["id = ?" (Integer/parseInt id)]))