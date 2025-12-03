Pod::Spec.new do |s|
  s.name             = "olm"
  s.version          = "3.2.4"
  s.summary          = "Objective‑C/C++ wrapper for libolm (Matrix E2EE)"
  s.description      = "This is a fork of libolm/OLMKit providing end‑to‑end encryption primitives used by Matrix clients."
  s.homepage         = "https://github.com/studio201/OLMKit"
  s.license          = { :type => "Apache-2.0", :file => "LICENSE" }
  s.author           = { "Matrix.org" => "support@matrix.org" }

  s.platform         = :ios, "12.0"

  # 👉 Wichtig: Dein Repo muss ein Tag besitzen (z.‑B. 3.2.4)
  s.source           = { :git => "https://github.com/studio201/OLMKit.git", :tag => s.version }

  # Include C++ & header files
  s.source_files     = [
    "include/olm/**/*.{h,hpp,hh}",
    "src/**/*.{cpp,c}"
  ]
  s.public_header_files = "include/olm/**/*.h"

  s.requires_arc     = false
  s.libraries        = "c++"
  s.source_files  = ["include/olm/*.hh","src/*.cpp"]
  s.public_header_files = "include/olm/olm.hh"

  s.library = "c++"
  s.xcconfig = { 'HEADER_SEARCH_PATHS' => '$(PODS_ROOT)/olm/include $(PODS_ROOT)/olm/lib $(PODS_ROOT)/../../include $(PODS_ROOT)/../../lib' }
end
