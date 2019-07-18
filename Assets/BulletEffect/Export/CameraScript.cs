using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

public enum Ease
{
    None,
    In,
    Out,
}

[System.Serializable]
public class MotionData
{
    public Vector3 pos;
    public Vector3 angle;
    [HideInInspector]
    public Quaternion rot;
    public float time;
    public Ease ease = Ease.None;
}

public class CameraScript : MonoBehaviour
{
    public GameObject target;
    public List<MotionData> motionData;

    private Vector3 prevPos;
    private Vector3 prevAng;
    private Quaternion prevRot;
    private int activeDataIndex = 0;
    public float time = 0;


    private Vector3 PosLerp(Vector3 vec1, Vector3 vec2, float t)
    {
        Vector3 vec1_2 = vec1;
        vec1_2.y = 0;
        Vector3 vec2_2 = vec2;
        vec2_2.y = 0;
        Vector3 vec3 = Vector3.Slerp(vec1_2, vec2_2, t);
        vec3.y = Mathf.Lerp(vec1.y, vec2.y, t);
        return vec3;
    }

    private Vector3 AngleLerp(Vector3 vec1, Vector3 vec2, float t)
    {
        Vector3 vec3 = new Vector3(Mathf.Lerp(vec1.x, vec2.x, t), Mathf.Lerp(vec1.y, vec2.y, t), Mathf.Lerp(vec1.z, vec2.z, t));
        //Debug.Log(vec1 + " " + vec2 + " " + vec3);
        return vec3;
    }

    private void Start()
    {
        prevPos = transform.localPosition;
        prevAng = -transform.localEulerAngles;
        //prevAng = -transform.eulerAngles;
        prevRot = transform.localRotation;
        //prevRot = target.transform.localRotation;
        for(int i = 0; i < motionData.Count; ++i)
        {
            motionData[i].rot = Quaternion.Euler(motionData[i].angle);
        }
    }

    private void FixedUpdate()
    {
        if(activeDataIndex >= motionData.Count)
        {
            return;
        }

        time += Time.fixedDeltaTime;
        time = Mathf.Min(time, motionData[activeDataIndex].time);

        float t = time / motionData[activeDataIndex].time;
        switch (motionData[activeDataIndex].ease)
        {
            case Ease.In:
                t = t * t;
                break;
            case Ease.Out:
                t = t * (2 - t);
                break;
        }
        transform.localPosition = PosLerp(prevPos, motionData[activeDataIndex].pos, t);
        transform.localEulerAngles = AngleLerp(prevAng, motionData[activeDataIndex].angle, t);
        //transform.localRotation = Quaternion.Lerp(prevRot, motionData[activeDataIndex].rot, time / motionData[activeDataIndex].time);
        //target.transform.localRotation = Quaternion.Slerp(prevRot, motionData[activeDataIndex].rot, time / motionData[activeDataIndex].time);

        if (time >= motionData[activeDataIndex].time)
        {
            time = 0;
            activeDataIndex++;
            prevPos = motionData[activeDataIndex - 1].pos;
            prevAng = motionData[activeDataIndex - 1].angle;
            //prevAng = -transform.eulerAngles;
            prevRot = transform.localRotation;
            //prevRot = target.transform.localRotation;
        }
    }
}
