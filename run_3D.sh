gmsh -2 elliptic_cavity_3D.geo -setnumber k 22.526496854613104

ff-mpirun -np 2 increasing_frequency_combined_dir_direct_3D.edp edp -meshinput elliptic_cavity_3D.msh -outputpath ./ -kappa 22.526496854613104 -NbSources 1 -ksp_type gmres-mass_pc_type lu -ksp_gmres_restart 100000 -ksp_max_it 100000 -ksp_side left -ksp_rtol 1e-6 -eta -1 -mass 0 -ksp_view -ksp_monitor -ns -v 0