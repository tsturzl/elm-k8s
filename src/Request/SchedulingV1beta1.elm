{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.SchedulingV1beta1 exposing (createSchedulingV1beta1PriorityClass, deleteSchedulingV1beta1CollectionPriorityClass, deleteSchedulingV1beta1PriorityClass, getSchedulingV1beta1APIResources, listSchedulingV1beta1PriorityClass, patchSchedulingV1beta1PriorityClass, readSchedulingV1beta1PriorityClass, replaceSchedulingV1beta1PriorityClass, watchSchedulingV1beta1PriorityClass, watchSchedulingV1beta1PriorityClassList)

import Data.IoK8sApimachineryPkgApisMetaV1DeleteOptions exposing (IoK8sApimachineryPkgApisMetaV1DeleteOptions, ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Status exposing (IoK8sApimachineryPkgApisMetaV1Status, ioK8sApimachineryPkgApisMetaV1StatusDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1APIResourceList exposing (IoK8sApimachineryPkgApisMetaV1APIResourceList, ioK8sApimachineryPkgApisMetaV1APIResourceListDecoder)
import Data.IoK8sApiSchedulingV1beta1PriorityClassList exposing (IoK8sApiSchedulingV1beta1PriorityClassList, ioK8sApiSchedulingV1beta1PriorityClassListDecoder)
import Data.IoK8sApiSchedulingV1beta1PriorityClass exposing (IoK8sApiSchedulingV1beta1PriorityClass, ioK8sApiSchedulingV1beta1PriorityClassDecoder, ioK8sApiSchedulingV1beta1PriorityClassEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Patch exposing (IoK8sApimachineryPkgApisMetaV1Patch, ioK8sApimachineryPkgApisMetaV1PatchEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1WatchEvent exposing (IoK8sApimachineryPkgApisMetaV1WatchEvent, ioK8sApimachineryPkgApisMetaV1WatchEventDecoder)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "https://localhost"


{-
   create a PriorityClass
-}
createSchedulingV1beta1PriorityClass : IoK8sApiSchedulingV1beta1PriorityClass -> Http.Request IoK8sApiSchedulingV1beta1PriorityClass
createSchedulingV1beta1PriorityClass model =
    { method = "POST"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses"
    , headers = []
    , body = Http.jsonBody <| ioK8sApiSchedulingV1beta1PriorityClassEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1beta1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   delete collection of PriorityClass
-}
deleteSchedulingV1beta1CollectionPriorityClass : Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteSchedulingV1beta1CollectionPriorityClass =
    { method = "DELETE"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1StatusDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   delete a PriorityClass
-}
deleteSchedulingV1beta1PriorityClass : String -> IoK8sApimachineryPkgApisMetaV1DeleteOptions -> Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteSchedulingV1beta1PriorityClass name model =
    { method = "DELETE"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses/" ++ name
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
getSchedulingV1beta1APIResources : Http.Request IoK8sApimachineryPkgApisMetaV1APIResourceList
getSchedulingV1beta1APIResources =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1APIResourceListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   list or watch objects of kind PriorityClass
-}
listSchedulingV1beta1PriorityClass : Http.Request IoK8sApiSchedulingV1beta1PriorityClassList
listSchedulingV1beta1PriorityClass =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiSchedulingV1beta1PriorityClassListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   partially update the specified PriorityClass
-}
patchSchedulingV1beta1PriorityClass : String -> IoK8sApimachineryPkgApisMetaV1Patch -> Http.Request IoK8sApiSchedulingV1beta1PriorityClass
patchSchedulingV1beta1PriorityClass name model =
    { method = "PATCH"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApimachineryPkgApisMetaV1PatchEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1beta1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   read the specified PriorityClass
-}
readSchedulingV1beta1PriorityClass : String -> Http.Request IoK8sApiSchedulingV1beta1PriorityClass
readSchedulingV1beta1PriorityClass name =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses/" ++ name
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiSchedulingV1beta1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   replace the specified PriorityClass
-}
replaceSchedulingV1beta1PriorityClass : String -> IoK8sApiSchedulingV1beta1PriorityClass -> Http.Request IoK8sApiSchedulingV1beta1PriorityClass
replaceSchedulingV1beta1PriorityClass name model =
    { method = "PUT"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/priorityclasses/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApiSchedulingV1beta1PriorityClassEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1beta1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch changes to an object of kind PriorityClass. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
-}
watchSchedulingV1beta1PriorityClass : String -> Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchSchedulingV1beta1PriorityClass name =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/watch/priorityclasses/" ++ name
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch individual changes to a list of PriorityClass. deprecated: use the &#39;watch&#39; parameter with a list operation instead.
-}
watchSchedulingV1beta1PriorityClassList : Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchSchedulingV1beta1PriorityClassList =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1beta1/watch/priorityclasses"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


