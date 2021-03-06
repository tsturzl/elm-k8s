{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.AutoscalingV2beta1 exposing (createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler, deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, getAutoscalingV2beta1APIResources, listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces, listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus, readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus, replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus, watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces, watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler, watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList)

import Data.IoK8sApimachineryPkgApisMetaV1DeleteOptions exposing (IoK8sApimachineryPkgApisMetaV1DeleteOptions, ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Status exposing (IoK8sApimachineryPkgApisMetaV1Status, ioK8sApimachineryPkgApisMetaV1StatusDecoder)
import Data.IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler exposing (IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1APIResourceList exposing (IoK8sApimachineryPkgApisMetaV1APIResourceList, ioK8sApimachineryPkgApisMetaV1APIResourceListDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1Patch exposing (IoK8sApimachineryPkgApisMetaV1Patch, ioK8sApimachineryPkgApisMetaV1PatchEncoder)
import Data.IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerList exposing (IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerList, ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerListDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1WatchEvent exposing (IoK8sApimachineryPkgApisMetaV1WatchEvent, ioK8sApimachineryPkgApisMetaV1WatchEventDecoder)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "https://localhost"


{-
   create a HorizontalPodAutoscaler
-}
createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
createAutoscalingV2beta1NamespacedHorizontalPodAutoscaler namespace model =
    { method = "POST"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers"
    , headers = []
    , body = Http.jsonBody <| ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerEncoder model
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   delete collection of HorizontalPodAutoscaler
-}
deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler : String -> Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteAutoscalingV2beta1CollectionNamespacedHorizontalPodAutoscaler namespace =
    { method = "DELETE"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1StatusDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   delete a HorizontalPodAutoscaler
-}
deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> String -> IoK8sApimachineryPkgApisMetaV1DeleteOptions -> Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteAutoscalingV2beta1NamespacedHorizontalPodAutoscaler name namespace model =
    { method = "DELETE"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder model
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1StatusDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   get available resources
-}
getAutoscalingV2beta1APIResources : Http.Request IoK8sApimachineryPkgApisMetaV1APIResourceList
getAutoscalingV2beta1APIResources =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1APIResourceListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   list or watch objects of kind HorizontalPodAutoscaler
-}
listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces : Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerList
listAutoscalingV2beta1HorizontalPodAutoscalerForAllNamespaces =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/horizontalpodautoscalers"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   list or watch objects of kind HorizontalPodAutoscaler
-}
listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscalerList
listAutoscalingV2beta1NamespacedHorizontalPodAutoscaler namespace =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   partially update the specified HorizontalPodAutoscaler
-}
patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> String -> IoK8sApimachineryPkgApisMetaV1Patch -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
patchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler name namespace model =
    { method = "PATCH"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApimachineryPkgApisMetaV1PatchEncoder model
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   partially update status of the specified HorizontalPodAutoscaler
-}
patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus : String -> String -> IoK8sApimachineryPkgApisMetaV1Patch -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
patchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus name namespace model =
    { method = "PATCH"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name ++ "/status"
    , headers = []
    , body = Http.jsonBody <| ioK8sApimachineryPkgApisMetaV1PatchEncoder model
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   read the specified HorizontalPodAutoscaler
-}
readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> String -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
readAutoscalingV2beta1NamespacedHorizontalPodAutoscaler name namespace =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   read status of the specified HorizontalPodAutoscaler
-}
readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus : String -> String -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
readAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus name namespace =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name ++ "/status"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   replace the specified HorizontalPodAutoscaler
-}
replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> String -> IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscaler name namespace model =
    { method = "PUT"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerEncoder model
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   replace status of the specified HorizontalPodAutoscaler
-}
replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus : String -> String -> IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler -> Http.Request IoK8sApiAutoscalingV2beta1HorizontalPodAutoscaler
replaceAutoscalingV2beta1NamespacedHorizontalPodAutoscalerStatus name namespace model =
    { method = "PUT"
    , url = basePath ++ "/apis/autoscaling/v2beta1/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name ++ "/status"
    , headers = []
    , body = Http.jsonBody <| ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerEncoder model
    , expect = Http.expectJson ioK8sApiAutoscalingV2beta1HorizontalPodAutoscalerDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
-}
watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces : Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchAutoscalingV2beta1HorizontalPodAutoscalerListForAllNamespaces =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/watch/horizontalpodautoscalers"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch changes to an object of kind HorizontalPodAutoscaler. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
-}
watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler : String -> String -> Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchAutoscalingV2beta1NamespacedHorizontalPodAutoscaler name namespace =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/watch/namespaces/" ++ namespace ++ "/horizontalpodautoscalers/" ++ name
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch individual changes to a list of HorizontalPodAutoscaler. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
-}
watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList : String -> Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchAutoscalingV2beta1NamespacedHorizontalPodAutoscalerList namespace =
    { method = "GET"
    , url = basePath ++ "/apis/autoscaling/v2beta1/watch/namespaces/" ++ namespace ++ "/horizontalpodautoscalers"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


