/*
 * $HEADER$
 */
#if defined(c_plusplus) || defined(__cplusplus)
extern "C" {
#endif

extern const pmix_mca_base_component_t pmix_mca_pmdl_mpich_component;
extern const pmix_mca_base_component_t pmix_mca_pmdl_ompi_component;
extern const pmix_mca_base_component_t pmix_mca_pmdl_oshmem_component;

const pmix_mca_base_component_t *pmix_mca_pmdl_base_static_components[] = {
  &pmix_mca_pmdl_mpich_component, 
  &pmix_mca_pmdl_ompi_component, 
  &pmix_mca_pmdl_oshmem_component, 
  NULL
};

#if defined(c_plusplus) || defined(__cplusplus)
}
#endif

