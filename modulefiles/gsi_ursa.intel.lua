help([[
]])

prepend_path("MODULEPATH", "/contrib/spack-stack/spack-stack-1.9.2/envs/ue-oneapi-2024.2.1/install/modulefiles/Core")

local stack_oneapi_ver=os.getenv("stack_oneapi_ver") or "2024.2.1"
local stack_impi_ver=os.getenv("stack_impi_ver") or "2021.13"
local oneapi_mkl_ver=os.getenv("oneapi_mkl_ver") or "2024.2.1"
local stack_python_ver=os.getenv("stack_python_ver") or "3.11.7"
local cmake_ver=os.getenv("cmake_ver") or "3.27.9"
local crtm_fix_ver=os.getenv("crtm_fix_ver") or "2.4.0.2"

load(pathJoin("stack-oneapi", stack_oneapi_ver))
load(pathJoin("stack-intel-oneapi-mpi", stack_impi_ver))
load(pathJoin("intel-oneapi-mkl", oneapi_mkl_ver))
load(pathJoin("stack-python", stack_python_ver))
load(pathJoin("cmake", cmake_ver))

load("gsi_common")
setenv("crtm_ROOT","/scratch3/NCEPDEV/da/Andrew.Collard/git/CRTMv3.2.0-rc1/build")
setenv("crtm_VERSION","3.2.0")
setenv("CRTM_INC","/scratch3/NCEPDEV/da/Andrew.Collard/git/CRTMv3.2.0-rc1/build/module/crtm/Intel/2021.1.0.20240703")
setenv("CRTM_LIB","/scratch3/NCEPDEV/da/Andrew.Collard/git/CRTMv3.2.0-rc1/build/lib/libcrtm.a")
setenv("CRTM_FIX","/scratch3/NCEPDEV/da/Andrew.Collard/git/CRTMv3.2.0-rc1/fix")
whatis("Name: crtm")
whatis("Version: 3.2.0")
whatis("Category: library")
whatis("Description: crtm library")load(pathJoin("prod_util", prod_util_ver))

pushenv("GSI_BINARY_SOURCE_DIR", "/scratch3/NCEPDEV/global/role.glopara/fix/gsi/20251105")

whatis("Description: GSI environment on Ursa with Intel Compilers")
