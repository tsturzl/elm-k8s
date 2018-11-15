{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiAuthorizationV1LocalSubjectAccessReview exposing (IoK8sApiAuthorizationV1LocalSubjectAccessReview, ioK8sApiAuthorizationV1LocalSubjectAccessReviewDecoder, ioK8sApiAuthorizationV1LocalSubjectAccessReviewEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ObjectMeta exposing (IoK8sApimachineryPkgApisMetaV1ObjectMeta, ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder, ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder)
import Data.IoK8sApiAuthorizationV1SubjectAccessReviewSpec exposing (IoK8sApiAuthorizationV1SubjectAccessReviewSpec, ioK8sApiAuthorizationV1SubjectAccessReviewSpecDecoder, ioK8sApiAuthorizationV1SubjectAccessReviewSpecEncoder)
import Data.IoK8sApiAuthorizationV1SubjectAccessReviewStatus exposing (IoK8sApiAuthorizationV1SubjectAccessReviewStatus, ioK8sApiAuthorizationV1SubjectAccessReviewStatusDecoder, ioK8sApiAuthorizationV1SubjectAccessReviewStatusEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace. Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions checking.
-}


type alias IoK8sApiAuthorizationV1LocalSubjectAccessReview =
    { apiVersion : Maybe String
    , kind : Maybe String
    , metadata : Maybe IoK8sApimachineryPkgApisMetaV1ObjectMeta
    , spec : IoK8sApiAuthorizationV1SubjectAccessReviewSpec
    , status : Maybe IoK8sApiAuthorizationV1SubjectAccessReviewStatus
    }


ioK8sApiAuthorizationV1LocalSubjectAccessReviewDecoder : Decoder IoK8sApiAuthorizationV1LocalSubjectAccessReview
ioK8sApiAuthorizationV1LocalSubjectAccessReviewDecoder =
    decode IoK8sApiAuthorizationV1LocalSubjectAccessReview
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> optional "metadata" (Decode.nullable ioK8sApimachineryPkgApisMetaV1ObjectMetaDecoder) Nothing
        |> required "spec" ioK8sApiAuthorizationV1SubjectAccessReviewSpecDecoder
        |> optional "status" (Decode.nullable ioK8sApiAuthorizationV1SubjectAccessReviewStatusDecoder) Nothing



ioK8sApiAuthorizationV1LocalSubjectAccessReviewEncoder : IoK8sApiAuthorizationV1LocalSubjectAccessReview -> Encode.Value
ioK8sApiAuthorizationV1LocalSubjectAccessReviewEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "metadata", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1ObjectMetaEncoder model.metadata) )
        , ( "spec", ioK8sApiAuthorizationV1SubjectAccessReviewSpecEncoder model.spec )
        , ( "status", withDefault Encode.null (map ioK8sApiAuthorizationV1SubjectAccessReviewStatusEncoder model.status) )
        ]


