

set milkyway_ref_library "/home1/14_nmts/14_nmts/stdcell_rvt/milkyway/saed14nm_rvt_1p9m /home1/14_nmts/14_nmts/stdcell_lvt/milkyway/saed14nm_lvt_1p9m"

#/home1/14_nmts/14_nmts/SAED14nm_EDK_IO_v_06052019/SAED14_EDK/lib/io_std/milkyway/saed14io_std_fc"
set Tech_file "/home1/14_nmts/14_nmts/tech/milkyway/saed14nm_1p9m_mw.tf"

set_tlu_plus_files \
-max_tluplus /home1/14_nmts/14_nmts/tech/star_rc/max/saed14nm_1p9m_Cmax.tluplus  \
-min_tluplus  \
/home1/14_nmts/14_nmts/tech/star_rc/min/saed14nm_1p9m_Cmin.tluplus \
-tech2itf_map \
/home1/14_nmts/14_nmts/tech/star_rc/saed14nm_tf_itf_tluplus.map

#set target_library "/home/14_nmts/14_nmts/stdcell_lvt/db_ccs/saed14lvt_ss0p72v125c.db"

set target_library  "/home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_ss0p72v125c.db /home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_dlvl_ss0p72v125c_i0p6v.db  /home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_ulvl_ss0p72v125c_i0p6v.db /home1/14_nmts/14_nmts/stdcell_lvt/db_ccs/saed14lvt_ss0p72v125c.db"

set synthetic_library dw_foundation.sldb

set link_library "/home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_ss0p72v125c.db /home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_dlvl_ss0p72v125c_i0p6v.db /home1/14_nmts/14_nmts/stdcell_rvt/db_ccs/saed14rvt_ulvl_ss0p72v125c_i0p6v.db /home1/14_nmts/14_nmts/stdcell_lvt/db_ccs/saed14lvt_ss0p72v125c.db $synthetic_library"

set REFERENCE_LIBRARY "/home1/14_nmts/14_nmts/stdcell_hvt/ndm/saed14hvt_frame_only.ndm /home1/14_nmts/14_nmts/stdcell_slvt/ndm/saed14slvt_frame_only.ndm /home1/14_nmts/14_nmts/stdcell_rvt/ndm/saed14rvt_frame_only.ndm /home1/14_nmts/14_nmts/stdcell_lvt/ndm/saed14lvt_frame_only.ndm"  

#set path "/home/BPPD08/JhanaviD/VLSI_PD/Project/risc-v_14nm/synthesis"

#set link_library [join "
#$path/saed14lvt_ff0p7v125c.db 
#$path/saed14rvt_ff0p7v125c.db
#$path/saed14rvt_dlvl_ff0p7v25c_i0p7v.db $synthetic_library"]
#set reference_library [join "
#$path/saed14lvt_ff0p7v125c.db 
#$path/saed14rvt_ff0p7v125c.db
#$path/saed14rvt_dlvl_ff0p7v25c_i0p7v.db"]


