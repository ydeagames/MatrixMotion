using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class BulletData
{
    public float time;
    public Vector3 angle;
}

public class BulletGenerator : MonoBehaviour
{
    public List<BulletData> bulletData;
    public GameObject prefab;
    public AudioClip shotSE;


    private float time = 0;
    private int index = 0;

    private void FixedUpdate()
    {
        time += Time.fixedDeltaTime;

        if (index >= bulletData.Count)
        {
            return;
        }

        if (bulletData[index].time <= time)
        {
            GameObject obj = Instantiate(prefab);
            obj.transform.transform.position = transform.position;
            obj.transform.localEulerAngles = bulletData[index].angle;
            index++;
            //AudioSource.PlayClipAtPoint(shotSE, transform.position, 100);
            AudioSource.PlayClipAtPoint(shotSE, Vector3.zero, 10);
        }

    }
}
