{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec exposing (IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec, ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecDecoder, ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec =
    {     }


ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecDecoder : Decoder IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec
ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecDecoder =
    decode IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec



ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecEncoder : IoK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpec -> Encode.Value
ioK8sKubernetesPkgApisAuthorizationV1beta1SubjectAccessReviewSpecEncoder model =
    Encode.object
        ]


