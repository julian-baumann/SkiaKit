import CSkia

public final class GrContext {
    public let handle: OpaquePointer

    private init(handle: OpaquePointer) {
        self.handle = handle
    }

    /// create a GrContext for the currently active OpenGL context
    public static func makeGL(interface: GLInterface) -> GrContext {
        GrContext(handle: gr_context_make_gl(interface.handle))
    }

    /// create a GrContext for the currently active Vulkan context
    public static func makeVulkan(vulkanBackendContext: GrVkBackendContext) -> GrContext {
        GrContext(handle: gr_context_make_vulkan(vulkanBackendContext.handle))
    }
}
