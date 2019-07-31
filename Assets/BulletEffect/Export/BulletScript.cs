using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BulletScript : MonoBehaviour
{
    public GameObject wavePrefab;
    public float lifeTime = 5.0f;
    public float speed;
    public int emitRate;
    public int emitNum;

    private float time = 0;
    private int count = 0;
    private Vector3 prevPos;

    private void Start()
    {
        Time.timeScale = 1.0f;
        prevPos = transform.position;
    }

    private void FixedUpdate()
    {
        transform.localPosition +=  new Vector3(0, 0, speed * Time.fixedDeltaTime);

        time += Time.fixedDeltaTime;

        if (lifeTime < time)
        {
            Destroy(gameObject);
        }

        count++;
        if (count % emitRate == 0)
        {
            for (int i = 0; i < emitNum; i++)
            {
                Debug.Log(Time.frameCount);
                GameObject wave = Instantiate(wavePrefab);
                wave.transform.position = Vector3.Lerp(prevPos, transform.position, (i + 1.0f) / emitNum);
            }
        }
        prevPos = transform.position;
    }
}
