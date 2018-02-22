# vim-brace-for-umlauts

This is a very simple VIM plugin to improve the coding experience on German QUERTZ keyboards. It defines the following mappings:

 - normal, visual & select mode 
    - ``` ü -> [ ```
    - ``` ä -> ] ```
    - ``` Ü -> { ```
    - ``` Ä -> } ```
    - ``` ö -> : ```
 - insert mode: all of the above plus ``` Ö -> \ ```

You can use the command **UmlautsToggle** and the normal mode mappings 
```coö``` or ```coü ``` or ```coä``` (mnemonic: "change option umlaut") 
to activate or deactivate the *insert mode* mappings in case you need to write German prose.

All mappings are activated on VIM startup.

