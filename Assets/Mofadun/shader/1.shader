// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33904,y:33156,varname:node_4013,prsc:2|emission-2619-OUT,alpha-9902-A;n:type:ShaderForge.SFN_Fresnel,id:1426,x:32146,y:33040,varname:node_1426,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8982,x:32110,y:33167,varname:node_8982,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3195,x:32387,y:33088,varname:node_3195,prsc:2|A-1426-OUT,B-8982-OUT,C-9441-OUT;n:type:ShaderForge.SFN_Multiply,id:662,x:32815,y:33147,varname:node_662,prsc:2|A-6509-OUT,B-9693-OUT,C-3195-OUT;n:type:ShaderForge.SFN_Vector3,id:9441,x:32247,y:33196,varname:node_9441,prsc:2,v1:1,v2:0.8068966,v3:0;n:type:ShaderForge.SFN_Vector1,id:9693,x:32316,y:33344,varname:node_9693,prsc:2,v1:8;n:type:ShaderForge.SFN_Fresnel,id:4562,x:31700,y:33176,varname:node_4562,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8831,x:31667,y:33366,varname:node_8831,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Multiply,id:1709,x:31885,y:33252,varname:node_1709,prsc:2|A-4562-OUT,B-8831-OUT;n:type:ShaderForge.SFN_Vector3,id:9919,x:31885,y:33418,varname:node_9919,prsc:2,v1:0.9926471,v2:0.7792178,v3:0.2189662;n:type:ShaderForge.SFN_Multiply,id:6509,x:32110,y:33333,varname:node_6509,prsc:2|A-1709-OUT,B-9919-OUT,C-2087-OUT;n:type:ShaderForge.SFN_Vector1,id:2087,x:31860,y:33526,varname:node_2087,prsc:2,v1:3;n:type:ShaderForge.SFN_VertexColor,id:9902,x:32737,y:32836,varname:node_9902,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:222,x:32708,y:33379,ptovrint:False,ptlb:node_222,ptin:_node_222,varname:node_222,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:0350242d1034c8b44b042eece9b281ba,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2619,x:33135,y:33301,varname:node_2619,prsc:2|A-662-OUT,B-222-RGB,C-9902-RGB;proporder:222;pass:END;sub:END;*/

Shader "Shader Forge/扫光" {
    Properties {
        _node_222 ("node_222", 2D) = "white" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _node_222; uniform float4 _node_222_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_222_var = tex2D(_node_222,TRANSFORM_TEX(i.uv0, _node_222));
                float3 emissive = (((((1.0-max(0,dot(normalDirection, viewDirection)))*0.4)*float3(0.9926471,0.7792178,0.2189662)*3.0)*8.0*((1.0-max(0,dot(normalDirection, viewDirection)))*0.5*float3(1,0.8068966,0)))*_node_222_var.rgb*i.vertexColor.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,i.vertexColor.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
