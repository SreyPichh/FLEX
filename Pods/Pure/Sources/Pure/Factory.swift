/// A generic factory. It is constructed with a static dependency and creates a module instance
/// with a runtime parameter.
open class Factory<Module: FactoryModule> {
  private let dependencyClosure: () -> Module.Dependency

  /// A static dependency of a module.
  open var dependency: Module.Dependency {
    return self.dependencyClosure()
  }

  /// Creates an instance of `Factory`.
  ///
  /// - parameter dependency: A static dependency which should be resolved in a composition root.
  public init(dependency: @autoclosure @escaping () -> Module.Dependency) {
    self.dependencyClosure = dependency
  }

  /// Creates an instance of a module with a runtime parameter.
  ///
  /// - parameter payload: A runtime parameter which is required to construct a module.
  open func create(payload: Module.Payload) -> Module {
    return Module.init(dependency: self.dependency, payload: payload)
  }
}

public extension Factory where Module.Payload == Void {
  /// Creates an instance of a module.
  public func create() -> Module {
    return Module.init(dependency: self.dependency, payload: Void())
  }
}

public extension Factory where Module.Dependency == Void {
  /// Creates an instance of `Factory`.
  public convenience init() {
    self.init(dependency: Void())
  }
}
