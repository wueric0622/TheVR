using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.IO.Ports;
using System.Threading;

public class GetIOData : MonoBehaviour {

    public int GETINPUT;
    MyPort myport;

    void Start ()
    {
        // 建立一條執行緒讀取RS232，不這麼做 Unity 會死當
        myport = new MyPort();
        new Thread(myport.OpenPort).Start ();
    }
    bool PortIsConnect()//偵測是否與硬體連接
    {
        return myport.isRun;
    }

	int GetData()
	{
 		if(Input.GetKeyDown(KeyCode.A))
		{
            return 1;
        }
		else if(Input.GetKeyDown(KeyCode.RightArrow))
		{
            return 2;
        }
		else if(Input.GetKeyDown(KeyCode.LeftArrow))
		{
            return 3;
        }
		else if(Input.GetKeyDown(KeyCode.UpArrow))
		{
            return 4;
        }
		else if(Input.GetKeyDown(KeyCode.DownArrow))
		{
            return 5;
        }
		else
		{
            return 6;
        } 
	}

	void Update () {

		if(PortIsConnect())
		{
            print(myport.Data);
            GETINPUT = GetData();
        }
		else
		{
            GETINPUT = GetData();
        }

        if(Input.GetMouseButtonDown(0))
        {
            
        }
		
	}
}

class MyPort
{
    public bool isRun = false;
    public string Data;

    public void OpenPort()
    {
        Debug.Log("RunMe Is Called");
        // 設定、初始化 RS232
        SerialPort port = new SerialPort("COM5", 115200, Parity.None, 8, StopBits.One);
        // 開啟 RS232
        port.Open();
        if(port.IsOpen)
        {
            Debug.Log("port is open");
            isRun = true;
            port.Write("Sending somthing");
        }
        else
        {
            Debug.Log("Have no Connect");
        }
    }
}
