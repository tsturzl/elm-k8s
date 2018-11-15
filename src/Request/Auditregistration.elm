{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Request.Auditregistration exposing (getAuditregistrationAPIGroup)

import Data.IoK8sApimachineryPkgApisMetaV1APIGroup exposing (IoK8sApimachineryPkgApisMetaV1APIGroup, ioK8sApimachineryPkgApisMetaV1APIGroupDecoder)
import Http
import Json.Decode as Decode


basePath : String
basePath =
    "https://localhost"


{-
   get information of a group
-}
getAuditregistrationAPIGroup : Http.Request IoK8sApimachineryPkgApisMetaV1APIGroup
getAuditregistrationAPIGroup =
    { method = "GET"
    , url = basePath ++ "/apis/auditregistration.k8s.io/"
    , headers = []
    , body = Http.emptyBody
    , expect = Http.expectJson ioK8sApimachineryPkgApisMetaV1APIGroupDecoder
    , timeout = Just 30000
    , withCredentials = False
    }
        |> Http.request


