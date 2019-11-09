# Samba

CharjaBox uses the [bertvv.samba role](https://github.com/bertvv/ansible-role-samba) to set up and configure SMB.

Your shares are set up in `smb.yml` in your settings folder. The default/example setup looks like this and sets up a "Media" Share readable and writable by guests:

```
samba_shares:
  - name: Media 
    comment: 'Media Share'
    guest_ok: yes
    public: yes
    writable: yes
    browsable: yes
    path: "/mnt/Media"
```

These are the most important options:

```
  - name (required): Name of your share
    comment: 'Comment to describe your share'
    guest_ok: yes/no # Allow guest access
    public: yes/no # Controls read access for guest users
    writable: yes/no # Writable for guests.
    browsable: yes/no # Controls whether this share appears in file browser.
    path: "/mnt/Media" # Path to the share
    group: $group # The user group files in the share will be added to.
    owner: $user # The owner of the share path
    valid_users: $user # Controls read access for registered users. Use the syntax of the corresponding Samba setting.
    write_list: $user # Controls write access for registered users. Use the syntax of the corresponding Samba setting.
```

For more options and information read the [README](https://github.com/bertvv/ansible-role-samba#defining-shares) for the SMB role.

If you can't access your Shares on a recent Mac, try setting `samba_mitigate_cve_2017_7494` to `false`.