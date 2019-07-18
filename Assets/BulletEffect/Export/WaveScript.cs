using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WaveScript : MonoBehaviour
{
    public float maxSize;
    public float zSize;
    public float destoryTime;
    public float startTime;

    private float size = 0;
    private float time = 0;

    // Start is called before the first frame update
    void Start()
    {
        transform.localScale = Vector3.zero;
        time = startTime;
    }

    float ease_out(float t, float b, float c, float d) {
        t = t - 1.0f;
        return c * (t * t * t * t * t + 1.0f) + b;
    }

    private void FixedUpdate()
    {
        time += Time.fixedDeltaTime;
        float t = time / destoryTime;
        size = ease_out(t, 0.0f, maxSize, 1.0f);

        transform.localScale = new Vector3(size, size, Mathf.Min(size, zSize));
        if (size >= maxSize)
        {
            Destroy(gameObject);
        }

        transform.position += new Vector3(0, 0, 1.0f/180.0f);
    }
}
