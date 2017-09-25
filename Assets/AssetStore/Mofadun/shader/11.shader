// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.32 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.32;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:0,dpts:2,wrdp:False,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:4013,x:33745,y:33182,varname:node_4013,prsc:2|emission-9075-OUT,alpha-9902-A;n:type:ShaderForge.SFN_Fresnel,id:1426,x:32030,y:32861,varname:node_1426,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8982,x:31998,y:32985,varname:node_8982,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:3195,x:32406,y:33014,varname:node_3195,prsc:2|A-1426-OUT,B-8982-OUT,C-9441-OUT,D-1781-R;n:type:ShaderForge.SFN_Multiply,id:662,x:32595,y:33203,varname:node_662,prsc:2|A-3195-OUT,B-6509-OUT,C-9693-OUT;n:type:ShaderForge.SFN_Vector3,id:9441,x:31998,y:33038,varname:node_9441,prsc:2,v1:1,v2:0.8068966,v3:0;n:type:ShaderForge.SFN_Vector1,id:9693,x:32316,y:33344,varname:node_9693,prsc:2,v1:5;n:type:ShaderForge.SFN_Panner,id:8835,x:32188,y:33592,varname:node_8835,prsc:2,spu:0,spv:0.5|UVIN-630-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:630,x:31958,y:33622,varname:node_630,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:1679,x:32500,y:33425,ptovrint:False,ptlb:node_1679,ptin:_node_1679,varname:node_1679,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:7386783af17fccd42a266e28d3e6e80c,ntxv:0,isnm:False|UVIN-8524-UVOUT;n:type:ShaderForge.SFN_Multiply,id:880,x:33222,y:33376,varname:node_880,prsc:2|A-3612-OUT,B-3961-OUT,C-5260-OUT;n:type:ShaderForge.SFN_Fresnel,id:4562,x:31700,y:33176,varname:node_4562,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8831,x:31762,y:33349,varname:node_8831,prsc:2,v1:0.3;n:type:ShaderForge.SFN_Multiply,id:1709,x:31885,y:33252,varname:node_1709,prsc:2|A-4562-OUT,B-8831-OUT;n:type:ShaderForge.SFN_Vector3,id:9919,x:31885,y:33419,varname:node_9919,prsc:2,v1:1,v2:0.6827586,v3:0;n:type:ShaderForge.SFN_Multiply,id:6509,x:32110,y:33333,varname:node_6509,prsc:2|A-1709-OUT,B-9919-OUT,C-2087-OUT;n:type:ShaderForge.SFN_Vector1,id:2087,x:31860,y:33526,varname:node_2087,prsc:2,v1:3;n:type:ShaderForge.SFN_Vector1,id:3612,x:32770,y:33338,varname:node_3612,prsc:2,v1:1;n:type:ShaderForge.SFN_Power,id:3961,x:32801,y:33543,varname:node_3961,prsc:2|VAL-1679-R,EXP-8151-OUT;n:type:ShaderForge.SFN_Vector1,id:8151,x:32801,y:33798,varname:node_8151,prsc:2,v1:4;n:type:ShaderForge.SFN_VertexColor,id:9902,x:32982,y:32675,varname:node_9902,prsc:2;n:type:ShaderForge.SFN_Add,id:9075,x:33192,y:32986,varname:node_9075,prsc:2|A-662-OUT,B-6997-OUT;n:type:ShaderForge.SFN_Multiply,id:6997,x:33017,y:33164,varname:node_6997,prsc:2|A-880-OUT,B-9902-RGB;n:type:ShaderForge.SFN_Rotator,id:8524,x:32464,y:33735,varname:node_8524,prsc:2|UVIN-8835-UVOUT,ANG-7176-OUT;n:type:ShaderForge.SFN_Vector1,id:7176,x:32275,y:33815,varname:node_7176,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector3,id:5260,x:33067,y:33539,varname:node_5260,prsc:2,v1:1,v2:0.7241379,v3:0;n:type:ShaderForge.SFN_Tex2d,id:1781,x:32170,y:33166,ptovrint:False,ptlb:node_1781,ptin:_node_1781,varname:node_1781,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ae1111e40e321fe4a954c99c38ea7a02,ntxv:0,isnm:False;proporder:1679-1781;pass:END;sub:END;*/

Shader "Shader Forge/扫光" {
    Properties {
        _node_1679 ("node_1679", 2D) = "white" {}
        _node_1781 ("node_1781", 2D) = "white" {}
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_1679; uniform float4 _node_1679_ST;
            uniform sampler2D _node_1781; uniform float4 _node_1781_ST;
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
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _node_1781_var = tex2D(_node_1781,TRANSFORM_TEX(i.uv0, _node_1781));
                float node_8524_ang = 0.5;
                float node_8524_spd = 1.0;
                float node_8524_cos = cos(node_8524_spd*node_8524_ang);
                float node_8524_sin = sin(node_8524_spd*node_8524_ang);
                float2 node_8524_piv = float2(0.5,0.5);
                float4 node_8787 = _Time + _TimeEditor;
                float2 node_8524 = (mul((i.uv0+node_8787.g*float2(0,0.5))-node_8524_piv,float2x2( node_8524_cos, -node_8524_sin, node_8524_sin, node_8524_cos))+node_8524_piv);
                float4 _node_1679_var = tex2D(_node_1679,TRANSFORM_TEX(node_8524, _node_1679));
                float3 emissive = ((((1.0-max(0,dot(normalDirection, viewDirection)))*0.5*float3(1,0.8068966,0)*_node_1781_var.r)*(((1.0-max(0,dot(normalDirection, viewDirection)))*0.3)*float3(1,0.6827586,0)*3.0)*5.0)+((1.0*pow(_node_1679_var.r,4.0)*float3(1,0.7241379,0))*i.vertexColor.rgb));
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
