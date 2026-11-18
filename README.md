# ChromeProxy
Easy setup, for a fully-featured Google Chrome in your browser. Also comes with terminal environment.

## Get started
Create a codespace of this repository by clicking the dropdown under the **Code** button, selecting the **Codespaces** tab.

Enter the codespace, and run the following command in the *Terminal*:
```bash
chmod +x startup.sh && ./startup.sh
```
Then go to *Ports* and right-click on the forwarded port. Change the protocol to "HTTPS." Then you're all set.

Afterwards, you can simply run `./startup.sh` to restart your session.

## FAQs

### Why is it taking so long?
Be patient. That's all you need. First setup will take longer, the times after that will be much faster.

## Versions

### v1
Docker image, unfortunately doesn't save data

### v2
Keepalive script, with session saving (only saves Google Account info)