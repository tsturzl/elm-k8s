{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec exposing (IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec, ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecDecoder, ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)




type alias IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec =
    { namespace : Maybe String
    }


ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecDecoder : Decoder IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec
ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecDecoder =
    decode IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec
        |> optional "namespace" (Decode.nullable Decode.string) Nothing



ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecEncoder : IoK8sApiAuthorizationV1SelfSubjectRulesReviewSpec -> Encode.Value
ioK8sApiAuthorizationV1SelfSubjectRulesReviewSpecEncoder model =
    Encode.object
        [ ( "namespace", withDefault Encode.null (map Encode.string model.namespace) )
        ]

