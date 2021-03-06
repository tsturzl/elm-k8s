{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1Taint exposing (IoK8sApiCoreV1Taint, ioK8sApiCoreV1TaintDecoder, ioK8sApiCoreV1TaintEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1Time exposing (IoK8sApimachineryPkgApisMetaV1Time, ioK8sApimachineryPkgApisMetaV1TimeDecoder, ioK8sApimachineryPkgApisMetaV1TimeEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   The node this Taint is attached to has the \"effect\" on any pod that does not tolerate the Taint.
-}


type alias IoK8sApiCoreV1Taint =
    { effect : String
    , key : String
    , timeAdded : Maybe IoK8sApimachineryPkgApisMetaV1Time
    , value : Maybe String
    }


ioK8sApiCoreV1TaintDecoder : Decoder IoK8sApiCoreV1Taint
ioK8sApiCoreV1TaintDecoder =
    decode IoK8sApiCoreV1Taint
        |> required "effect" Decode.string
        |> required "key" Decode.string
        |> optional "timeAdded" (Decode.nullable ioK8sApimachineryPkgApisMetaV1TimeDecoder) Nothing
        |> optional "value" (Decode.nullable Decode.string) Nothing



ioK8sApiCoreV1TaintEncoder : IoK8sApiCoreV1Taint -> Encode.Value
ioK8sApiCoreV1TaintEncoder model =
    Encode.object
        [ ( "effect", Encode.string model.effect )
        , ( "key", Encode.string model.key )
        , ( "timeAdded", withDefault Encode.null (map ioK8sApimachineryPkgApisMetaV1TimeEncoder model.timeAdded) )
        , ( "value", withDefault Encode.null (map Encode.string model.value) )
        ]


