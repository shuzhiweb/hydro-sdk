import {Type} from "../../dart/core/type";
import {Color} from "../../dart/ui/color";
import {TextAffinity} from "../../dart/ui/textAffinity";
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Widget} from "../widget";
import {JITAllocatingRTManagedBox} from "../../syntheticBox";

import {TextStyle} from "./../../flutter/painting/textStyle";
import {EdgeInsets} from "./../../flutter/painting/edgeInsets";
import {BoxConstraints} from "./../../flutter/rendering/boxConstraints";

export interface TextSelectionProps {
    baseOffset: number;
    extentOffset: number;
    affinity?: TextAffinity | undefined;
    isDirectional?: boolean | undefined;
}

declare const flutter: {
    services: {
        textSelection: (this: void, props: TextSelectionProps) => TextSelection;
    };
};

export class TextSelection extends JITAllocatingRTManagedBox<TextSelectionProps, TextSelection> implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(TextSelection);
    public props: TextSelectionProps;

    public constructor(props: TextSelectionProps) 
    {
        super();

        this.props = props;

        if (this.props.affinity === undefined) 
        {
            this.props.affinity = TextAffinity.downstream;
        }

        if (this.props.isDirectional === undefined) 
        {
            this.props.isDirectional = false;
        }
    }

    public static collapsed(props: {
        offset: number;
        affinity?: TextAffinity | undefined;
    }) 
    {
        return new TextSelection({
            baseOffset: props.offset,
            extentOffset: props.offset,
            isDirectional: false,
            affinity: props.affinity
        });
    }
    //fromPosition

    public unwrap() 
    {
        return flutter.services.textSelection(this.props);
    }
}