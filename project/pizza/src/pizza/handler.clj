(ns pizza.handler
  (:require [compojure.core :refer :all]
            [compojure.route :as route]
            [pizza.view :as views]
            [ring.middleware.defaults :refer [wrap-defaults site-defaults]]))

(defroutes app-routes
  (GET "/" [] (views/login))
  (POST "/" [uname psw] (views/afterLogin uname psw))
  (GET "/list-order" [] (views/list-orders))
  (GET "/menu" [] (views/menu))
  (GET "/create-order" [] (views/create-order))
           (GET "/delete-order/:id" [id] (views/delete-order id))
  (POST "/create-order" [street municipality mobile total date description] (views/add-order street municipality mobile total date description))
  (GET "/update-order/:id" [id] (views/show-order id))
  (POST "/update-order" [id street municipality mobile total date description] (views/update-order id street municipality mobile total date description))
  (route/not-found "Not Found"))


(def app
  (wrap-defaults app-routes (assoc-in site-defaults [:security :anti-forgery] false)))
