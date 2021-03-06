{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ResourceRequirements exposing (IoK8sApiCoreV1ResourceRequirements, ioK8sApiCoreV1ResourceRequirementsDecoder, ioK8sApiCoreV1ResourceRequirementsEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ResourceRequirements describes the compute resource requirements.
-}


type alias IoK8sApiCoreV1ResourceRequirements =
    { limits : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , requests : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    }


ioK8sApiCoreV1ResourceRequirementsDecoder : Decoder IoK8sApiCoreV1ResourceRequirements
ioK8sApiCoreV1ResourceRequirementsDecoder =
    decode IoK8sApiCoreV1ResourceRequirements
        |> optional "limits" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "requests" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing



ioK8sApiCoreV1ResourceRequirementsEncoder : IoK8sApiCoreV1ResourceRequirements -> Encode.Value
ioK8sApiCoreV1ResourceRequirementsEncoder model =
    Encode.object
        [ ( "limits", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.limits) )
        , ( "requests", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.requests) )
        ]


