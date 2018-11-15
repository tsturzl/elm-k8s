{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1LimitRangeSpec exposing (IoK8sApiCoreV1LimitRangeSpec, ioK8sApiCoreV1LimitRangeSpecDecoder, ioK8sApiCoreV1LimitRangeSpecEncoder)

import Data.IoK8sApiCoreV1LimitRangeItem exposing (IoK8sApiCoreV1LimitRangeItem, ioK8sApiCoreV1LimitRangeItemDecoder, ioK8sApiCoreV1LimitRangeItemEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   LimitRangeSpec defines a min/max usage limit for resources that match on kind.
-}


type alias IoK8sApiCoreV1LimitRangeSpec =
    { limits : (List IoK8sApiCoreV1LimitRangeItem)
    }


ioK8sApiCoreV1LimitRangeSpecDecoder : Decoder IoK8sApiCoreV1LimitRangeSpec
ioK8sApiCoreV1LimitRangeSpecDecoder =
    decode IoK8sApiCoreV1LimitRangeSpec
        |> required "limits" (Decode.list ioK8sApiCoreV1LimitRangeItemDecoder)



ioK8sApiCoreV1LimitRangeSpecEncoder : IoK8sApiCoreV1LimitRangeSpec -> Encode.Value
ioK8sApiCoreV1LimitRangeSpecEncoder model =
    Encode.object
        [ ( "limits", (Encode.list << List.map ioK8sApiCoreV1LimitRangeItemEncoder) model.limits )
        ]

