# ChromeProxy
Easy setup, for a fully-featured Google Chrome in your browser. Also comes with terminal environment.

> ### Returning?
> Returning? Run `./startup.sh update`

## Get started
Create a codespace of this repository by clicking the dropdown under the **Code** button, selecting the **Codespaces** tab. Wait for it to be set up.

> ### Tip
> The **Code** button is a green one at the top.
>
> <img src="./instruction_imgs/code_button.png">
>
> Then you should be able to create a codespace with the next green button.
>
> <img src="./instruction_imgs/codespaces.png">
<br>

Enter the codespace, and run the following command in the *Terminal*:
```bash
chmod +x startup.sh
./startup.sh
```
Then go to *Ports* and right-click on the forwarded port. Change the protocol to "HTTPS." Then you're all set.
<img src="./instruction_imgs/ports.png">

> ### Tip
> Afterwards, you can simply run `./startup.sh` to restart your session.

## FAQs

### Why is it taking so long?
Be patient. That's all you need. First setup will take longer, the times after that will be much faster. Do not attempt to end the download early.

## Versions

### v3.1
Add update functionality with `./startup.sh update` to make it easier for users to get the latest version.

### v3
Reveal terminal and session status. Enter terminal by pressing Control+C (^C) in terminal inside graphics output.

### v2
Keepalive script, with session saving (only saves Google Account info)

### v1
Docker image, unfortunately doesn't save data. Kinda annoying, will fix later
