# h1_weapon_switcher
A script used to switch between weapons from a configurable array.

# Usage
1. Download the latest release from [here](http://github.com/Wiizard/h1_weapon_switcher/releases/latest).
2. Extract the zip to your h1 scripts folder: `h1-mod\script\mp\`.
3. Open up `weapon_list.lua` and add your desired weapons.
  - To add an item into the array, use `,""`.
    - e.g.
      ```
      weapon_list = {
        "",
        "",
        ""
      }
      ```
      >**Warning** You must ensure at least one weapon is in the array. Otherwise, script execution errors will occur.
      - If adding a weapon with attachments to the array, you must ensure that it is not the starting weapon in the array index. Otherwise, script execution errors will occur.
  - Weapon dump (some may or may not work at all):
      ```
        h1_meleefeb4_mp
        h1_meleejun6_mp
        h1_meleeapr2_mp
        h1_striker_mp
        h1_meleejun1_mp
        h1_saw_mp
        h1_meleebottle_mp
        destructible_car
        h1_aprsmg_mp
        h1_rpd_mp
        h1_remington700_mp
        h1_fraggrenade_mp
        h1_junsnp_mp
        h1_meleesickle_mp
        airstrike_mp
        h1_pp2000_mp
        h1_meleebayonet_mp
        h1_skorpion_mp
        radar_mp
        h1_junsho_mp
        h1_febsmg_mp
        cobra_20mm_mp
        destructible_toy
        h1_flashgrenade_mp
        briefcase_bomb_defuse_mp
        h1_augast_mp
        h1_meleefeb5_mp
        bomb_site_mp
        h1_aprpst_mp
        h1_meleeapr3_mp
        h1_feblmg_mp
        none
        h1_meleejun2_mp
        h1_coltanaconda_mp
        h1_winchester1200_mp
        camera_5fov
        h1_g36c_mp
        h1_meleefuture1_mp
        briefcase_bomb_mp
        h1_meleeaug1_mp
        h1_m21_mp
        h1_m16_mp
        h1_mp44_mp
        h1_ak74u_mp
        h1_usp_mp
        h1_m240_mp
        hind_ffar_mp
        h1_meleeapr4_mp
        camera_45fov
        h1_beretta_mp
        h1_meleepaddle_mp
        h1_m1014_mp
        h1_meleeicepick_mp
        h1_meleefeb1_mp
        h1_meleejun3_mp
        defaultweapon_mp
        h1_claymore_mp
        h1_m4_mp
        camera_30fov
        h1_meleefuture2_mp
        h1_meleeblade_mp
        h1_mp5_mp
        h1_meleeaug2_mp
        camera_20fov
        h1_g3_mp
        h1_colt45_mp
        h1_meleeshovel_mp
        camera_10fov
        h1_deserteagle_mp
        h1_galil_mp
        h1_meleehatchet_mp
        h1_meleefeb2_mp
        h1_augsmg_mp
        h1_meleejun4_mp
        h1_aprast_mp
        h1_rpg_mp
        cobra_ffar_mp
        barrel_mp
        h1_m40a3_mp
        h1_meleeaug3_mp
        h1_uzi_mp
        h1_mac10_mp
        h1_augpst_mp
        h1_kam12_mp
        h1_concussiongrenade_mp
        h1_xmlar_mp
        h1_fal_mp
        h1_fraggrenadeshort_mp
        h1_meleefeb3_mp
        h1_meleejun5_mp
        h1_meleeapr1_mp
        h1_ak47_mp
        h1_febsnp_mp
        helicopter_mp
        artillery_mp
        h1_deserteagle55_mp
        h1_c4_mp
        h1_meleeaug4_mp
        h1_vssvintorez_mp
        h1_meleegladius_mp
        h1_smokegrenade_mp
        h1_m60e4_mp
        h1_junlmg_mp
        h1_barrett_mp
        h1_dragunov_mp
        h1_m14_mp
        h1_p90_mp
        h1_janpst_mp
      ```
      - Some weapons may require the use of `_a#none_f#base`. 
        - e.g. `h1_ak47_mp_a#none_f#base`.
  4. Once your happy with your chosen weapons, save the `weapon_list.lua` file, run the game and start a Private Match.
  5. Profit?

# Controls
| Bind | Description |
| --- | --- |
| +smoke | Switches to the previous weapon in the array |
| +activate | Switches to the next weapon in the array |

# Demo
![Demo](demo.gif?raw=true "h1_weapon_switcher_demo")
  
# Credits
- Clippy