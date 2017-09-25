using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MagicAttack : MonoBehaviour
{

    public enum Weapon { FireBall, Shield }
    public GameObject[] WeaponObject;
    public Weapon CurrentWeapon;
    public GameObject FireBall_p;

    void Start()
    {
        switch (CurrentWeapon)
        {
            case Weapon.FireBall:
                WeaponObject[0].SetActive(true);
                WeaponObject[1].SetActive(false);
                break;
            case Weapon.Shield:
                WeaponObject[0].SetActive(false);
                WeaponObject[1].SetActive(true);
                break;

        }
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKeyDown(KeyCode.Q))
        {
            FireBallEstablish();
        }
        else if (Input.GetKeyDown(KeyCode.W))
        {
            ShieldEstablish();
        }

        switch (CurrentWeapon)
        {
            case Weapon.FireBall:
                FireBallShoot();
                break;
            case Weapon.Shield:
                ShieldUse();
                break;

        }
    }

    void FireBallEstablish()
    {
        CurrentWeapon = Weapon.FireBall;
        WeaponObject[0].SetActive(true);
        WeaponObject[1].SetActive(false);
    }

    void ShieldEstablish()
    {
        CurrentWeapon = Weapon.Shield;
        WeaponObject[0].SetActive(false);
        WeaponObject[1].SetActive(true);
    }

    void FireBallShoot()
    {
        if (Input.GetMouseButtonDown(0))
        {
            GameObject Clone = Instantiate(FireBall_p);
            Clone.transform.position = WeaponObject[0].transform.position;
            Clone.transform.rotation = WeaponObject[0].transform.rotation;
        }
    }

    void ShieldUse()
    {

    }
}
