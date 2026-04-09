# -----
# This file is auto-generated during autogen.pl
# -----

AC_DEFUN([OMPI_PRRTE_ADD_ARGS],[


# ----------------------------------------

# Warning: Excluded: pkgconfigdir
# ---------------------------------------- Above from 3rd-party/prrte//config/pkg.m4:173

# Warning: Excluded: noarch-pkgconfigdir
# ---------------------------------------- Above from 3rd-party/prrte//config/pkg.m4:193

# Warning: Excluded: alps-libdir
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_alps.m4:41

# Warning: Excluded: alps
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_alps.m4:92

       AC_ARG_WITH([lsf],
               [AS_HELP_STRING([--with-lsf(=DIR)],
                       [Build LSF support])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_lsf.m4:34

       AC_ARG_WITH([lsf-libdir],
               [AS_HELP_STRING([--with-lsf-libdir=DIR],
                       [Search for LSF libraries in DIR])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_lsf.m4:37

        AC_ARG_WITH([moab],
                    [AS_HELP_STRING([--with-moab],
                                    [Build MOAB scheduler component (default: yes)])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_moab.m4:34

        AC_ARG_WITH([moab-libdir],
                    [AS_HELP_STRING([--with-moab-libdir=DIR],
                    [Search for Moab libraries in DIR])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_moab.m4:37

	AC_ARG_WITH([sge],
                    [AS_HELP_STRING([--with-sge],
                                    [Build SGE or Grid Engine support (default: no)])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_sge.m4:36

    AC_ARG_WITH([singularity],
                [AS_HELP_STRING([--with-singularity(=DIR)],
                                [Build support for the Singularity container, optionally adding DIR to the search path])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_singularity.m4:20

# Warning: Excluded: slurm
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_slurm.m4:31

    AC_ARG_WITH([tm],
                [AS_HELP_STRING([--with-tm(=DIR)],
                                [Build TM (Torque, PBSPro, and compatible) support, optionally adding DIR/include, DIR/lib, and DIR/lib64 to the search path for headers and libraries])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_tm.m4:132

    AC_ARG_WITH([tm-libdir],
                [AS_HELP_STRING([--with-tm-libdir=DIR],
                                [Search for Torque libraries in DIR])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_tm.m4:135

# Warning: Excluded: visibility
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_check_visibility.m4:31

# Warning: Excluded: c11-atomics
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_config_asm.m4:85

# Warning: Excluded: builtin-atomics
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_config_asm.m4:87

# Warning: Excluded: prte-prefix-by-default
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:39

# Warning: Excluded: devel-check
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:68

# Warning: Excluded: memory-sanitizers
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:83

# Warning: Excluded: debug
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:105

# Warning: Excluded: debug-symbols
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:124

# Warning: Excluded: devel-headers
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:132

# Warning: Excluded: pretty-print-stacktrace
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:149

# Warning: Excluded: pty-support
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:169

# Warning: Excluded: dlopen
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:188

AC_ARG_ENABLE([show-load-errors-by-default],
    [AS_HELP_STRING([--enable-show-load-errors-by-default],
                    [Set the default value for the MCA parameter
                     mca_base_component_show_load_errors (but can be
                     overridden at run time by the usual
                     MCA-variable-setting mechansism).  This MCA variable
                     controls whether warnings are displayed when an MCA
                     component fails to load at run time due to an error.
                     (default: enabled in --enable-debug builds, meaning that
                      mca_base_component_show_load_errors is enabled
                      by default when configured with --enable-debug])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:220

AC_ARG_WITH(proxy-version-string,
    AS_HELP_STRING([--with-proxy-version-string],
                   [Return the provided string when prte is used in proxy mode and the version is requested]))
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:242

AC_ARG_WITH(proxy-package-name,
    AS_HELP_STRING([--with-proxy-package-name],
                   [Return the provided string when prte is used in proxy mode and the package name is requested]))
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:269

AC_ARG_WITH(proxy-bugreport,
    AS_HELP_STRING([--with-proxy-bugreport],
                   [Return the provided string when prte is used in proxy mode and the PACKAGE_BUGREPORT is requested]))
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:283

# Warning: Excluded: per-user-config-files
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:298

# Warning: Excluded: ipv6
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:313

# Warning: Excluded: package-string
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:330

# Warning: Excluded: ident-string
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:344

# Warning: Excluded: getpwuid
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_configure_options.m4:367

# Warning: Excluded: max-
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_functions.m4:308

    AC_ARG_WITH([prte-platform-patches-dir],
        [AS_HELP_STRING([--with-prte-platform-patches-dir=DIR],
                        [Location of the platform patches directory. If you use this option, you must also use --with-platform.])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_load_platform.m4:30

    AC_ARG_WITH([prte-platform],
        [AS_HELP_STRING([--with-prte-platform=FILE],
                        [Load options for build from FILE.  Options on the
                         command line not in FILE are used.  Options on the
                         command line and in FILE are replaced by what is
                         in FILE.])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_load_platform.m4:37

# Warning: Excluded: mca-no-build
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_mca.m4:55

# Warning: Excluded: mca-dso
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_mca.m4:59

# Warning: Excluded: mca-static
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_mca.m4:67

# Warning: Excluded: hwloc
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_hwloc.m4:21

# Warning: Excluded: hwloc-libdir
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_hwloc.m4:24

# Warning: Excluded: hwloc-extra-libs
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_hwloc.m4:27

# Warning: Excluded: hwloc-lib-checks
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_hwloc.m4:30

# Warning: Excluded: libev
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libev.m4:36

# Warning: Excluded: libev-libdir
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libev.m4:39

# Warning: Excluded: libev-extra-libs
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libev.m4:42

# Warning: Excluded: libev-lib-checks
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libev.m4:45

# Warning: Excluded: libevent
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libevent.m4:36

# Warning: Excluded: libevent-libdir
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libevent.m4:39

# Warning: Excluded: libevent-extra-libs
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libevent.m4:42

# Warning: Excluded: libevent-lib-checks
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_libevent.m4:45

# Warning: Excluded: pmix
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_pmix.m4:69

# Warning: Excluded: pmix-libdir
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_pmix.m4:72

    AC_ARG_WITH([pmix-extra-libs],
                [AS_HELP_STRING([--with-pmix-extra-libs=LIBS],
                                [Add LIBS as dependencies of pmix])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_pmix.m4:77

    AC_ARG_ENABLE([pmix-lib-checks],
                  [AS_HELP_STRING([--disable-pmix-lib-checks],
                                  [If --disable-pmix-lib-checks is specified, configure will assume that -lpmix is available])])
# ---------------------------------------- Above from 3rd-party/prrte//config/prte_setup_pmix.m4:80

    AC_ARG_ENABLE([prte-dlopen],
        [AS_HELP_STRING([--disable-prte-dlopen],
            [Disable the "dlopen" PRTE DL component (and probably force the use of the "libltdl" DL component).  This option should really only be used by PRTE developers.  You are probably actually looking for the "--disable-dlopen" option, which disables all dlopen-like functionality from PRTE.])
        ])
# ---------------------------------------- Above from 3rd-party/prrte//src/mca/prtedl/dlopen/configure.m4:51

# Warning: Excluded: libltdl
# ---------------------------------------- Above from 3rd-party/prrte//src/mca/prtedl/libltdl/configure.m4:48

# Warning: Excluded: libltdl-libdir
# ---------------------------------------- Above from 3rd-party/prrte//src/mca/prtedl/libltdl/configure.m4:51

# Warning: Excluded: pbs
# ---------------------------------------- Above from 3rd-party/prrte//src/mca/ras/pbs/configure.m4:34

    AC_ARG_ENABLE([ompi-support],
                  [AS_HELP_STRING([--disable-ompi-support],
                                  [Disable support for Open MPI (default: no)])])
# ---------------------------------------- Above from 3rd-party/prrte//src/mca/schizo/ompi/configure.m4:34


])
