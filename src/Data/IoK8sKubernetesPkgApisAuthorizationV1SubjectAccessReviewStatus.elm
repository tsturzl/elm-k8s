{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus exposing (IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus, ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusDecoder, ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus =
    {     }


ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusDecoder : Decoder IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus
ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusDecoder =
    decode IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus



ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusEncoder : IoK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatus -> Encode.Value
ioK8sKubernetesPkgApisAuthorizationV1SubjectAccessReviewStatusEncoder model =
    Encode.object
        ]

