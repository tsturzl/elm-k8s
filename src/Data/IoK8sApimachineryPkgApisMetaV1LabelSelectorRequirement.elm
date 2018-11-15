{-
   Kubernetes
   No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

   OpenAPI spec version: v1.14.0
   

   NOTE: This file is auto generated by the swagger code generator program.
   https://github.com/swagger-api/swagger-codegen.git
   Do not edit this file manually.
-}


module Data.IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement exposing (IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement, ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementDecoder, ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementEncoder)

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Pipeline exposing (decode, optional, required)
import Json.Encode as Encode
import Maybe exposing (map, withDefault)


{-
   A label selector requirement is a selector that contains values, a key, and an operator that relates the key and values.
-}


type alias IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement =
    { key : String
    , operator : String
    , values : Maybe (List String)
    }


ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementDecoder : Decoder IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement
ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementDecoder =
    decode IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement
        |> required "key" Decode.string
        |> required "operator" Decode.string
        |> optional "values" (Decode.nullable (Decode.list Decode.string)) Nothing



ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementEncoder : IoK8sApimachineryPkgApisMetaV1LabelSelectorRequirement -> Encode.Value
ioK8sApimachineryPkgApisMetaV1LabelSelectorRequirementEncoder model =
    Encode.object
        [ ( "key", Encode.string model.key )
        , ( "operator", Encode.string model.operator )
        , ( "values", withDefault Encode.null (map (Encode.list << List.map Encode.string) model.values) )
        ]

