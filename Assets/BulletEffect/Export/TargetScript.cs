using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TargetScript : MonoBehaviour
{
    public List<MotionData> motionData;

    private Vector3 prevPos;
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

    private void Start()
    {
        prevPos = transform.localPosition;
    }

    private void FixedUpdate()
    {
        if (activeDataIndex >= motionData.Count)
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

        if (time >= motionData[activeDataIndex].time)
        {
            time = 0;
            activeDataIndex++;
            prevPos = motionData[activeDataIndex - 1].pos;
            
        }
    }
}
