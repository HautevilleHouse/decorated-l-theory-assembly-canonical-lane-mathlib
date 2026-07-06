import DecoratedLTheoryAssemblyCanonicalLaneLean.Formalization
import DecoratedLTheoryAssemblyCanonicalLaneLean.SourceDependencies

/-!
# Reviewer Bridge

Typed Lean data for the imported reviewer bridge architecture.
-/

namespace HautevilleHouse
namespace DecoratedLTheoryAssemblyCanonicalLaneLean

structure ReviewerBridgeFile where
  path : String
  role : String
  sha256 : String
  present : Bool
deriving Repr, DecidableEq

structure ReviewerChainStep where
  index : Nat
  label : String
deriving Repr, DecidableEq

structure ReviewerClosureGate where
  gate : String
  constant : String
deriving Repr, DecidableEq

structure ReviewerManifestEntry where
  path : String
  sha256 : String
deriving Repr, DecidableEq

structure CertificateGate where
  gate : String
  status : String
deriving Repr, DecidableEq

structure CertificateInput where
  key : String
  value : String
deriving Repr, DecidableEq

def reviewerBridgeFiles : List ReviewerBridgeFile := [
  { path := "REVIEWER_MAP.md", role := "reviewer_map", sha256 := "9b595ceb2ae45d605ad17abef883f20851504148f1eea46cff168d2a2482c161", present := true },
  { path := "notes/IDENTIFICATION_BRIDGE.md", role := "identification_bridge", sha256 := "3415d262ea46cae20656c9614ef888943e83a21f40dbc6338f65e9baf89fe106", present := true },
  { path := "artifacts/constants_extraction_inputs.json", role := "constant_inputs", sha256 := "2c14c66731a0a8a6b99dc8320077f3fa0c76d0e654bc2fbc8b316306b513146d", present := true },
  { path := "artifacts/constants_extracted.json", role := "constant_extracted", sha256 := "4de7ff4101c93adecff87e575a2ea93f1004db8a3a3d3cf8cb39a13224c3b1a6", present := true },
  { path := "artifacts/constants_registry.json", role := "constant_registry", sha256 := "16a332535ada828f752da0a0cd35dd7973733e63f169956ef676cb5abc8d5192", present := true },
  { path := "artifacts/stitch_constants.json", role := "stitch_constants", sha256 := "2351dc2af8c081cb26b3cca4c33b676a3aafb803e8b356d7ede41aacf962720d", present := true },
  { path := "artifacts/promotion_report.json", role := "promotion_report", sha256 := "98b25150a1298f1cbe70ea0d6b5e2aba9edec3ceb85fad05ced9c5570776d8ab", present := true },
  { path := "repro/repro_manifest.json", role := "manifest", sha256 := "4b8d674d63074113e4dfbcbb661ea4db563a6d8e199215d42a0bb3a66f5279b5", present := true },
  { path := "repro/certificate_baseline.json", role := "baseline_certificate", sha256 := "008fa2799a4bbd0af359005225513fce02dc1cf107b17106b94206b48a6105c9", present := true }
]

def reviewerChainSteps : List ReviewerChainStep := [
]

def reviewerClosureGates : List ReviewerClosureGate := [
]

def reviewerFalsificationConditionCount : Nat := 0

