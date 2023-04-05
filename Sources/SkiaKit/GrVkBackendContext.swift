//
//  GrVkBackendContext.swift
//  
//
//  Created by Julian Baumann on 02.04.23.
//

import Foundation
import CSkia

public struct GrVkBackendContext {
    let handle: gr_vk_backendcontext_t

    public init(from: gr_vk_backendcontext_t = gr_vk_backendcontext_t()) {
        handle = from
    }
}
