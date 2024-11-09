func animate(property: Property, to value: Any, duration: TimeInterval, useSpring: Bool) {
    if useSpring {
        // Use interactiveSpring() for a bouncy, spring-like animation.
        UIView.interactiveSpring(duration: duration) {
            property = value
        }
    } else {
        // Use a standard UIView animation.
        UIView.animate(withDuration: duration) {
            property = value
        }
    }
}