def reviewerManifestEntries : List ReviewerManifestEntry := [
  { path := "README.md", sha256 := "979bd67b44c548a20ab232b0892cce0ad4a62f32fd42a053658696f0fd9826b4" },
  { path := "CITATION.cff", sha256 := "dc5e4fdc2539ae22f4cb3a6c07bddd2577871db5fbf8d97ab4115dae668c2ade" },
  { path := "REVIEWER_MAP.md", sha256 := "9b595ceb2ae45d605ad17abef883f20851504148f1eea46cff168d2a2482c161" },
  { path := "paper/DECORATED_L_THEORY_ASSEMBLY_PREPRINT.md", sha256 := "e7285d64b1c0757dce6003b08748d862eb5950327474490fc620629ab8c682ff" },
  { path := "paper/CANONICAL_ROUTING_INDEX.md", sha256 := "bb0083190e9c6b93e97e1a1a7479f3e7a35d0a318cb1537f1ac2896d8178874f" },
  { path := "paper/EXTRACTION_SPEC.md", sha256 := "e76f50bedabb866a82b34ed6d4d07af7172ecb78fc97a46e106843b9700f6b86" },
  { path := "notes/EG1_public.md", sha256 := "d7c1341630581a843eed5609ac5ca679f3803391d183a32f2208566f0493944e" },
  { path := "notes/EG2_public.md", sha256 := "16855e9e538dd8297893572c35510a0496573fc7b41c18cd90da6a7e7090f567" },
  { path := "notes/EG3_public.md", sha256 := "1f52dba103d36fa3334ec554cc51ecd2a087b201becd5180d5bb7612d38e4f2d" },
  { path := "notes/EG4_public.md", sha256 := "1e5859ac07b96dd598748ffd2ca09ecffb1e18e51a93d1acc7b815d74e70fc72" },
  { path := "notes/IDENTIFICATION_BRIDGE.md", sha256 := "3415d262ea46cae20656c9614ef888943e83a21f40dbc6338f65e9baf89fe106" },
  { path := "scripts/dla_closure_guard.py", sha256 := "2bbe4ef9b6a2382275d2ff54c3c4a1098aca981aaefa1783e0637dc2e28ed7c5" },
  { path := "scripts/extract_constants.py", sha256 := "730d57dae3fac057e19630db34233183cae269568d43118c943387970081896d" },
  { path := "scripts/promote_constants.py", sha256 := "b65eb7a60552c668f04d6331a5256fe4e662ae5e83e769d42f6a141819769356" },
  { path := "scripts/update_manifest.py", sha256 := "45ae03f10349daebab98b6eb9a0836b7e2d15a48ca5504277c80ec7d4c633d12" },
  { path := "scripts/release_gate.py", sha256 := "5c9760aeddbfa0e4b5a9447e1bda670004391c19470f9b1cf8897bf154f667b8" },
  { path := "repro/run_repro.sh", sha256 := "684c17a30521090076877b9e0a0f600ad4a8d528e6d045b52f620dd8f3917709" },
  { path := "repro/REPRO_PACK.md", sha256 := "c008a5f81b3712fa64507c1cb009768ffc80d35c0ccdb9523ef86a7683a96295" },
  { path := "repro/THIRD_PARTY_RERUN_PROTOCOL.md", sha256 := "18bfd975c90053ac99a0bb04fcce9717b19c49581ad24917fc0f1898a8a59ca6" },
  { path := "artifacts/constants_extraction_inputs.json", sha256 := "2c14c66731a0a8a6b99dc8320077f3fa0c76d0e654bc2fbc8b316306b513146d" },
  { path := "artifacts/constants_extracted.json", sha256 := "4de7ff4101c93adecff87e575a2ea93f1004db8a3a3d3cf8cb39a13224c3b1a6" },
  { path := "artifacts/constants_registry.json", sha256 := "16a332535ada828f752da0a0cd35dd7973733e63f169956ef676cb5abc8d5192" },
  { path := "artifacts/stitch_constants.json", sha256 := "2351dc2af8c081cb26b3cca4c33b676a3aafb803e8b356d7ede41aacf962720d" },
  { path := "artifacts/promotion_report.json", sha256 := "98b25150a1298f1cbe70ea0d6b5e2aba9edec3ceb85fad05ced9c5570776d8ab" },
  { path := "repro/certificate_baseline.json", sha256 := "008fa2799a4bbd0af359005225513fce02dc1cf107b17106b94206b48a6105c9" }
]

def baselineCertificateGates : List CertificateGate := [
  { gate := "FJ_G1", status := "PASS" },
  { gate := "FJ_G2", status := "PASS" },
  { gate := "FJ_G3", status := "PASS" },
  { gate := "FJ_G4", status := "PASS" },
  { gate := "FJ_G5", status := "PASS" },
  { gate := "FJ_G6", status := "PASS" },
  { gate := "FJ_GM", status := "PASS" }
]

def baselineCertificateInputs : List CertificateInput := [
  { key := "decoration_lock", value := "1.02951" },
  { key := "eps_coh", value := "0.0" },
  { key := "kappa_assembly", value := "1.091838" },
  { key := "kappa_compact", value := "0.8038585209003215" },
  { key := "rho_rigidity", value := "1.077" },
  { key := "sigma_decoration", value := "1.075" },
  { key := "sigma_star_can", value := "1.053" }
]

def bridgeConstantKeys : List String := [
  "decoration_lock",
  "eps_coh",
  "isomorphism_transfer",
  "kappa_assembly",
  "kappa_compact",
  "rho_rigidity",
  "sigma_control",
  "sigma_decoration",
  "sigma_star_can"
]

def baselineCertificateAllPass : Bool := true
def baselineCertificateLane : String := "manifold_constrained"
def outsideConstantDependencyCount : Nat := 0

theorem reviewer_bridge_file_count_checked : reviewerBridgeFiles.length = 9 := by
  rfl

theorem reviewer_chain_step_count_checked : reviewerChainSteps.length = 0 := by
  rfl

theorem reviewer_closure_gate_count_checked : reviewerClosureGates.length = 0 := by
  rfl

theorem reviewer_falsification_condition_count_checked : reviewerFalsificationConditionCount = 0 := by
  rfl

theorem reviewer_manifest_entry_count_checked : reviewerManifestEntries.length = 25 := by
  rfl

theorem baseline_certificate_gate_count_checked : baselineCertificateGates.length = 7 := by
  rfl

theorem baseline_certificate_input_count_checked : baselineCertificateInputs.length = 7 := by
  rfl

theorem bridge_constant_key_count_checked : bridgeConstantKeys.length = 9 := by
  rfl

theorem baseline_certificate_all_pass_checked : baselineCertificateAllPass = true := by
  rfl

theorem outside_constant_dependency_count_checked : outsideConstantDependencyCount = 0 := by
  rfl

end DecoratedLTheoryAssemblyCanonicalLaneLean
end HautevilleHouse
