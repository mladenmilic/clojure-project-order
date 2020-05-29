(ns pizza.view
  (:use ring.util.json-response)
  (:require
    [clostache.parser :as clostache]
    [pizza.db :as db]
    [clojure.string :as str]
    [ring.util.response :as ring]))
(defn read-template [template-name]
      (slurp (clojure.java.io/resource
               (str "pages/" template-name ".mustache"))))

(defn render-template [template-file params]
      (clostache/render (read-template template-file) params))

(defn login []
      (render-template "loginpage" {}))
(defn afterLogin [uname psw]
  (if (db/getByUsernamePassword uname psw)
    (render-template "login-page-successful" {:user db/getByUsernamePassword uname psw })
    (render-template "loginpage" {})
    )
  )
(defn list-orders []
  (render-template "list-orders"  {:orders (db/get-all-orders)}))

(defn create-order []
  (render-template "create-order" {}))

(defn add-order [street municipality mobile total date description]
  (when-not (str/blank? street)
    (db/add-order street municipality mobile total date description))
  (ring/redirect "/list-order"))

(defn delete-order [id]
  (when-not (str/blank? id)
    (db/delete-order id))
  (ring/redirect "/list-order"))

(defn show-order [id]
  (render-template "update-order" {:order (db/get-order-by-id id)}))

(defn update-order [id street municipality mobile total date description]
  (when-not (str/blank? street)
    (db/update-order id street municipality mobile total date description))
  (ring/redirect "/list-order"))

(defn menu []
  (render-template "login-page-successful" {}))