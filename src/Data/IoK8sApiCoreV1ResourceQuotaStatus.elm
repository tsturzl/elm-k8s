{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ResourceQuotaStatus exposing (IoK8sApiCoreV1ResourceQuotaStatus, ioK8sApiCoreV1ResourceQuotaStatusDecoder, ioK8sApiCoreV1ResourceQuotaStatusEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ResourceQuotaStatus defines the enforced hard limits and observed use.
-}


type alias IoK8sApiCoreV1ResourceQuotaStatus =
    { hard : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , used : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    }


ioK8sApiCoreV1ResourceQuotaStatusDecoder : Decoder IoK8sApiCoreV1ResourceQuotaStatus
ioK8sApiCoreV1ResourceQuotaStatusDecoder =
    decode IoK8sApiCoreV1ResourceQuotaStatus
        |> optional "hard" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "used" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing



ioK8sApiCoreV1ResourceQuotaStatusEncoder : IoK8sApiCoreV1ResourceQuotaStatus -> Encode.Value
ioK8sApiCoreV1ResourceQuotaStatusEncoder model =
    Encode.object
        [ ( "hard", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.hard) )
        , ( "used", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.used) )
        ]


