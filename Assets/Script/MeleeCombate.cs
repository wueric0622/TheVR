using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MeleeCombate : MonoBehaviour {

    public GameObject GetWeapon;
    public float AttackDistence;
    public LayerMask LMToAttack;
    public float AttackAngle;
    GetIOData GetIOData;
    int GetInput() { return GetIOData.GETINPUT; }

    // Use this for initialization
    void Start () {
        GetIOData = GameObject.FindObjectOfType<GetIOData>();
    }
	
	// Update is called once per frame
	void Update () {
        if (!GetWeapon.GetComponent<Animator>().GetBool("Attacking"))
        {
            switch (GetInput())
            {
                case 1:
                    GetWeapon.GetComponent<Animator>().SetTrigger("Stabbed");
                    break;
				case 2:
                    GetWeapon.GetComponent<Animator>().SetTrigger("LeftCross");
                    break;
				case 3:
                    GetWeapon.GetComponent<Animator>().SetTrigger("RightCross");
                    break;
				case 4:
                    GetWeapon.GetComponent<Animator>().SetTrigger("StrightU_D");
                    break;
				case 5:
                    GetWeapon.GetComponent<Animator>().SetTrigger("StrightD_U");
                    break;
            }
        }

    }

    public void AttackDetect()
    {
        Collider[] AttachEnemy = Physics.OverlapSphere(transform.position, AttackDistence, LMToAttack);
            for (int i = 0; i < AttachEnemy.Length; i++)
            {
                if (Vector3.Angle(AttachEnemy[i].transform.position - transform.position, transform.forward) <= AttackAngle)
                {
                AttachEnemy[i].GetComponent<Animator>().SetTrigger("Hit");
                }
            }
    }
}
