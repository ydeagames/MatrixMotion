using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class SceneReload : MonoBehaviour
{
    public float fadeIn = .8f;
    public float duration = 11f;
    public float fadeOut = 1.5f;
    CanvasGroup alpha;

    // Start is called before the first frame update
    void Start()
    {
        alpha = GetComponent<CanvasGroup>();
        alpha.alpha = 1;
        StartCoroutine(Motion());
    }

    IEnumerator Motion()
    {
        for (float time = 0; time < fadeIn; time += Time.deltaTime)
        {
            alpha.alpha = 1 - time / fadeIn;
            yield return null;
        }

        alpha.alpha = 0;

        yield return new WaitForSeconds(duration);

        for (float time = 0; time < fadeOut; time += Time.deltaTime)
        {
            alpha.alpha = time / fadeIn;
            yield return null;
        }

        alpha.alpha = 1;

        SceneManager.LoadScene(SceneManager.GetActiveScene().name);

        yield break;
    }
}
