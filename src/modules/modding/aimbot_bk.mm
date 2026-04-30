#include <stdint.h>

void AplicarAuxilioBK(uintptr_t baseAddress) {
    // Offsets extraídos das suas imagens (Abril/2026)
    uintptr_t headBoneOffset = 0x5F80920; // GetBoneIndexFromMono
    uintptr_t lookAtOffset = 0x672F4FC;   // LookAtConstraint

    uintptr_t targetHead = baseAddress + headBoneOffset;
    uintptr_t targetLook = baseAddress + lookAtOffset;

    // Código para forçar o 100% HS
    unsigned char patchHead[] = {0x01, 0x00, 0xA0, 0xE3}; 
}
