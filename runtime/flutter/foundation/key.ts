
import {RuntimeBaseClass} from "../../runtimeBaseClass";
import {Type} from "../../dart/core/type";

import {JITAllocatingRTManagedBox} from "./../../syntheticBox";

declare const flutter: {
    foundation: {
        key: (this: void, value: string) => Key;
    };
};

export class Key extends JITAllocatingRTManagedBox<{}, {}> implements RuntimeBaseClass 
{
    public readonly internalRuntimeType = new Type(Key);
    public value: string;
    public props: never;
    public constructor(value: string) 
    {
        super();
        this.value = value;
    }

    public unwrap(): Key 
    {
        return flutter.foundation.key(this.value);
    }
}