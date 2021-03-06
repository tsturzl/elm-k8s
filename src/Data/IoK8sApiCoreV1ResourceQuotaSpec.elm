{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApiCoreV1ResourceQuotaSpec exposing (IoK8sApiCoreV1ResourceQuotaSpec, ioK8sApiCoreV1ResourceQuotaSpecDecoder, ioK8sApiCoreV1ResourceQuotaSpecEncoder)

import Data.IoK8sApimachineryPkgApiResourceQuantity exposing (IoK8sApimachineryPkgApiResourceQuantity, ioK8sApimachineryPkgApiResourceQuantityDecoder, ioK8sApimachineryPkgApiResourceQuantityEncoder)
import Data.IoK8sApiCoreV1ScopeSelector exposing (IoK8sApiCoreV1ScopeSelector, ioK8sApiCoreV1ScopeSelectorDecoder, ioK8sApiCoreV1ScopeSelectorEncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
-}


type alias IoK8sApiCoreV1ResourceQuotaSpec =
    { hard : Maybe (List IoK8sApimachineryPkgApiResourceQuantity)
    , scopeSelector : Maybe IoK8sApiCoreV1ScopeSelector
    , scopes : Maybe (List String)
    }


ioK8sApiCoreV1ResourceQuotaSpecDecoder : Decoder IoK8sApiCoreV1ResourceQuotaSpec
ioK8sApiCoreV1ResourceQuotaSpecDecoder =
    decode IoK8sApiCoreV1ResourceQuotaSpec
        |> optional "hard" (Decode.nullable (Decode.list ioK8sApimachineryPkgApiResourceQuantityDecoder)) Nothing
        |> optional "scopeSelector" (Decode.nullable ioK8sApiCoreV1ScopeSelectorDecoder) Nothing
        |> optional "scopes" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApiCoreV1ResourceQuotaSpecEncoder : IoK8sApiCoreV1ResourceQuotaSpec -> Encode.Value
ioK8sApiCoreV1ResourceQuotaSpecEncoder model =
    Encode.object
        [ ( "hard", withDefault Encode.null (map (Encode.list << List.map ioK8sApimachineryPkgApiResourceQuantityEncoder) model.hard) )
        , ( "scopeSelector", withDefault Encode.null (map ioK8sApiCoreV1ScopeSelectorEncoder model.scopeSelector) )
        , ( "scopes", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.scopes) )
        ]


