﻿using System.Runtime.Serialization;

namespace Hadouken.Core.JsonRpc
{
    [DataContract]
    public class JsonRpcSuccessResponse : JsonRpcResponse
    {
        public JsonRpcSuccessResponse(object id, object result)
        {
            Id = id;
            Result = result;
        }

        [DataMember(Name = "result")]
        public object Result { get; private set; }
    }
}