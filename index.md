
# boyf - bugs on your face!

### because bugs love us and we want to share ;)


---

* *2014-03-08:2014-07-27* 15:10:00 - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/05377dc38c7b833ac8cb139eca10c1427a16f844.png)

`Just fuck you Apple. Your MAS update system simply sucks.`

`UPDATE: On 10.9.4 (and even not on hackintosh but original machine - Macbook Air), the problem remains the same..`

[show-image](http://s.verknowsys.com/05377dc38c7b833ac8cb139eca10c1427a16f844.png)


---

* *2014-02-26* 15:48:41 - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/47fd1792db559665e7ce0a261220207e5b79b5e6.png)

`Short story about how did Apple "fix" an issue.`

[show-image](http://s.verknowsys.com/47fd1792db559665e7ce0a261220207e5b79b5e6.png)

---

* *2014-02-07* 02:23:04 - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/cc70d45768b5696952b00c119323e8c033222a5f.png)
`A short entry about how to fix annoing OSX sandbox "deny issues" with blued. For me it fixed issues with bluetooth keyboard caused by access denied to /Extra/nvram.-your-unique-local-id-.plist file on OSX 10.9.x.
An example:`

```
sandboxd[119] ([53]): blued(53) deny file-write-data /Extra/nvram.00020003-0004-0005-0006-000700080009.plist
```
`can be a real PITA for hackintosh users. To solve my case, you need to just edit /usr/share/sandbox/blued.sb file and:`

* In "(allow file*" block add:

```
(literal "/nvram.plist")
(literal "/Extra/nvram.00020003-0004-0005-0006-000700080009.plist")
```

* In "(allow file-read*" block add:

```
(literal "/nvram.plist")
(literal "/Extra/nvram.00020003-0004-0005-0006-000700080009.plist")
```

* Reboot to apply changes. You can find more system sandbox definitions by doing:

```
find / -name '*.sb'
```

[show-image](http://s.verknowsys.com/cc70d45768b5696952b00c119323e8c033222a5f.png)

---

* *2014-02-04* 11:22:00 - [@zralokh3](https://twitter.com/zralokh3) ![sshot](http://s.verknowsys.com/d74f2527a5e2caa5b9299a53f0e5be36228ed278.png)

`It's always nice beeing able to talk to people when you are at work or at home. I personally use the google chat sometime, available to me from my gmail account. So - after some time I noticed this little inconvenience, which made it pretty hard for me to understand what my interlocutor is trying to say. Figure 1 and 2 show what happens - a bug in word wrapping. There should be: 1 - "nie", 2 - "dajesz". This bug happens very often to me and I'm using the the latest Chrome version (Chrome 32.0.1700.107 m). There is a note I have to make here - the word wrap works just fine if I pop out the chat window from gmail view to an autonomous window.`

[show-image](http://s.verknowsys.com/d74f2527a5e2caa5b9299a53f0e5be36228ed278.png)

---

* *2014-02-02 12:42:00* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/5b0bf5e73edb16434e7fd9f1f4a0a407f5ec259a.png) ![sshot2](http://s.verknowsys.com/5a4b83227c27dfa2b8797767ebf6a3fdaf1ac008.png)

`That's something new! Launchbar can't manage my clipboard, while Clyppan2 at the same time works just fine! But it's not Launchbar's fault, but Apple OSX API issue. After relogin everything went back to normal.` [show-image](http://s.verknowsys.com/5b0bf5e73edb16434e7fd9f1f4a0a407f5ec259a.png)

[show-image2](http://s.verknowsys.com/5a4b83227c27dfa2b8797767ebf6a3fdaf1ac008.png)

---

* *2014-02-02 12:27:44* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/d6c7c8dfb5bca9efa2d15b7a0f075a39c5191177.png)

`This is how "auto update" feature "works" under iOS7 (7.0.4). I turned auto updating "on" a couple months ago, and cried about overall iOS7 apps instability.. Great job Apple!`

[show-image](http://s.verknowsys.com/d6c7c8dfb5bca9efa2d15b7a0f075a39c5191177.png)

---

* *2014-01-25 03:25:12* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/2da5b6fd06337dd0af52d3f371a1058669fab0ea.png)

`A short story about overall stability of Apple software in OSX (10.9.1)`

[show-image](http://s.verknowsys.com/2da5b6fd06337dd0af52d3f371a1058669fab0ea.png)

---

* *2014-01-25 03:19:32* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/969615c28e9d0ea1f89f235eeed7681a2d0f8c0c.png)

`iTunes (11.1.4) again - now never ending loader of my Photos from iPad mini (iOS 7.0.4). Spinning never ends.`

[show-image](http://s.verknowsys.com/969615c28e9d0ea1f89f235eeed7681a2d0f8c0c.png)

---

* *2014-01-25 03:18:26* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/5d8507bf8ad13d22c3db2874006a6e26fa8bcf38.png)

`iTunes (11.1.4) - great piece of software, that's really far from great. My 37 apps "listed". Shot will have same content for both "Show all apps" and "Show only iPad apps" selected from drop down menu.`

[show-image](http://s.verknowsys.com/5d8507bf8ad13d22c3db2874006a6e26fa8bcf38.png)

---

* *2014-01-25 02:42:52* - [@dmilith](https://twitter.com/dmilith) ![sshot](http://s.verknowsys.com/5e02b6798fc10b846c558d52641d3b2296f95036.png)

`I use great IRC client called Textual. Textual itself is a great piece of software, what I can't tell about Mac App Store (OSX 10.9.1). After update, I restart MAS app, and guess what.. Yup, exactly what you see above, over and over again.`

[show-image](http://s.verknowsys.com/5e02b6798fc10b846c558d52641d3b2296f95036.png)

---

`I raged. And it happened. © 2014` [@dmilith](https://twitter.com/dmilith)
