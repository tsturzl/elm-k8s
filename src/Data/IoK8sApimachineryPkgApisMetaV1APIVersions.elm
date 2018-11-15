{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1APIVersions exposing (IoK8sApimachineryPkgApisMetaV1APIVersions, ioK8sApimachineryPkgApisMetaV1APIVersionsDecoder, ioK8sApimachineryPkgApisMetaV1APIVersionsEncoder)

import Data.IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR exposing (IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR, ioK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRDecoder, ioK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDREncoder)
import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
-}


type alias IoK8sApimachineryPkgApisMetaV1APIVersions =
    { apiVersion : Maybe String
    , kind : Maybe String
    , serverAddressByClientCIDRs : (List IoK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDR)
    , versions : (List String)
    }


ioK8sApimachineryPkgApisMetaV1APIVersionsDecoder : Decoder IoK8sApimachineryPkgApisMetaV1APIVersions
ioK8sApimachineryPkgApisMetaV1APIVersionsDecoder =
    decode IoK8sApimachineryPkgApisMetaV1APIVersions
        |> optional "apiVersion" (Decode.nullable Decode.string) Nothing
        |> optional "kind" (Decode.nullable Decode.string) Nothing
        |> required "serverAddressByClientCIDRs" (Decode.list ioK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDRDecoder)
        |> required "versions" (Decode.list Decode.string)



ioK8sApimachineryPkgApisMetaV1APIVersionsEncoder : IoK8sApimachineryPkgApisMetaV1APIVersions -> Encode.Value
ioK8sApimachineryPkgApisMetaV1APIVersionsEncoder model =
    Encode.object
        [ ( "apiVersion", withDefault Encode.null (map Encode.string model.apiVersion) )
        , ( "kind", withDefault Encode.null (map Encode.string model.kind) )
        , ( "serverAddressByClientCIDRs", (Encode.list << List.map ioK8sApimachineryPkgApisMetaV1ServerAddressByClientCIDREncoder) model.serverAddressByClientCIDRs )
        , ( "versions", (Encode.list << List.map Encode.string) model.versions )
        ]


