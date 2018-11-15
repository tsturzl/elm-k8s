{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.Core exposing (getCoreAPIVersions)

import Data.IoK8sApimachineryPkgApisMetaV1APIVersions exposing (IoK8sApimachineryPkgApisMetaV1APIVersions, ioK8sApimachineryPkgApisMetaV1APIVersionsDecoder)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "https://localhost"


{-
   get available API versions
-}
getCoreAPIVersions : Http.Request IoK8sApimachineryPkgApisMetaV1APIVersions
getCoreAPIVersions =
    { method = "GET"
    , url = basePath ++ "/api/"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1APIVersionsDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


