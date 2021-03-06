{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.SchedulingV1alpha1 exposing (createSchedulingV1alpha1PriorityClass, deleteSchedulingV1alpha1CollectionPriorityClass, deleteSchedulingV1alpha1PriorityClass, getSchedulingV1alpha1APIResources, listSchedulingV1alpha1PriorityClass, patchSchedulingV1alpha1PriorityClass, readSchedulingV1alpha1PriorityClass, replaceSchedulingV1alpha1PriorityClass, watchSchedulingV1alpha1PriorityClass, watchSchedulingV1alpha1PriorityClassList)

import Data.IoK8sApimachineryPkgApisMetaV1DeleteOptions exposing (IoK8sApimachineryPkgApisMetaV1DeleteOptions, ioK8sApimachineryPkgApisMetaV1DeleteOptionsEncoder)
import Data.IoK8sApimachineryPkgApisMetaV1Status exposing (IoK8sApimachineryPkgApisMetaV1Status, ioK8sApimachineryPkgApisMetaV1StatusDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1APIResourceList exposing (IoK8sApimachineryPkgApisMetaV1APIResourceList, ioK8sApimachineryPkgApisMetaV1APIResourceListDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1Patch exposing (IoK8sApimachineryPkgApisMetaV1Patch, ioK8sApimachineryPkgApisMetaV1PatchEncoder)
import Data.IoK8sApiSchedulingV1alpha1PriorityClassList exposing (IoK8sApiSchedulingV1alpha1PriorityClassList, ioK8sApiSchedulingV1alpha1PriorityClassListDecoder)
import Data.IoK8sApimachineryPkgApisMetaV1WatchEvent exposing (IoK8sApimachineryPkgApisMetaV1WatchEvent, ioK8sApimachineryPkgApisMetaV1WatchEventDecoder)
import Data.IoK8sApiSchedulingV1alpha1PriorityClass exposing (IoK8sApiSchedulingV1alpha1PriorityClass, ioK8sApiSchedulingV1alpha1PriorityClassDecoder, ioK8sApiSchedulingV1alpha1PriorityClassEncoder)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "https://localhost"


{-
   create a PriorityClass
-}
createSchedulingV1alpha1PriorityClass : IoK8sApiSchedulingV1alpha1PriorityClass -> Http.Request IoK8sApiSchedulingV1alpha1PriorityClass
createSchedulingV1alpha1PriorityClass model =
    { method = "POST"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses"
    , headers = []
    , body = Http.jsonBody <| ioK8sApiSchedulingV1alpha1PriorityClassEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1alpha1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   delete collection of PriorityClass
-}
deleteSchedulingV1alpha1CollectionPriorityClass : Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteSchedulingV1alpha1CollectionPriorityClass =
    { method = "DELETE"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses"
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
deleteSchedulingV1alpha1PriorityClass : String -> IoK8sApimachineryPkgApisMetaV1DeleteOptions -> Http.Request IoK8sApimachineryPkgApisMetaV1Status
deleteSchedulingV1alpha1PriorityClass name model =
    { method = "DELETE"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses/" ++ name
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
getSchedulingV1alpha1APIResources : Http.Request IoK8sApimachineryPkgApisMetaV1APIResourceList
getSchedulingV1alpha1APIResources =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/"
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
listSchedulingV1alpha1PriorityClass : Http.Request IoK8sApiSchedulingV1alpha1PriorityClassList
listSchedulingV1alpha1PriorityClass =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiSchedulingV1alpha1PriorityClassListDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   partially update the specified PriorityClass
-}
patchSchedulingV1alpha1PriorityClass : String -> IoK8sApimachineryPkgApisMetaV1Patch -> Http.Request IoK8sApiSchedulingV1alpha1PriorityClass
patchSchedulingV1alpha1PriorityClass name model =
    { method = "PATCH"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApimachineryPkgApisMetaV1PatchEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1alpha1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   read the specified PriorityClass
-}
readSchedulingV1alpha1PriorityClass : String -> Http.Request IoK8sApiSchedulingV1alpha1PriorityClass
readSchedulingV1alpha1PriorityClass name =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses/" ++ name
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApiSchedulingV1alpha1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   replace the specified PriorityClass
-}
replaceSchedulingV1alpha1PriorityClass : String -> IoK8sApiSchedulingV1alpha1PriorityClass -> Http.Request IoK8sApiSchedulingV1alpha1PriorityClass
replaceSchedulingV1alpha1PriorityClass name model =
    { method = "PUT"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/priorityclasses/" ++ name
    , headers = []
    , body = Http.jsonBody <| ioK8sApiSchedulingV1alpha1PriorityClassEncoder model
    , expect = Http.expectJson ioK8sApiSchedulingV1alpha1PriorityClassDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


{-
   watch changes to an object of kind PriorityClass. deprecated: use the &#39;watch&#39; parameter with a list operation instead, filtered to a single item with the &#39;fieldSelector&#39; parameter.
-}
watchSchedulingV1alpha1PriorityClass : String -> Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchSchedulingV1alpha1PriorityClass name =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/watch/priorityclasses/" ++ name
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
watchSchedulingV1alpha1PriorityClassList : Http.Request IoK8sApimachineryPkgApisMetaV1WatchEvent
watchSchedulingV1alpha1PriorityClassList =
    { method = "GET"
    , url = basePath ++ "/apis/scheduling.k8s.io/v1alpha1/watch/priorityclasses"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1WatchEventDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


