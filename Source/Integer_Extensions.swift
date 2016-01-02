﻿
infix operator ... { precedence 135 associativity none } 
infix operator ..< { precedence 135 associativity none }

public extension Int32 {
	
	public func ... (a: Int32, b: Int32) -> ClosedInterval/*<Int32>*/ {
		return ClosedInterval(a, b)
	}
	
	public func ... (a: Int64, b: Int32) -> ClosedInterval/*<Int64>*/ {
		return ClosedInterval(a, b)
	}
	
	public func ... (a: Int32, b: Int64) -> ClosedInterval/*<Int64>*/ {
		return ClosedInterval(a, b)
	}
	
	public func ..< (a: Int32, b: Int32) -> HalfOpenInterval/*<Int32>*/ {
		return HalfOpenInterval(a, b)
	}
	
	public func ..< (a: Int64, b: Int32) -> HalfOpenInterval/*<Int64>*/ {
		return HalfOpenInterval(a, b)
	}
	
	public func ..< (a: Int32, b: Int64) -> HalfOpenInterval/*<Int64>*/ {
		return HalfOpenInterval(a, b)
	}
}

public extension Int64 {
	
	public func ... (a: Int64, b: Int64) -> ClosedInterval/*<Int64>*/ {
		return ClosedInterval(a, b)
	}
	
	public func ..< (a: Int64, b: Int64) -> HalfOpenInterval/*<Int64>*/ {
		return HalfOpenInterval(a, b)
	}
}

public extension UInt64 {

	internal func toHexString(# length: Int = 8) -> String {
		#if COOPER
		return String.format("%0\(length)x", self)
		#elseif ECHOES
		return String.Format("{0:x\(length)}", self)
		#elseif NOUGAT
		return String(format: "%0\(length)lld}", self)
		#endif
	}
}