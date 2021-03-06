# How to get a Google Colab VM for free


1. [Copy your ngrok auth token](#step1)
2. [Clone the template notebook](#step2)
3. [Run the cloned notebook](#step3)
4. [Paste the auth token copied from ngrok](#step4)
5. [Follow the output message after execution](#step5)  
   *  [Error message after execution (skip if not shown)](#step51)
6. [Connect to Colab VM](#step6)
7. [Reconnect to Colab VM after SSH disconnection for a while](#step7)
8. [Just in case of accidental termination of Colab VM](#step8)


Preprequisites:
* A google account
* A ngrok account (get a free account at https://ngrok.com/)
* A PC/laptop

## <a id="step1"></a>1. Copy your ngrok auth token [here](https://dashboard.ngrok.com/auth)

After login, your token is an arbitrary series like

<img src="img/ksnip_20201223-175717.png">

Alternatively, you can also look for the token from the suggested command

<img src="img/ksnip_20201223-180017.png">

## <a id="step2"></a>2. Clone [![SSH_via_ngrok.ipynb](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/drive/1EBjyoBu_2DZZhbr4EbfoWU5hypR_f1lo)

<img src="img/ksnip_20201223-180732.png">

## <a id="step3"></a>3. Run the cloned notebook

<img src="img/ksnip_20201223-181322.png">

## <a id="step4"></a>4. Paste the auth token copied from [ngrok](https://dashboard.ngrok.com/auth)

Paste the token and press `Enter/Return` key.

<img src="img/ksnip_20201223-181904.png">

## <a id="step5"></a>5. Follow the output message after execution

<img src="img/ksnip_20201223-183003.png">

### <a id="step51"></a>5.1 Error message after execution (skip if not shown)

If you are free ngrok user, as current term of use, you are limited to only one free tunnel. In case of unexpected error message, you should check as guided.

<img src="img/ksnip_20201223-202438.png">

To check if there is any tunnel in use, go to [ngrok tunnel status page](https://dashboard.ngrok.com/status/tunnels). If the tunnel is active, it would look similarly as below.

<img src="img/ksnip_20201223-203223.png">

This might be the case when you have another Colab notebook session in operation. In order to use this tunnel again, you have to terminate this session, which means you would lose connection to this running Colab VM. You can manage Colab session by clicking on the arrow_shaped button and selecting `Manage sessions`

<img src="img/ksnip_20201223-204248.png">

To solve this situation, the easiest way is to create another account, so that you have a new auth token and a new free tunnel. Otherwise, you should have known which device is using the tunnel, and manage to stop the device before you can use the tunnel again.

## <a id="step6"></a>6. Connect to Colab VM

If things are fine, you are now able to connect to VM. Remember never close the browser, always keep the Colab notebook session, because it is the best way to guarantee your Colab VM will not be terminated. Last but not least, as mentioned in the term of use, Colab VM can be active as much as 12 hour. So make sure you download everything before the VM is automatically stopped.

<img src="img/ksnip_20201223-205310.png">

## <a id="step7"></a>7. Reconnect to Colab VM after SSH disconnection for a while

If either you are not active via ssh or you deliberately exit from ssh connection, the free tunnel tunnel will vanish after a while.

<img src="img/ksnip_20201224-001249.png">

And you may not reconnect via the same ssh command. Output messages for this situation might look like these examples below.

In case your tunnel has been closed, but the old ngrok host is not reused by anyone. You might encounter this message.

<img src="img/ksnip_20201224-001747.png">

In another case when the old ngrok host is recycled and reused by someone with another identity, you now become an invalid user. You should execute the suggested command line to get rid of the invalid host profile.

<img src="img/ksnip_20201224-105236.png">

Don't panic! It's not that the Colab VM is switched off but the ngrok host interrupts the free tunnel that has been given to you. The previous host and port of this tunnel have been recycled and no longer valid, so that you cannot use the same ssh command to connect back to your Colab VM. In brief, you just have to recreate the free tunnel with a new host and a new port.

1. stop the infinity loop by clicking on `stop` button of the loop cell
2. click on `start` button of the longest cell to reconnect to the ngrok server
3. use the new ssh command to connect to the Colab VM with the unchanged password
4. start the loop cell again to maintain the current Colab session

<img src="img/ksnip_20201223-214237.png">

## <a id="step8"></a>8. Just in case of accidental termination of Colab VM

If there are running tasks on Colab VM, the VM still shuts down much earlier than expected due to your web session inactivity. You can try the following way to simulate human behavior as if someone actually clicks to the `Reconnect` button every 60 seconds.

<img src="img/ksnip_20201223-212043.png">






