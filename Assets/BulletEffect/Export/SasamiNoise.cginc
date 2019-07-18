#ifndef SASAMI_NOISE_INCLUDED
#define SASAMI_NOISE_INCLUDED

#include "UnityCG.cginc"


// TRANSFORM_TEX�����̏���(vertex�V�F�[�_�[�ł̕ϊ�)
fixed2 TRANSFORM_NOISE_TEX(fixed2 uv, fixed4 tilingOffset, fixed4 sizeScroll) {
    // ���z�m�C�Y�e�N�X�`���T�C�Y, Tiling, Offset�̓K�p
    uv = uv * tilingOffset.xy * sizeScroll.xy + tilingOffset.zw;

    // Scroll�̓K�p�BTiling�ɍ��킹�����Α��x��UV�X�N���[�����s��
    uv += fixed2(sizeScroll.z * tilingOffset.x, -sizeScroll.w * tilingOffset.y) * _Time.y;

    return uv;
}


// �V�F�[�_�[�^������(fragment�V�F�[�_�[��UV����͂�0.0�`1.0��Ԃ�/texture size�����Ń��[�v���鏈����ǉ�)
fixed rand (fixed2 uv, fixed2 size) {
    uv = frac(uv/size);
    return frac(sin(dot(frac(uv/size), fixed2(12.9898,78.233))) * 43758.5453) * 0.99999;
}

// �����_����2�����x�N�g��(parlin���z�x�N�g��/0�`1�͈͂Ő�������������-1�`1�͈̔�(*2-1)�Ɋg��)
fixed2 randVec2(fixed2 uv, fixed2 size){
    return normalize(fixed2( rand(uv, size), rand(uv+fixed2(127.1,311.7), size) ) * 2.0 + -1.0);
}

// �o�C���j�A���(4�_��^���Ă��̋�`����xy�������ɐ��`���)
fixed2 bilinear(fixed f0, fixed f1, fixed f2, fixed f3, fixed fx, fixed fy){
    return lerp( lerp(f0, f1, fx), lerp(f2, f3, fx), fy );
}

// fade�֐�(ease�Ȑ�������Beasing�֐�)
fixed fade(fixed t) { return t * t * t * (t * (t * 6.0 - 15.0) + 10.0); }

// �u���b�N�m�C�Y(���U�C�N��)
fixed blockNoise(fixed2 uv, fixed2 size)
{
    return rand(floor(uv), size);
}

// �P�ʃo�����[�m�C�Y(�u���b�N�m�C�Y���o�C���j�A�⊮�����m�C�Y)
fixed valueNoiseOne(fixed2 uv, fixed2 size)
{
    fixed2 p = floor(uv);
    fixed2 f = frac(uv);

    float f00 = rand( p+fixed2(0,0), size );
    float f10 = rand( p+fixed2(1,0), size );
    float f01 = rand( p+fixed2(0,1), size );
    float f11 = rand( p+fixed2(1,1), size );
    return bilinear( f00, f10, f01, f11, fade(f.x), fade(f.y) );
}

// �o�����[�m�C�Y(�I�N�^�[�u�̈قȂ�m�C�Y�e�N�X�`����5������)
fixed valueNoise(fixed2 uv, fixed2 size)
{
    fixed f = 0;
    f += valueNoiseOne( uv* 2, size )/2;
    f += valueNoiseOne( uv* 4, size )/4;
    f += valueNoiseOne( uv* 8, size )/8;
    f += valueNoiseOne( uv*16, size )/16;
    f += valueNoiseOne( uv*32, size )/32;
    return f;
}

// �P�ʃp�[�����m�C�Y(�����_���Ɍ��肵���i�q�_�̌��z�x�N�g���ƁA�i�q�_��������_�ւ̃x�N�g���Ƃ̓��ς��o�C���j�A�⊮)
fixed perlinNoiseOne(fixed2 uv, fixed2 size) 
{
    fixed2 p = floor(uv);
    fixed2 f = frac(uv);

    fixed d00 = dot( randVec2(p+fixed2(0,0), size), f-fixed2(0,0) );
    fixed d10 = dot( randVec2(p+fixed2(1,0), size), f-fixed2(1,0) );
    fixed d01 = dot( randVec2(p+fixed2(0,1), size), f-fixed2(0,1) );
    fixed d11 = dot( randVec2(p+fixed2(1,1), size), f-fixed2(1,1) );
    return bilinear( d00, d10, d01, d11, fade(f.x), fade(f.y) ) + 0.5f;
}

// �p�[�����m�C�Y(�I�N�^�[�u�̈قȂ�m�C�Y�e�N�X�`����5������)
fixed perlinNoise(fixed2 uv, fixed2 size) 
{
    fixed f = 0;
    f += perlinNoiseOne( uv* 2, size )/2;
    f += perlinNoiseOne( uv* 4, size )/4;
    f += perlinNoiseOne( uv* 8, size )/8;
    f += perlinNoiseOne( uv*16, size )/16;
    f += perlinNoiseOne( uv*32, size )/32;
    return f;
}


// �@���}�b�v�p�m�C�Y(x:0.0 �` 1.0, x:0.0 �` 1.0, z:1.0)
fixed3 normalNoise( fixed2 uv, fixed2 size )
{
    fixed3 result = fixed3( perlinNoise(uv.xy, size),
                            perlinNoise(uv.xy+fixed2(1,1), size),
                            1.0 );
    return result;
}


#endif