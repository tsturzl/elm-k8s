{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec exposing (IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec, ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecDecoder, ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec =
    { namespace : Maybe String
    }


ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecDecoder : Decoder IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec
ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecDecoder =
    decode IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec
        |> optional "namespace" (Decode.nullable Decode.string) Nothing



ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecEncoder : IoK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpec -> Encode.Value
ioK8sApiAuthorizationV1beta1SelfSubjectRulesReviewSpecEncoder model =
    Encode.object
        [ ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        ]


